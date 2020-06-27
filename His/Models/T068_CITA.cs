using System;
using System.ComponentModel.DataAnnotations;

namespace His.Models
{
	public class T068_CITA
	{
		public int idCita { get; set; }
		public int? codCita { get; set; }
		public int? nroCita { get; set; }
		public string descripcion { get; set; }
		public DateTime? fechaCita { get; set; }
		public string ultCie10 { get; set; }
		public int? tpAtencion { get; set; }
		public int? nroHC { get; set; }
		public int? idEstadoCita { get; set; }
		public int? idEstaGralPac { get; set; }
		public string estadoReprogram { get; set; }
		public string ejecutado { get; set; }
		public string prioridad { get; set; }
		public double? precio { get; set; }
		public double? descuento { get; set; }
		public double? coa { get; set; }
		public double? igv { get; set; }
		public int? tipoCita { get; set; }
		public string motivoRepro { get; set; }
		public string motivoAnula { get; set; }
		public int? idPaciente { get; set; }
		public int? idEmpleado { get; set; }
		public int? idConsultorio { get; set; }
		public int? idProgramMedica { get; set; }
		public int? idservicioCli { get; set; }
		public string estado { get; set; }
	}
}