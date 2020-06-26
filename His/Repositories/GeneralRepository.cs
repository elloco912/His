using His.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace His.Repositories
{
    public class GeneralRepository
    {
        public UtilRepository UtilRepository = new UtilRepository();
        public static D00_TBGENERAL GetGeneral(DataRow dr)
        {
            return _ = new D00_TBGENERAL
            {
                idTab = int.Parse(dr["idTab"].ToString()),
                descripcion = dr["descripcion"].ToString(),
                codTab = dr["codTab"].ToString(),
                fechaCreate = DateTime.Parse(dr["fechaCreate"].ToString()),
                tipo = dr["tipo"].ToString(),
                usuCreate = dr["usuCreate"].ToString()
            };
        }
        public List<D00_TBGENERAL> listarGenerals()
        {
            List<D00_TBGENERAL> detalles = new List<D00_TBGENERAL>();
            DataSet objects = UtilRepository.getAllData("usp_ListartbGeneral");
            foreach (DataRow dr in objects.Tables["Objects"].Rows)
            {
                detalles.Add(GetGeneral(dr));
            }
            return detalles;
        }
        public D00_TBGENERAL listarxNombre(string nombres)
        {
            D00_TBGENERAL detalle = new D00_TBGENERAL();

            DataSet objects = UtilRepository.getDataByName("usp_ListarxNombretbGeneral", nombres);
            foreach (DataRow dr in objects.Tables["Objects"].Rows)
            {
                detalle = GetGeneral(dr);
            }
            return detalle;
        }
        public D00_TBGENERAL listarxIdGeneral(int? id)
        {
            D00_TBGENERAL detalle = new D00_TBGENERAL();

            DataSet objects = UtilRepository.getDataById("usp_ListarxIdtbGeneral", (int)id);
            foreach (DataRow dr in objects.Tables["Objects"].Rows)
            {
                detalle = GetGeneral(dr);
            }


            return detalle;
        }
        public string eliminarGeneral(int id)
        {
            return UtilRepository.deleteById("usp_EliminartbGeneral", id);
        }
        public string insertarGeneral(D00_TBGENERAL general)
        {
            general.fechaCreate = DateTime.Now;
            return UtilRepository.insertaActualiza("usp_InsertartbGeneral", general, 1);
        }
        public string actualizarGeneral(D00_TBGENERAL general)
        {
            return UtilRepository.insertaActualiza("usp_ActualizartbGeneral", general, 2);
        }
    }
}