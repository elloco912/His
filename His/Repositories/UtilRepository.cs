using His.Data.Repositories;
using His.DTO;
using His.Models;
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
        #region procedimientos Transaccionales
        public DataSet getAllData(string query)
		{
			DataSet objects = new DataSet();
			try
            {
				con.Open();
				SqlCommand cm = new SqlCommand(query, con);
				cm.CommandType = CommandType.StoredProcedure;
				SqlDataAdapter adapter = new SqlDataAdapter(cm);
				adapter.Fill(objects, "Objects");
            }
			catch(Exception e){Console.Write(e.Message);}
			finally{con.Close();}
			return objects;
		}
		public DataSet getDataById(string query,int? id)
		{
			DataSet objects = new DataSet();
			try
			{
				con.Open();
				SqlCommand cm = new SqlCommand(query, con);
				cm.CommandType = CommandType.StoredProcedure;
				cm.Parameters.AddWithValue("@Id", id);
				SqlDataAdapter adapter = new SqlDataAdapter(cm);
				adapter.Fill(objects, "Objects");
				con.Close();
				return objects;
			}
			catch(Exception e)
            {
				Console.Write(e.Message);
			}
            finally { con.Close();}
			return objects;
		}
		public DataSet getDataByName(string query, string nombres)
		{
			DataSet objects = new DataSet();
			try
			{
				con.Open();
				SqlCommand cm = new SqlCommand(query, con);
				cm.CommandType = CommandType.StoredProcedure;
				cm.Parameters.AddWithValue("@nombres", nombres);
				SqlDataAdapter adapter = new SqlDataAdapter(cm);
				adapter.Fill(objects, "Objects");
				con.Close();
				return objects;
			}
			catch (Exception e)
			{
				Console.Write(e.Message);
			}
			finally { con.Close(); }
			return objects;
		}
		public DataSet getDataByCodigo(string query, string nombres)
		{
			DataSet objects = new DataSet();
			try
			{
				con.Open();
				SqlCommand cm = new SqlCommand(query, con);
				cm.CommandType = CommandType.StoredProcedure;
				cm.Parameters.AddWithValue("@codigo", nombres);
				SqlDataAdapter adapter = new SqlDataAdapter(cm);
				adapter.Fill(objects, "Objects");
				con.Close();
				return objects;
			}
			catch (Exception e)
			{
				Console.Write(e.Message);
			}
			finally { con.Close(); }
			return objects;
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
			DataSet objects = new DataSet();
			try
			{
				con.Open();
				SqlCommand cm = new SqlCommand(query, con);
				cm.CommandType = CommandType.StoredProcedure;
				cm.Parameters.AddWithValue("@prmDni", prmDni);
				SqlDataAdapter adapter = new SqlDataAdapter(cm);
				adapter.Fill(objects, "Objects");
				return objects;
			}
			catch (Exception e)
			{
				Console.Write(e.Message);
			}
			finally { con.Close(); }
			return objects;
		}
		public string deleteById(string query, int id)
        {
			string mensaje;
			try
			{
				con.Open();
				SqlCommand cm = new SqlCommand(query, con);
				cm.CommandType = CommandType.StoredProcedure;
				cm.Parameters.AddWithValue("@id", id);
				cm.ExecuteNonQuery();
				con.Close();
				mensaje =  "Eliminacion incorrecta";
			}
			catch(Exception e)
            {
				Console.Write(e.Message);
				mensaje =  "Eliminacion incorrecta";
			}
            finally { con.Close(); }
			return mensaje;
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
				int i = 0;
				foreach (var prop in props)
				{
					string nombre = prop.Name;
					if (i==0)
					{
						if(tipo == 2) cm.Parameters.AddWithValue("@" + nombre, prop.GetValue(objecto) ?? DBNull.Value);
					}
                    else
                    {
						cm.Parameters.AddWithValue("@" + nombre, prop.GetValue(objecto) ?? DBNull.Value);
					}
					i++;
				}
				cm.CommandType = CommandType.StoredProcedure;
				cm.ExecuteNonQuery();
				if (tipo == 1) mensaje = "Ingreso";
				else mensaje = "Actualizacion";
			}
            catch(Exception e)
            {
				Console.WriteLine(e.Message);
				return mensaje += "Error en la transaccion";
            }
            finally { con.Close(); }
			return mensaje += " con Exito";
		}
		#endregion procedimientos transaccionales
		#region Metodos Complementarios
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
			}
			catch(Exception e)
            {
				Console.Write(e.Message);
            }
            finally { con.Close(); }
            return logueo;
		}
		public static T000_PERSONA GetPersona(Object objeto, int tipo)
		{
			T000_PERSONA Persona = null;
			if (tipo == 1)
			{
				try
				{
					DataRow dr = (DataRow)objeto;
					Persona = new T000_PERSONA
					{
						idPersona = Convert.ToInt32(dr["idPersona"].ToString()),
						apePaterno = dr["apePaterno"].ToString(),
						apeMaterno = dr["apeMaterno"].ToString(),
						nombres = dr["nombres"].ToString(),
						fecNace = dr["fecNace"].ToString(),
						domiFiscal = dr["domiFiscal"].ToString(),
						telefono = dr["telefono"].ToString(),
						celular = dr["celular"].ToString(),
						correo = dr["correo"].ToString(),
						//estado = dr["estado"].ToString(),
						//centroEduca = dr["centroEduca"].ToString(),
						//condicionRuc = dr["condicionRuc"].ToString(),
						//edad = Convert.ToInt32(dr["edad"].ToString()),
						//estadoRuc = dr["estadoRuc"].ToString(),
						//fotografia = dr["fotografia"].ToString(),
						//idciaSeguro = Convert.ToInt32(dr["idciaSeguro"].ToString()),
						//iddatoSiteds = Convert.ToInt32(dr["iddatoSiteds"].ToString()),
						//idemprConvenio = Convert.ToInt32(dr["idemprConvenio"].ToString()),
						//idEtnico = Convert.ToInt32(dr["idEtnico"].ToString()),
						//idFactorrh = Convert.ToInt32(dr["idFactorrh"].ToString()),
						//idgpoSangre = Convert.ToInt32(dr["idgpoSangre"].ToString()),
						//idGrdInstruc = Convert.ToInt32(dr["idGrdInstruc"].ToString()),
						//idParentesco = Convert.ToInt32(dr["idParentesco"].ToString()),
						//idReligion = Convert.ToInt32(dr["idReligion"].ToString()),
						//idtipoIafa = Convert.ToInt32(dr["idtipoIafa"].ToString()),
						//idtipoVia = Convert.ToInt32(dr["idtipoVia"].ToString()),
						//idUbigeoNace = Convert.ToInt32(dr["idUbigeoNace"].ToString()),
						//idUbigeoResi = Convert.ToInt32(dr["idUbigeoResi"].ToString()),
						//interior = Convert.ToInt32(dr["interior"].ToString()),
						//manzana = Convert.ToInt32(dr["manzana"].ToString()),
						//nombreVia = dr["nombreVia"].ToString(),
						//nroBlock = Convert.ToInt32(dr["nroBlock"].ToString()),
						//nroDpto = Convert.ToInt32(dr["nroDpto"].ToString()),
						//nroEtapa = Convert.ToInt32(dr["nroEtapa"].ToString()),
						//nroKm = Convert.ToInt32(dr["nroKm"].ToString()),
						//nroLote = Convert.ToInt32(dr["nroLote"].ToString()),
						//nroRuc = Convert.ToInt32(dr["nroRuc"].ToString()),
						//nroVia = Convert.ToInt32(dr["nroVia"].ToString()),
						//razonSocial = dr["razonSocial"].ToString(),
						//tpPersona = Convert.ToInt32(dr["tpPersona"].ToString())
					};
					if(dr["idtpDocumento"].ToString() != "")Persona.idtpDocumento = Convert.ToInt32(dr["idtpDocumento"].ToString());
					if(dr["dniPersona"].ToString() != "")Persona.dniPersona = Convert.ToInt32(dr["dniPersona"].ToString());
					if(dr["idSexo"].ToString() != "")Persona.idSexo = Convert.ToInt32(dr["idSexo"].ToString());
					if(dr["idEstCivil"].ToString() != "")Persona.idEstCivil = Convert.ToInt32(dr["idEstCivil"].ToString());
					if(dr["idOcupacion"].ToString() != "")Persona.idOcupacion = Convert.ToInt32(dr["idOcupacion"].ToString());
				}
				catch (Exception e)
				{
					Console.WriteLine(e.Message);
				}
			}
			else
			{
				PersonaDTO persona = (PersonaDTO)objeto;
				try
				{
					Persona = new T000_PERSONA()
					{
						apePaterno = persona.apellidoPaterno,
						apeMaterno = persona.apellidoMaterno,
						nombres = persona.nombres,
						idtpDocumento = persona.idTipoDocumento,
						dniPersona = persona.numeroDocumento,
						idSexo = persona.idSexo,
						fecNace = persona.fecNacimiento,
						idEstCivil = persona.idEstadoCivil,
						idOcupacion = persona.idOcupacion,
						domiFiscal = persona.domiFiscal,
						telefono = persona.telefono,
						celular = persona.celular,
						correo = persona.correo,
						estado = "1",
						centroEduca = persona.centroEduca,
						condicionRuc = persona.condicionRuc,
						edad = persona.edad,
						estadoRuc = persona.estadoRuc,
						fotografia = persona.fotografia,
						idciaSeguro = persona.idciaSeguro,
						iddatoSiteds = persona.iddatoSiteds,
						idemprConvenio = persona.idemprConvenio,
						idEtnico = persona.idEtnico,
						idFactorrh = persona.idFactorrh,
						idgpoSangre = persona.idgpoSangre,
						idGrdInstruc = persona.idGradoInstruccion,
						idParentesco = persona.idParentesco,
						idReligion = persona.idReligion,
						idtipoIafa = persona.idtipoIafa,
						idtipoVia = persona.idtipoVia,
						idUbigeoNace = persona.idUbigeoNace,
						idUbigeoResi = persona.idUbigeoResi,
						interior = persona.interior,
						manzana = persona.manzana,
						nombreVia = persona.nombreVia,
						nroBlock = persona.nroBlock,
						nroDpto = persona.nroDpto,
						nroEtapa = persona.nroEtapa,
						nroKm = persona.nroKm,
						nroLote = persona.nroLote,
						nroRuc = persona.ruc,
						nroVia = persona.nroVia,
						razonSocial = persona.razonSocial,
						tpPersona = persona.tpPersona
					};
					if (persona.idPersona != null) Persona.idPersona = (int)persona.idPersona;
				}
				catch (Exception e)
				{
					Console.WriteLine(e.Message);
				}
			}
			return Persona;
		}
		public static T120_EMPLEADO GetEmpleado(Object objeto, int tipo)
		{
			T120_EMPLEADO Empleado = null;
			if (tipo == 1)
			{
				try
				{
					DataRow dr = (DataRow)objeto;
					Empleado = new T120_EMPLEADO
					{
						idEmpleado = Convert.ToInt32(dr["idEmpleado"]),
						codEmpleado = dr["codEmpleado"].ToString(),
						descArea = dr["descArea"].ToString(),
						cargo = dr["cargo"].ToString(),
						genero = dr["genero"].ToString(),
						estado = dr["estado"].ToString(),
						idPersona = Convert.ToInt32(dr["idtpEmpleado"])
					};
					if(dr["fecIngreso"].ToString() != "") Empleado.fecIngreso = DateTime.Parse(dr["fecIngreso"].ToString());
					if(dr["salario"].ToString() != "") Empleado.salario = Convert.ToInt32(dr["salario"].ToString());
					if(dr["idtpEmpleado"].ToString() != "") Empleado.idtpEmpleado = Convert.ToInt32(dr["idtpEmpleado"].ToString());
				}
				catch (Exception e)
				{
					Console.WriteLine("Error en ingreso");
				}
			}
			else
            {
				PersonaDTO persona = (PersonaDTO)objeto;
				try
				{
					Empleado = new T120_EMPLEADO()
					{
						codEmpleado = persona.personal.codEmpleado,
						descArea = persona.personal.descArea,
						cargo = persona.personal.cargo,
						fecIngreso = DateTime.Parse(persona.personal.fechaIngreso),
						salario = persona.personal.salario,
						genero = persona.personal.genero,
						idtpEmpleado = persona.personal.idTipoEmpleado,
						idPersona = persona.idPersona,
						estado = "1"
					};
					if (persona.personal.idEmpleado != null) Empleado.idEmpleado = (int)persona.personal.idEmpleado;
				}
				catch (Exception e)
				{
					Console.WriteLine(e.Message);
				}
			}
			return Empleado;
		}
		public static T212_MEDICO GetMedico(Object objeto, int tipo)
		{
			T212_MEDICO Medico = null;
			if(tipo == 1)
            {
				try
				{
					DataRow dr = (DataRow)objeto;
					Medico = new T212_MEDICO
					{
						idMedico = Convert.ToInt32(dr["idMedico"].ToString()),
						codMedico = dr["codMedico"].ToString(),
						nroRne = dr["nroRne"].ToString(),
						condicion = dr["condicion"].ToString(),
						idEmpleado = Convert.ToInt32(dr["idMedico"]),
						idPersona = Convert.ToInt32(dr["idPersona"]),
						estado = dr["estado"].ToString()
					};
					if(dr["nroColegio"].ToString() != "") Medico.nroColegio = Convert.ToInt32(dr["nroColegio"].ToString());
					if(dr["nroRuc"].ToString() != "") Medico.nroRuc = Convert.ToInt32(dr["nroRuc"].ToString());
					if(dr["idtpDocumento"].ToString() != "") Medico.idtpDocumento = Convert.ToInt32(dr["idtpDocumento"].ToString());
					if(dr["idEspecialidad"].ToString() != "") Medico.idEspecialidad = Convert.ToInt32(dr["idEspecialidad"].ToString());
					
				}
				catch (Exception e)
				{
					Console.WriteLine("Error en ingreso");
				}
			}
			else
            {
                try
                {
					PersonaDTO persona = (PersonaDTO)objeto;
					Medico = new T212_MEDICO
					{
						codMedico = persona.personal.codMedico,
						nroColegio = persona.personal.numeroColegio,
						nroRne = persona.personal.nroRne,
						nroRuc = persona.personal.nroRucMedico,
						idtpDocumento = persona.personal.idTipoEmpleado,
						condicion = persona.personal.condicion,
						idEmpleado = persona.personal.idEmpleado,
						idEspecialidad = persona.personal.idEspecialidad,
						idPersona = persona.idPersona,
						estado = "1"
					};
					if (persona.personal.idMedico != null) Medico.idMedico = (int)persona.personal.idMedico;
				}
				catch (Exception e)
				{
					Console.WriteLine("Error en ingreso");
				}
			}
			return Medico;
		}
		#endregion Metodos Complementarios
	}
}
