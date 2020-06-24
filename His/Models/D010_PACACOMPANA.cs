using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace His.Models
{
	public class D010_PACACOMPANA
	{
		public int idPacAcom { get; set; }
		public string tpDocumento { get; set; }
		public int? dniAcom { get; set; }
		public string apePatAcom { get; set; }
		public string apeMatAcom { get; set; }
		public string nombresAcom { get; set; }
		public string parentesco { get; set; }
		public int? idPaciente { get; set; }
		public int? idPersona { get; set; }
		public string estado { get; set; }
	}
}
