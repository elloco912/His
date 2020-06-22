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

		public DataSet GetAllData(string query)
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

		public DataSet GetDataById(string query,int id)
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

		public string DeleteById(string query, int id)
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

		public string InsertaActualiza (string query,Object objecto,int tipo)
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

		//public async Task<List<D024_CAJA>> getCajas()
		//{
		//	List<D024_CAJA> caja = await (from c in _context.D024_CAJA
		//								  select c).ToListAsync();

		//	return caja;
		//}

		//public class Fecha
		//      {
		//	public int idprogramMed { get; set; }
		//	public  string fecprogram { get; set; }
		//}

		//public class Hora
		//{
		//	public int idprogramMed { get; set; }
		//	public string horprogram { get; set; }
		//}

		//public List<Fecha> ObtenerFechaHora(List<D012_CRONOMEDICO> cronograma)
		//      {
		//	int intervalofecha, intervalohora;
		//	List<Fecha> fechas = new List<Fecha>();

		//	foreach (var item in cronograma)
		//	{
		//		intervalofecha = item.fechaFin.Value.DayOfYear - item.fechaIni.Value.DayOfYear;
		//		intervalohora = int.Parse(item.hrFin.Split(":")[0]) - int.Parse(item.hrInicio.Split(":")[0]);
		//		for (int i = 0; i <= intervalofecha; i++)
		//		{
		//			Fecha fecha = new Fecha()
		//			{
		//				idprogramMed = item.idProgramMedica,
		//				fecprogram = item.fechaIni.Value.AddDays(i).ToShortDateString()
		//			};
		//			fechas.Add(fecha);
		//		}
		//	}
		//	return fechas;
		//}

		//public async Task<object> GetCronograma()
		//{
		//	List<D012_CRONOMEDICO> cronograma = await(from cro in _context.D012_CRONOMEDICO
		//						   join med in _context.T212_MEDICO on cro.idMedico equals med.idMedico
		//						   select cro
		//							).ToListAsync();

		//	return ObtenerFechaHora(cronograma);
		//}

		//public async Task<object> GetCronogramaByMedico(int id)
		//{
		//	List<D012_CRONOMEDICO> cronograma = await (from cro in _context.D012_CRONOMEDICO
		//							join med in _context.T212_MEDICO on cro.idMedico equals med.idMedico
		//							where med.idMedico == id
		//							select cro).ToListAsync();
		//	return ObtenerFechaHora(cronograma);
		//}

		//public async Task<object> GetEspecialidad(int id)
		//{
		//	var combo = await(	from td in _context.D00_TBDETALLE
		//						join med in _context.T212_MEDICO
		//						on td.idDet equals med.idEspecialidad
		//						where med.idMedico == id
		//						select new
		//						{
		//							idtab = td.idDet,
		//							descripcion = td.descripcion
		//						}).ToListAsync();
		//	return combo;
		//}

		//public async Task<List<T109_ESTADOCITA>> getEstadoCita()
		//{

		//	List<T109_ESTADOCITA> estado = await (from e in _context.T109_ESTADOCITA
		//									select e).ToListAsync();
		//	return estado;
		//}

		//public async Task<object> GetHoras()
		//{
		//	var horas = new Collection();
		//	return horas;
		//}

		//      public async Task<object> GetHorasByCronograma(int id)
		//      {
		//	int intervalohora;
		//	Hora hora;
		//	List<Hora> horas = new List<Hora>();
		//	var cronograma = await (from cro in _context.D012_CRONOMEDICO
		//                             where cro.idProgramMedica == id
		//                             select cro).FirstOrDefaultAsync();
		//	intervalohora = int.Parse(cronograma.hrFin.Split(":")[0]) - int.Parse(cronograma.hrInicio.Split(":")[0]);

		//	for (int j = 0; j < intervalohora; j++)
		//	{
		//		hora = new Hora{
		//			idprogramMed = cronograma.idProgramMedica,
		//			horprogram = (int.Parse(cronograma.hrInicio.Split(":")[0]) + j).ToString() + ":00"
		//		};
		//		horas.Add(hora);
		//	}
		//	return horas;
		//      }

		//      public async Task<object> GetMedicoByEspecialidad(int id)
		//{
		//	var medico = await (from td in _context.D00_TBDETALLE
		//						join med in _context.T212_MEDICO
		//                              on td.idDet equals med.idEspecialidad
		//						join per in _context.T000_PERSONA
		//                              on med.idPersona equals per.idPersona
		//						where td.idDet == id
		//						select new
		//						{
		//							idMedico = med.idMedico,
		//							nombres = per.primerNombre + " "  + per.apePaterno + " " + per.apeMaterno
		//						}).ToListAsync();
		//	return medico;
		//}

		//public async Task<object> GetMedicos()
		//{
		//	var medico = await (from per in _context.T000_PERSONA
		//				 join e in _context.T120_EMPLEADO on per.idPersona
		//				 equals e.idPersona
		//				 join med in _context.T212_MEDICO on e.idPersona equals med.idPersona
		//				 select new
		//				 {
		//					 idMedico = med.idMedico,
		//					 nombres = per.primerNombre +  " " + per.apePaterno + " " + per.apeMaterno
		//				 }).ToListAsync();
		//	return medico;
		//}

		//public async Task<object> GetTipo(string nombretipo)
		//{
		//	var combo = await (from tg in _context.D00_TBGENERAL
		//						 join td in _context.D00_TBDETALLE on tg.idTab equals td.idTab
		//						 where tg.descripcion == nombretipo
		//						 select new
		//						 {
		//							 idtab = td.idDet,
		//							 descripcion = td.descripcion
		//						 }).ToListAsync();
		//	return combo;
		//}

		//public async Task<List<T218_SERVICIOSCLI>> getServicios()
		//{
		//	List<T218_SERVICIOSCLI> servicios = await (from s in _context.T218_SERVICIOSCLI
		//											   select s).ToListAsync();
		//	return servicios;
		//}
	}
}
