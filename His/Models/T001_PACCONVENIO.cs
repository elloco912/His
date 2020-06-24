using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace His.Models
{
	public class T001_PACCONVENIO
	{
		public int idPacConvenio { get; set; }
		public string ordAtenMedica { get; set; }
		public int? idParentesco { get; set; }
		public string cobertura { get; set; }
		public DateTime? iniVigencia { get; set; }
		public DateTime? finVigencia { get; set; }
		public string estadoConvenio { get; set; }
		public string tpAfiliacion { get; set; }
		public DateTime? fecAfiliacion { get; set; }
		public int? codTitular { get; set; }
		public string moneda { get; set; }
		public string nomContratante { get; set; }
		public int? idtpDocumento { get; set; }
		public int? dniContratante { get; set; }
		public string beneficio { get; set; }
		public string restriccion { get; set; }
		public int? copagoFijo { get; set; }
		public int? copagoVariable { get; set; }
		public int? idPaciente { get; set; }
		public string estado { get; set; }
	}
}
