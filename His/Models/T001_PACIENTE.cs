using System.ComponentModel.DataAnnotations;

namespace His.Models
{
    public class T001_PACIENTE
    {
        [Key]
        public int idPaciente { get; set; }
        public string codPaciente { get; set; }
        public int? idtpPaciente { get; set; }
        public string descripcion { get; set; }
        public int? nrohc { get; set; }
        public string nombreAcom { get; set; }
        public int? edadAcom { get; set; }
        public int? dniAcom { get; set; }
        public int? idgpoSangre { get; set; }
        public int? idFactorrh { get; set; }
        public int? idPersona { get; set; }
        public int? idAsegurado { get; set; }
        public int? idPacConvenio { get; set; }
        public string estado { get; set; }
    }
}
