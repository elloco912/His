using System;
using System.ComponentModel.DataAnnotations;

namespace His.Models
{
	public class T120_EMPLEADO
	{
		public int idEmpleado { get; set; }
		public string codEmpleado { get; set; }
		public string descArea { get; set; }
		public string cargo { get; set; }
		public DateTime? fecIngreso { get; set; }
		public int? salario { get; set; }
		public string genero { get; set; }
		public int? idtpEmpleado { get; set; }
		public int? idPersona { get; set; }
		public string estado { get; set; }
	}
}
