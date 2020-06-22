using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace His.Models
{
	public class D024_CAJA
	{
		[Key]
		public int idCaja { get; set; }
		public int? nroCaja { get; set; }
		public string estado { get; set; }
	}
}
