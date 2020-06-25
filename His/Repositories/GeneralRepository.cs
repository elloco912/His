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
        public static D00_TBGENERAL GetDetalle(DataRow dr)
        {
            return _ = new D00_TBGENERAL
            {
                idTab = int.Parse(dr["idTab"].ToString()),
                descripcion = dr["descripcion"].ToString(),
                codTab = dr["descripcion"].ToString(),
                fechaCreate = DateTime.Parse(dr["descripcion"].ToString()),
                tipo = dr["descripcion"].ToString(),
                usuCreate = dr["descripcion"].ToString()
            };
        }
        public List<D00_TBGENERAL> listarDetalles()
        {
            List<D00_TBGENERAL> detalles = new List<D00_TBGENERAL>();
            DataSet objects = UtilRepository.getAllData("usp_ListartbGeneral");
            foreach (DataRow dr in objects.Tables["Objects"].Rows)
            {
                detalles.Add(GetDetalle(dr));
            }
            return detalles;
        }
        public D00_TBGENERAL listarxNombre(string nombres)
        {
            D00_TBGENERAL detalle = new D00_TBGENERAL();

            DataSet objects = UtilRepository.getDataByName("usp_ListarxNombretbGeneral", nombres);
            foreach (DataRow dr in objects.Tables["Objects"].Rows)
            {
                detalle = GetDetalle(dr);
            }
            return detalle;
        }
        public D00_TBGENERAL listarxIdDetalle(int id)
        {
            D00_TBGENERAL detalle = new D00_TBGENERAL();

            DataSet objects = UtilRepository.getDataById("usp_ListarxIdtbGeneral", (int)id);
            foreach (DataRow dr in objects.Tables["Objects"].Rows)
            {
                detalle = GetDetalle(dr);
            }


            return detalle;
        }
        public string eliminarDetalle(int id)
        {
            return UtilRepository.deleteById("usp_EliminartbGeneral", id);
        }
        public string insertarDetalle(D00_TBGENERAL empleado)
        {
            return UtilRepository.insertaActualiza("usp_InsertartbGeneral", empleado, 1);
        }
        public string actualizarDetalle(D00_TBGENERAL empleado)
        {
            return UtilRepository.insertaActualiza("usp_ActualizartbGeneral", empleado, 2);
        }
    }
}