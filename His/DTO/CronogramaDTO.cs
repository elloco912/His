using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace His.DTO
{
	public class CronogramaDTO
	{
		public int idProgramMedica { get; set; }
		public string mes { get; set; }
		public string semana { get; set; }
		public string dia { get; set; }
		public string fechaIni { get; set; }
		public string fechaFin { get; set; }
		public int? idMedico { get; set; }
		public int? idEspecialidad { get; set; }
		public int? idConsultorio { get; set; }
		public string hrInicio { get; set; }
		public string hrFin { get; set; }
		public int? idEstado { get; set; }
		public string desEstado { get; set; }
        public string medico { get; set; }
	}
}
