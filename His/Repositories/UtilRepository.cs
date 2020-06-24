using His.Data.Repositories;
using System;
using System.Data;
using System.Data.SqlClient;
using System.Reflection;

namespace His.Repositories
{
	public class UtilRepository
	{
		private static ConexionRepository _conexion = new ConexionRepository();
		private static SqlConnection con = _conexion.getConexion("");

		public class ValidacionLogueo
		{
			public string mensaje { get; set; }
            public bool valida { get; set; }
        }

		public DataSet getAllData(string query)
		{
            try
            {
				con.Open();
				SqlCommand cm = new SqlCommand(query, con);
				cm.CommandType = CommandType.StoredProcedure;
				SqlDataAdapter adapter = new SqlDataAdapter(cm);
				DataSet objects = new DataSet();
				adapter.Fill(objects, "Objects");
				con.Close();
				return objects;
            }
			catch(Exception e)
            {
				Console.Write(e.Message);
				return new DataSet();
			}
		}

		public DataSet getDataById(string query,int id)
		{
			try
			{
				con.Open();
				SqlCommand cm = new SqlCommand(query, con);
				cm.CommandType = CommandType.StoredProcedure;
				cm.Parameters.AddWithValue("@id", id);
				SqlDataAdapter adapter = new SqlDataAdapter(cm);
				DataSet objects = new DataSet();
				adapter.Fill(objects, "Objects");
				con.Close();
				return objects;
			}
			catch(Exception e)
            {
				Console.Write(e.Message);
				return new DataSet();
			}
		}

		public string deleteById(string query, int id)
        {
			try
			{
				con.Open();
				SqlCommand cm = new SqlCommand(query, con);
				cm.CommandType = CommandType.StoredProcedure;
				cm.Parameters.AddWithValue("@id", id);
				cm.ExecuteNonQuery();
				con.Close();
				return "Eliminacion incorrecta";
			}
			catch(Exception e)
            {
				Console.Write(e.Message);
				return "Eliminacion incorrecta";
			}
		}

		public ValidacionLogueo logueo(string query,string loginUser, string claveUser)
        {
			ValidacionLogueo logueo = new ValidacionLogueo();
            try
            {
				con.Open();
				SqlCommand cm = new SqlCommand(query, con);

				cm.CommandType = CommandType.StoredProcedure;
				cm.Parameters.AddWithValue("@loginUser", loginUser);

				SqlDataReader dr = cm.ExecuteReader();
				if (dr.Read())
				{
					if (dr["claveUser"].ToString() == claveUser) logueo = new ValidacionLogueo() { mensaje = "Logueo Correcto",valida=true};
					else logueo = new ValidacionLogueo() { mensaje = "Logueo Incorrecto", valida = false };
				}
				else
				{
					logueo = new ValidacionLogueo() { mensaje = "Error en Logueo", valida = false };
				}
				dr.Close();
				con.Close();
			}
			catch(Exception e)
            {
				Console.Write(e.Message);
            }
            return logueo;
		}

		public string insertaActualiza (string query,Object objecto,int tipo)
        {
			string mensaje="";
            try
            {
				con.Open();
				SqlCommand cm = new SqlCommand(query, con);
				Type Datos = typeof(Object);
				foreach (FieldInfo F
				in Datos.GetFields(BindingFlags.Public | BindingFlags.NonPublic | BindingFlags.Instance)) // Aqui ocurre la magia :)
				{
					cm.Parameters.AddWithValue("@"+F.Name, F.Name);
				}
				cm.CommandType = CommandType.StoredProcedure;
				cm.ExecuteNonQuery();
				if (tipo == 1) mensaje = "Ingreso";
				else mensaje = "Actualizacion";
				con.Close();
			}
            catch(Exception e)
            {
				Console.WriteLine(e.Message);
				return mensaje += "Error en la transaccion";
            }
			return mensaje += " con Exito";
		}
	}
}
