﻿using His.Data.Repositories;
using System;
using System.Data;
using System.Data.SqlClient;
using System.Reflection;
using System.Runtime.Versioning;

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
		public static string GetData(DataRow dr, string dato)
		{
			return dr[dato].ToString();
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
		public DataSet getDataById(string query,int? id)
		{
			try
			{
				con.Open();
				SqlCommand cm = new SqlCommand(query, con);
				cm.CommandType = CommandType.StoredProcedure;
				cm.Parameters.AddWithValue("@Id", id);
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
		public DataSet getDataByName(string query, string nombres)
		{
			try
			{
				con.Open();
				SqlCommand cm = new SqlCommand(query, con);
				cm.CommandType = CommandType.StoredProcedure;
				cm.Parameters.AddWithValue("@nombres", nombres);
				SqlDataAdapter adapter = new SqlDataAdapter(cm);
				DataSet objects = new DataSet();
				adapter.Fill(objects, "Objects");
				con.Close();
				return objects;
			}
			catch (Exception e)
			{
				Console.Write(e.Message);
				return new DataSet();
			}
		}

		public DataSet getDataByID(string query, int id)
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
			catch (Exception e)
			{
				Console.Write(e.Message);
				return new DataSet();
			}
		}
		public DataSet getDataByDni(string query, int prmDni)
		{
			try
			{
				con.Open();
				SqlCommand cm = new SqlCommand(query, con);
				cm.CommandType = CommandType.StoredProcedure;
				cm.Parameters.AddWithValue("@prmDni", prmDni);
				SqlDataAdapter adapter = new SqlDataAdapter(cm);
				DataSet objects = new DataSet();
				adapter.Fill(objects, "Objects");
				con.Close();
				return objects;
			}
			catch (Exception e)
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
				Type Datos = objecto.GetType();
				PropertyInfo[] props = Datos.GetProperties();
				//foreach (FieldInfo F
				//in Datos.GetFields(BindingFlags.Public | BindingFlags.NonPublic | BindingFlags.Instance)) // Aqui ocurre la magia :)
				foreach (var prop in props)
				{
					string nombre = prop.Name;
					if ((nombre == "idPersona" || nombre == "idEmpleado" || nombre == "idUsuario" || nombre == "idTab" || nombre == "idDet") && tipo == 2)
					{
						cm.Parameters.AddWithValue("@" + nombre, prop.GetValue(objecto) ?? DBNull.Value);
					}
					else
					{
						cm.Parameters.AddWithValue("@" + nombre, prop.GetValue(objecto) ?? DBNull.Value);
					}
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
