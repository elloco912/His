using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace His.Models
{
	public class D015_PAGO
	{
		public int idPago { get; set; }
		public string codTransaccion { get; set; }
		public string codTransacRetorno { get; set; }
		public int? idFormaPago { get; set; }
		public double? monto { get; set; }
		public DateTime? fecRegistro { get; set; }
		public DateTime? fecOkPasarela { get; set; }
		public int? idCita { get; set; }
		public string estado { get; set; }
	}
}
