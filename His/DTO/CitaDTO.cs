using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace His.DTO
{
    public class CitaDTO
    {
        public int? idCita { get; set; }
        public int? nroCita { get; set; }
        public int? idTipoCita { get; set; }
        public string TipoCita { get; set; }
        public string fecha { get; set; }
        public string hora { get; set; }
        public string consultorio { get; set; }
        public string descripcion { get; set; }
        public int? idmedico { get; set; }
        public string medico { get; set; }
        public int? idPaciente { get; set; }
        public string nombrePaciente { get; set; }
        public int? dniPaciente { get; set; }
        public int? idEmpleado { get; set; }
        public int? idProgramMedica { get; set; }
        public int? idEspecialidad { get; set; }
        public int? idServicioCli { get; set; }
        public string especialidad { get; set; }
        public double? precio { get; set; }
        public double? igv { get; set; }
        public double? total { get; set; }
        public string estado { get; set; }
        public string estadoPago { get; set; }
        public string motivoreprogramacion { get; set; }
        public string motivoanulacion { get; set; }
    }
}
