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
        private static MedicoRepository MedicoRepository = new MedicoRepository();
        public List<PersonaDTO> listarPersonas()
        {
            List<PersonaDTO> personas = new List<PersonaDTO>();
            PersonalDTO personal = new PersonalDTO();
            DataSet objects = UtilRepository.getAllData("usp_ListarPersona");
            foreach (DataRow dr in objects.Tables["Objects"].Rows)
            {
                T000_PERSONA persona = new T000_PERSONA();
                persona = UtilRepository.GetPersona(dr, 1);
                T120_EMPLEADO empleado = EmpleadoRepository.ListarEmpleadoxIdPersona(persona.idPersona);
                if (empleado != null)
                {
                    personal = new PersonalDTO
                    {
                        fechaIngreso = empleado.fecIngreso.Value.ToString("yyyy-MM-dd"),
                        cargo = empleado.cargo
                    };
                }
                personas.Add(new PersonaDTO()
                {
                    idPersona = persona.idPersona,
                    nombres = persona.nombres,
                    apellidoPaterno = persona.apePaterno,
                    apellidoMaterno = persona.apeMaterno,
                    telefono = persona.telefono,
                    personal = personal
                }) ;
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
                persona = UtilRepository.GetPersona(dr,1);
                T120_EMPLEADO empleado = EmpleadoRepository.ListarEmpleadoxIdPersona(persona.idPersona);
                if (empleado != null)
                { 
                    personal = new PersonalDTO()
                    {
                        idEmpleado = empleado.idEmpleado,
                        idTipoEmpleado = empleado.idtpEmpleado,
                        fechaIngreso = empleado.fecIngreso.Value.ToString("yyyy-MM-dd"),
                        cargo = empleado.cargo,
                        descArea = empleado.descArea
                    };
                    if (personal.idTipoEmpleado == 109)
                    {
                        T212_MEDICO medico = MedicoRepository.listarMedicoxIdEmpleado(empleado.idEmpleado);
                        personal.idEspecialidad = medico.idEspecialidad;
                        personal.idMedico = medico.idMedico;
                        personal.numeroColegio = medico.nroColegio;
                    }
                }
            }
            PersonaDTO Persona = new PersonaDTO()
            {
                idPersona = persona.idPersona,
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
                persona = (T000_PERSONA)UtilRepository.GetPersona(dr,1);
            }
            return persona;
        }
        public T000_PERSONA listarxNombre(string nombres)
        {
            T000_PERSONA persona = new T000_PERSONA();

            DataSet objects = UtilRepository.getDataByName("usp_ListarxNombrePersona", nombres);
            foreach (DataRow dr in objects.Tables["Objects"].Rows)
            {
                persona = (T000_PERSONA)UtilRepository.GetPersona(dr,1);
            }
            return persona;
        }
        public string eliminarPersona(int? id)
        {
            return UtilRepository.deleteById("usp_EliminarPersona", (int)id);
        }
        public List<string> insertarPersona(PersonaDTO persona)
        {
            List<string> mensajes = new List<string>();
            T000_PERSONA Persona = UtilRepository.GetPersona(persona, 2);
            UtilRepository.insertaActualiza("usp_InsertarPersona", Persona, 1);
            persona.idPersona = listarxDni((int)persona.numeroDocumento).idPersona;
            T120_EMPLEADO Empleado = UtilRepository.GetEmpleado(persona,2);
            UtilRepository.insertaActualiza("usp_InsertarEmpleado", Empleado, 1);
            persona.personal.idEmpleado = EmpleadoRepository.ListarEmpleadoxIdPersona((int)persona.idPersona).idEmpleado;
            if (persona.personal.idTipoEmpleado == 110)
            {
                T212_MEDICO Medico = UtilRepository.GetMedico(persona, 2);
                UtilRepository.insertaActualiza("usp_InsertarMedico", Medico, 1);
            }
            return mensajes;
        }
        public List<string> actualizarPersona(PersonaDTO persona)
        {
            List<string> mensajes = new List<string>();
            T000_PERSONA Persona = UtilRepository.GetPersona(persona, 2);
            UtilRepository.insertaActualiza("usp_ActualizarPersona", Persona, 2);
            persona.idPersona = listarxDni((int)persona.numeroDocumento).idPersona;
            T120_EMPLEADO Empleado = UtilRepository.GetEmpleado(persona, 2);
            UtilRepository.insertaActualiza("usp_ActualizarEmpleado", Empleado, 2);
            persona.personal.idEmpleado = EmpleadoRepository.ListarEmpleadoxIdPersona((int)persona.idPersona).idEmpleado;
            if (persona.personal.idTipoEmpleado == 109)
            {
                T212_MEDICO Medico = UtilRepository.GetMedico(persona, 2);
                UtilRepository.insertaActualiza("usp_ActualizarMedico", Medico, 2);
            }
            return mensajes;
        }
    }
}