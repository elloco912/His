using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace His.DTO
{
    public class PacienteDTO
    {
        #region Paciente
        public int? idPaciente { get; set; }
        public int? idAsegurado { get; set; }
        public int? idConvenio { get; set; }
        public int? idTipoPaciente { get; set; }
        public int? idOcupacionPaciente { get; set; }
        public int? idParentescoPaciente { get; set; }
        public int? idFactorRrh { get; set; }
        public int? idGrupoSanguineo { get; set; }
        public string codPaciente { get; set; }
        public string descripcion { get; set; }
        public string nrohc { get; set; }
        public int? idestado { get; set; }
        public string estadoPaciente { get; set; }
        #region Ubicacion
        public int? idDepartamentoUbicacion { get; set; }
        public int? idProvinciaUbicacion { get; set; }
        public int? idTipoViaUbicacion { get; set; }
        public string nombreViaUbicacion { get; set; }
        public int? numeroUbicacion { get; set; }
        public int? numeroDepartamentoUbicacion { get; set; }
        public int? interiorUbicacion { get; set; }
        public int? numeroLoteUbicacion { get; set; }
        public List<CitaDTO> cita { get; set; }
        #endregion
        #region Nacimiento
        public int? idPaisOrigenNacimiento { get; set; }
        public int? idDepartamentoNacimiento { get; set; }
        public int? idProvinciaNacimiento { get; set; }
        public int? idDistritoNacimiento { get; set; }
        #endregion
        #region Empresa
        public string razonSocialEmpresa { get; set; }
        public string estadoRucEmpresa { get; set; }
        public string domicilioFiscalEmpresa { get; set; }
        #endregion
        #region Seguro
        public string coberturaCompañia { get; set; }
        public string ordenAtencionMedicaCompañia { get; set; }
        public string nombreAseguradoraCompañia { get; set; }
        public string codAseguradoCompañia { get; set; }
        public string polizaCompañia { get; set; }
        public int? idParentescoCompañia { get; set; }
        public DateTime? inicioVigenciaCompañia { get; set; }
        public DateTime? finVigenciaCompañia { get; set; }
        public int? tipoPlanSaludCompañia { get; set; }
        public int? numeroPlanSaludCompañia { get; set; }
        public string tpPlanSalud { get; set; }
        public string estadoSeguro { get; set; }
        public int? tpAfiliacion { get; set; }
        public DateTime? fecAfiliacion { get; set; }
        public int? codTitular { get; set; }
        public string moneda { get; set; }
        public string nomContratante { get; set; }
        public int? dniContratante { get; set; }
        public string planSalud { get; set; }
        public int? codCobertura { get; set; }
        public string beneficio { get; set; }
        public string restriccion { get; set; }
        public int? copagoFijo { get; set; }
        public int? copagoVariable { get; set; }
        public int? finCarencia { get; set; }
        public int? estadoCompañia { get; set; }
        public string convenio { get; set; }
        public double? descuento { get; set; }
        #endregion
        #region Convenio
        public string coberturaConvenio { get; set; }
        public string ordenAtencionMedicaConvenio { get; set; }
        public int? idParentesoConvenio { get; set; }
        public DateTime? inicioVigenciaConvenio { get; set; }
        public DateTime? finVigenciaConvenio { get; set; }
        public int? estadoConven { get; set; }
        public int? estadoConvenio { get; set; }
        #endregion
        #region Acompañante
        public int? idTipoDocumentoAcompañante { get; set; }
        public int? numeroDocumentoAcompañante { get; set; }
        public string apellidoPaternoAcompañante { get; set; }
        public string apellidoMaternoAcompañante { get; set; }
        public string NombreAcompañante { get; set; }
        public int? idParentescoAcompañante { get; set; }
        public int? edadAcompañante { get; set; }
        public int? estadoAcompañante { get; set; }
        #endregion
        #endregion Paciente
    }
}
