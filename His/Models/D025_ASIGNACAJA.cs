using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace His.Models
{
	public class D025_ASIGNACAJA
	{
		public int? idCaja { get; set; }
		public int? idEmpleado { get; set; }
	}
}
