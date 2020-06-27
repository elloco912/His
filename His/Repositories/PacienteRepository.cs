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
    public class PacienteRepository 
    {
        private static UtilRepository UtilRepository = new UtilRepository();
        public List<T001_PACIENTE> listarPacientes()
        {
            List<T001_PACIENTE> pacientes = new List<T001_PACIENTE>();
            DataSet objects = UtilRepository.getAllData("usp_ListarPaciente");
            foreach (DataRow dr in objects.Tables["Objects"].Rows)
            {
                pacientes.Add(UtilRepository.GetPaciente(dr,1));
            }
            return pacientes;
        }
        //ToDO: Terminar esto
        public T001_PACIENTE listarxIdPaciente(int id)
        {
            T001_PACIENTE paciente = new T001_PACIENTE();

            DataSet objects = UtilRepository.getDataById("usp_ListarxIdPaciente", id);
            foreach (DataRow dr in objects.Tables["Objects"].Rows)
            {
                paciente = UtilRepository.GetPaciente(dr,1);
            }
            return paciente;
        }
        //ToDO: Terminar esto
        public T001_PACIENTE listarxDni(int dni)
        {
            T001_PACIENTE paciente = new T001_PACIENTE();

            DataSet objects = UtilRepository.getDataByDni("usp_BuscarDniPaciente", dni);
            foreach (DataRow dr in objects.Tables["Objects"].Rows)
            {
                paciente = UtilRepository.GetPaciente(dr,1);
            }
            return paciente;
        }

        public T001_PACIENTE listarxNombre(string nombres)
        {
            T001_PACIENTE paciente = new T001_PACIENTE();

            DataSet objects = UtilRepository.getDataByName("usp_ListarxNombrePaciente", nombres);
            foreach (DataRow dr in objects.Tables["Objects"].Rows)
            {
                paciente = UtilRepository.GetPaciente(dr,1);
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
