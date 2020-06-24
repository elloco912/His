using System.ComponentModel.DataAnnotations;

namespace His.Models
{
	public class T212_MEDICO
	{
		public int idMedico { get; set; }
		public string codMedico { get; set; }
		public int? nroColegio { get; set; }
		public string nroRne { get; set; }
		public int? nroRuc { get; set; }
		public int? idtpDocumento { get; set; }
		public string condicion { get; set; }
		public int? idEmpleado { get; set; }
		public int? idEspecialidad { get; set; }
		public int? idPersona { get; set; }
		public string estado { get; set; }
	}
}
