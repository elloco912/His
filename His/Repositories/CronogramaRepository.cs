using His.Models;
using His.Repositories;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Runtime.InteropServices.ComTypes;
using System.Threading.Tasks;

namespace HistClinica.Repositories.Repositories
{
	public class CronoMedicoRepository
	{
        private static UtilRepository UtilRepository = new UtilRepository();
        public static D012_CRONOMEDICO GetCronoMedico(DataRow dr)
        {
            return _ = new D012_CRONOMEDICO
            {
                idProgramMedica = int.Parse(dr["idProgramMedica"].ToString()),
                dia = dr["dia"].ToString(),
                fechaIni = DateTime.Parse(dr["fechaIni"].ToString()),
                fechaFin = DateTime.Parse(dr["fechaFin"].ToString()),
                hrInicio = dr["hrInicio"].ToString(),
                hrFin = dr["hrFin"].ToString(),
                idConsultorio =     int.Parse(dr["idConsultorio"].ToString()),
                idEspecialidad =    int.Parse(dr["idEspecialidad"].ToString()),
                //idEstado = int.Parse(dr["idEstado"].ToString()),
                idMedico = int.Parse(dr["idMedico"].ToString()),
                mes = dr["mes"].ToString(),
                semana = dr["semana"].ToString()
            };
        }
        public List<D012_CRONOMEDICO> listarCronoMedicos()
        {
            List<D012_CRONOMEDICO> cronogramas = new List<D012_CRONOMEDICO>();
            DataSet objects = UtilRepository.getAllData("usp_ListarCronoMedico");
            foreach (DataRow dr in objects.Tables["Objects"].Rows)
            {
                cronogramas.Add(GetCronoMedico(dr));
            }
            return cronogramas;
        }
        public D012_CRONOMEDICO listarxIdCronoMedico(int id)
        {
            D012_CRONOMEDICO cronograma = new D012_CRONOMEDICO();

            DataSet objects = UtilRepository.getDataById("usp_ListarxIdCronoMedico", (int)id);
            foreach (DataRow dr in objects.Tables["Objects"].Rows)
            {
                cronograma = GetCronoMedico(dr);
            }


            return cronograma;
        }
        public string eliminarCronoMedico(int id)
        {
            return UtilRepository.deleteById("usp_EliminarCronoMedico", id);
        }
        public string insertarCronoMedico(D012_CRONOMEDICO cronograma)
        {
            return UtilRepository.insertaActualiza("usp_InsertarCronoMedico", cronograma, 1);
        }
        public string actualizarCronoMedico(D012_CRONOMEDICO cronograma)
        {
            return UtilRepository.insertaActualiza("usp_ActualizarCronoMedico", cronograma, 2);
        }
    }
}
