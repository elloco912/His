using His.DTO;
using His.Models;
using His.Repositories;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Security.Cryptography;
using System.Threading.Tasks;

namespace His.Repositories
{
    public class PersonaRepository 
    {
        private static UtilRepository UtilRepository = new UtilRepository();
        private static EmpleadoRepository EmpleadoRepository = new EmpleadoRepository();
        public static T000_PERSONA GetPersona(Object objeto,int tipo)
        {
            if (tipo == 1)
            {
                DataRow dr = (DataRow)objeto;
                return _ = new T000_PERSONA
                {
                    idPersona = Convert.ToInt32(dr["idPersona"].ToString()),
                    apePaterno = dr["apePaterno"].ToString(),
                    apeMaterno = dr["apeMaterno"].ToString(),
                    nombres = dr["nombres"].ToString(),
                    idtpDocumento = Convert.ToInt32(dr["idtpDocumento"].ToString()),
                    dniPersona = Convert.ToInt32(dr["dniPersona"].ToString()),
                    idSexo = Convert.ToInt32(dr["idSexo"].ToString()),
                    fecNace = dr["fecNace"].ToString(),
                    idEstCivil = Convert.ToInt32(dr["idEstCivil"].ToString()),
                    idOcupacion = Convert.ToInt32(dr["idOcupacion"].ToString()),
                    domiFiscal = dr["domiFiscal"].ToString(),
                    telefono = dr["telefono"].ToString(),
                    celular = dr["celular"].ToString(),
                    correo = dr["correo"].ToString(),
                    //estado = dr["estado"].ToString(),
                    //centroEduca = dr["centroEduca"].ToString(),
                    //condicionRuc = dr["condicionRuc"].ToString(),
                    //edad = Convert.ToInt32(dr["edad"].ToString()),
                    //estadoRuc = dr["estadoRuc"].ToString(),
                    //fotografia = dr["fotografia"].ToString(),
                    //idciaSeguro = Convert.ToInt32(dr["idciaSeguro"].ToString()),
                    //iddatoSiteds = Convert.ToInt32(dr["iddatoSiteds"].ToString()),
                    //idemprConvenio = Convert.ToInt32(dr["idemprConvenio"].ToString()),
                    //idEtnico = Convert.ToInt32(dr["idEtnico"].ToString()),
                    //idFactorrh = Convert.ToInt32(dr["idFactorrh"].ToString()),
                    //idgpoSangre = Convert.ToInt32(dr["idgpoSangre"].ToString()),
                    //idGrdInstruc = Convert.ToInt32(dr["idGrdInstruc"].ToString()),
                    //idParentesco = Convert.ToInt32(dr["idParentesco"].ToString()),
                    //idReligion = Convert.ToInt32(dr["idReligion"].ToString()),
                    //idtipoIafa = Convert.ToInt32(dr["idtipoIafa"].ToString()),
                    //idtipoVia = Convert.ToInt32(dr["idtipoVia"].ToString()),
                    //idUbigeoNace = Convert.ToInt32(dr["idUbigeoNace"].ToString()),
                    //idUbigeoResi = Convert.ToInt32(dr["idUbigeoResi"].ToString()),
                    //interior = Convert.ToInt32(dr["interior"].ToString()),
                    //manzana = Convert.ToInt32(dr["manzana"].ToString()),
                    //nombreVia = dr["nombreVia"].ToString(),
                    //nroBlock = Convert.ToInt32(dr["nroBlock"].ToString()),
                    //nroDpto = Convert.ToInt32(dr["nroDpto"].ToString()),
                    //nroEtapa = Convert.ToInt32(dr["nroEtapa"].ToString()),
                    //nroKm = Convert.ToInt32(dr["nroKm"].ToString()),
                    //nroLote = Convert.ToInt32(dr["nroLote"].ToString()),
                    //nroRuc = Convert.ToInt32(dr["nroRuc"].ToString()),
                    //nroVia = Convert.ToInt32(dr["nroVia"].ToString()),
                    //razonSocial = dr["razonSocial"].ToString(),
                    //tpPersona = Convert.ToInt32(dr["tpPersona"].ToString())
                };
            }
            else
            {
                PersonaDTO persona = (PersonaDTO)objeto;
                return new T000_PERSONA()
                {
                    idPersona = (int)persona.idPersona,
                    apePaterno = persona.apellidoPaterno,
                    apeMaterno = persona.apellidoMaterno,
                    nombres = persona.nombres,
                    idtpDocumento = persona.idTipoDocumento,
                    dniPersona = persona.numeroDocumento,
                    idSexo = persona.idSexo,
                    fecNace = persona.fecNacimiento,
                    idEstCivil = persona.idEstadoCivil,
                    idOcupacion = persona.idOcupacion,
                    domiFiscal = persona.domiFiscal,
                    telefono = persona.telefono,
                    celular = persona.celular,
                    correo = persona.correo,
                    estado = persona.estado,
                    centroEduca = persona.centroEduca,
                    condicionRuc = persona.condicionRuc,
                    edad = persona.edad,
                    estadoRuc = persona.estadoRuc,
                    fotografia = persona.fotografia,
                    idciaSeguro = persona.idciaSeguro,
                    iddatoSiteds = persona.iddatoSiteds,
                    idemprConvenio = persona.idemprConvenio,
                    idEtnico = persona.idEtnico,
                    idFactorrh = persona.idFactorrh,
                    idgpoSangre = persona.idgpoSangre,
                    idGrdInstruc = persona.idGradoInstruccion,
                    idParentesco = persona.idParentesco,
                    idReligion = persona.idReligion,
                    idtipoIafa = persona.idtipoIafa,
                    idtipoVia = persona.idtipoVia,
                    idUbigeoNace = persona.idUbigeoNace,
                    idUbigeoResi = persona.idUbigeoResi,
                    interior = persona.interior,
                    manzana = persona.manzana,
                    nombreVia = persona.nombreVia,
                    nroBlock = persona.nroBlock,
                    nroDpto = persona.nroDpto,
                    nroEtapa = persona.nroEtapa,
                    nroKm = persona.nroKm,
                    nroLote = persona.nroLote,
                    nroRuc = persona.ruc,
                    nroVia = persona.nroVia,
                    razonSocial = persona.razonSocial,
                    tpPersona = persona.tpPersona
                };
            }
        }
        public List<PersonaDTO> listarPersonas()
        {
            List<PersonaDTO> personas = new List<PersonaDTO>();
            T000_PERSONA persona = new T000_PERSONA();
            T120_EMPLEADO empleado = new T120_EMPLEADO();
            PersonalDTO personal = new PersonalDTO();
            DataSet objects = UtilRepository.getAllData("usp_ListarPersona");
            foreach (DataRow dr in objects.Tables["Objects"].Rows)
            {
                persona = (T000_PERSONA)GetPersona(dr,1);
                empleado = EmpleadoRepository.ListarEmpleadoxIdPersona(persona.idPersona);
                if (empleado.idEmpleado != 0)
                {
                    personal = new PersonalDTO
                    {
                        fechaIngreso = empleado.fecIngreso.Value.ToString("yyyy-MM-dd"),
                        cargo = empleado.cargo
                    };
                }
                personas.Add(new PersonaDTO()
                {
                    nombres = persona.nombres,
                    apellidoPaterno = persona.apePaterno,
                    apellidoMaterno = persona.apeMaterno,
                    telefono = persona.telefono,
                    personal = personal
                });
            }
            return personas;
        }
        public PersonaDTO listarxIdPersona(int id)  
        {
            PersonalDTO personal = new PersonalDTO();
            T000_PERSONA persona = new T000_PERSONA();

            DataSet objects = UtilRepository.getDataById("usp_ListarxIdPersona", (int)id);
            foreach (DataRow dr in objects.Tables["Objects"].Rows)
            {
                persona = (T000_PERSONA)GetPersona(dr,1);
                personal = new PersonalDTO()
                {
                    idEmpleado = int.Parse(UtilRepository.GetData(dr,"idEmpleado")),
                    idTipoEmpleado = int.Parse(UtilRepository.GetData(dr, "idTipoEmpleado")),
                    fechaIngreso = (DateTime.Parse(UtilRepository.GetData(dr, "idTipoEmpleado"))).ToString("yyyy-MM-dd"),
                    cargo = UtilRepository.GetData(dr, "cargo"),
                    descArea = UtilRepository.GetData(dr,"descArea")
                };
                if (personal.idTipoEmpleado == 109)
                {
                    personal.idEspecialidad = int.Parse(UtilRepository.GetData(dr, "idEspecialidad"));
                    personal.idMedico = int.Parse(UtilRepository.GetData(dr, "idMedico"));
                    personal.numeroColegio =    int.Parse(UtilRepository.GetData(dr, "numeroColegio"));
                }
            }
            PersonaDTO Persona = new PersonaDTO()
            {
                nombres = persona.nombres,
                apellidoPaterno = persona.apePaterno,
                apellidoMaterno = persona.apeMaterno,
                fecNacimiento = persona.fecNace,
                telefono = persona.telefono,
                numeroDocumento = (int)persona.dniPersona,
                ruc = persona.nroRuc,
                personal = personal
            };

            return Persona;
        }
        public T000_PERSONA listarxDni(int dni)
        {
            T000_PERSONA persona = new T000_PERSONA();

            DataSet objects = UtilRepository.getDataByDni("usp_BuscarDniPersona", dni);
            foreach (DataRow dr in objects.Tables["Objects"].Rows)
            {
                persona = (T000_PERSONA)GetPersona(dr,1);
            }
            return persona;
        }
        public T000_PERSONA listarxNombre(string nombres)
        {
            T000_PERSONA persona = new T000_PERSONA();

            DataSet objects = UtilRepository.getDataByName("usp_ListarxNombrePersona", nombres);
            foreach (DataRow dr in objects.Tables["Objects"].Rows)
            {
                persona = (T000_PERSONA)GetPersona(dr,1);
            }
            return persona;
        }
        public string eliminarPersona(int? id)
        {
            return UtilRepository.deleteById("usp_EliminarPersona", (int)id);
        }
        public string insertarPersona(PersonaDTO persona)
        {
            T000_PERSONA Persona = (T000_PERSONA)GetPersona(persona, 2);
            return UtilRepository.insertaActualiza("usp_InsertarPersona", Persona, 1);
        }
        public string actualizarPersona(PersonaDTO persona)
        {
            T000_PERSONA Persona = (T000_PERSONA)GetPersona(persona, 2);
            return UtilRepository.insertaActualiza("usp_ActualizarPersona", Persona, 2);
        }
    }
}