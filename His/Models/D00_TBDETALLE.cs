  using System.ComponentModel.DataAnnotations;

namespace His.Models
{
	public class D00_TBDETALLE
	{
		public int idDet { get; set; }
		public string coddetTab { get; set; }
		public string descripcion { get; set; }
		public string abrev { get; set; }
		public string fuente { get; set; }
		public string estado { get; set; }
		public int? idTab { get; set; }
	}
}
