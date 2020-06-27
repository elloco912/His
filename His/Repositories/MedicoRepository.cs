using His.Models;
using His.Repositories;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Threading.Tasks;

namespace His.Repositories
{
    public class MedicoRepository 
    {
        private static UtilRepository UtilRepository = new UtilRepository();
        public List<T212_MEDICO> listarMedicos()
        {
            List<T212_MEDICO> medicos = new List<T212_MEDICO>();
            DataSet objects = UtilRepository.getAllData("usp_ListarMedico");
            foreach (DataRow dr in objects.Tables["Objects"].Rows)
            {
                medicos.Add(UtilRepository.GetMedico(dr,1));
            }
            return medicos;
        }

        public T212_MEDICO listarxIdMedico(int id)
        {
            T212_MEDICO Medico = new T212_MEDICO();

            DataSet objects = UtilRepository.getDataById("usp_ListarxIdmedico", id);
            foreach (DataRow dr in objects.Tables["Objects"].Rows)
            {
                Medico = UtilRepository.GetMedico(dr,1);
            }
            return Medico;
        }

        public T212_MEDICO listarMedicoxIdEmpleado(int id)
        {
            T212_MEDICO Medico = new T212_MEDICO();

            DataSet objects = UtilRepository.getDataById("usp_ListarMedicoxIdEmpleado", id);
            foreach (DataRow dr in objects.Tables["Objects"].Rows)
            {
                Medico = UtilRepository.GetMedico(dr,1);
            }
            return Medico;
        }
        public T212_MEDICO listarxNombre(string nombres)
        {
            T212_MEDICO medico = new T212_MEDICO();

            DataSet objects = UtilRepository.getDataByName("usp_ListarxNombreMedico", nombres);
            foreach (DataRow dr in objects.Tables["Objects"].Rows)
            {
                medico = UtilRepository.GetMedico(dr,1);
            }
            return medico;
        }
        public string eliminarMedico(int id)
        {
            return UtilRepository.deleteById("usp_EliminarMedico", id);
        }

        public string insertarMedico(T212_MEDICO medico)
        {
            return UtilRepository.insertaActualiza("usp_InsertarMedico", medico, 1);
        }

        public string actualizarMedico(T212_MEDICO medico)
        {
            return UtilRepository.insertaActualiza("usp_ActualizarMedico", medico, 2);
        }
    }
}
