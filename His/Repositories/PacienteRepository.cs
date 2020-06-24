using His.Models;
using His.Repositories;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Security.Cryptography;
using System.Threading.Tasks;

namespace HistClinica.Repositories.Repositories
{
    public class PacienteRepository 
    {
        private static UtilRepository UtilRepository = new UtilRepository();
        public static T001_PACIENTE GetPaciente(DataRow dr)
        {
            return _ = new T001_PACIENTE
            {
                idPaciente = Convert.ToInt32(dr["idPaciente"]),
                idtpPaciente = Convert.ToInt32(dr["idtpPaciente"]),
                idPersona = Convert.ToInt32(dr["idPersona"]),
                estado = dr["estado"].ToString(),
                codPaciente = dr["codPaciente"].ToString(),
                descripcion = dr["descripcion"].ToString(),
                dniAcom = Convert.ToInt32(dr["dniAcom"].ToString()),
                edadAcom = Convert.ToInt32(dr["edadAcom"].ToString()),
                idAsegurado = Convert.ToInt32(dr["idAsegurado"].ToString()),
                idFactorrh = Convert.ToInt32(dr["idFactorrh"].ToString()),
                idgpoSangre = Convert.ToInt32(dr["idgpoSangre"].ToString()),
                idPacConvenio = Convert.ToInt32(dr["idPacConvenio"].ToString()),
                nombreAcom = dr["nombreAcom"].ToString(),
                nrohc = Convert.ToInt32(dr["nrohc"].ToString())
            };
        }
        public List<T001_PACIENTE> listarPacientes()
        {
            List<T001_PACIENTE> pacientes = new List<T001_PACIENTE>();
            DataSet objects = UtilRepository.getAllData("usp_ListarPaciente");
            foreach (DataRow dr in objects.Tables["Objects"].Rows)
            {
                pacientes.Add(GetPaciente(dr));
            }
            return pacientes;
        }

        public T001_PACIENTE listarxIdPaciente(int id)
        {
            T001_PACIENTE paciente = new T001_PACIENTE();

            DataSet objects = UtilRepository.getDataById("usp_listarxIdPaciente", id);
            foreach (DataRow dr in objects.Tables["Objects"].Rows)
            {
                paciente = GetPaciente(dr);
            }
            return paciente;
        }

        public string eliminarPaciente(int id)
        {
            return UtilRepository.deleteById("usp_EliminarPaciente", id);
        }

        public string insertarPaciente(T001_PACIENTE paciente)
        {
            return UtilRepository.insertaActualiza("usp_InsertarPaciente", paciente, 1);
        }

        public string actualizarPaciente(T001_PACIENTE paciente)
        {
            return UtilRepository.insertaActualiza("usp_ActualizarPaciente", paciente, 2);
        }
    }
}
