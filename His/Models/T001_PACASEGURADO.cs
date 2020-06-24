using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace His.Models
{
	public class T001_PACASEGURADO
	{
		public int idAsegurado { get; set; }
		public string cobertura { get; set; }
		public string ordenAtenMed { get; set; }
		public string nomAseguradora { get; set; }
		public string codAsegurado { get; set; }
		public string poliza { get; set; }
		public int? idParentesco { get; set; }
		public DateTime? iniVigencia { get; set; }
		public DateTime? finVigencia { get; set; }
		public string tpPlanSalud { get; set; }
		public int? nroplanSalud { get; set; }
		public string estadoSeguro { get; set; }
		public string tpAfiliacion { get; set; }
		public DateTime? fecAfiliacion { get; set; }
		public int? codTitular { get; set; }
		public string moneda { get; set; }
		public string nomContratante { get; set; }
		public int? idtpDocumento { get; set; }
		public int? dniContratante { get; set; }
		public string planSalud { get; set; }
		public string codCobertura { get; set; }
		public string beneficio { get; set; }
		public string restriccion { get; set; }
		public int? copagoFijo { get; set; }
		public int? copagoVariable { get; set; }
		public int? finCarencia { get; set; }
		public string convenio { get; set; }
		public decimal? descuento { get; set; }
		public int? idPaciente { get; set; }
		public string estado { get; set; }
	}
}
