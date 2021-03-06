﻿using His.DTO;
using His.Models;
using His.Repositories;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;

namespace His.Repositories
{
    public class DetalleRepository
    {
        public GeneralRepository generalrepository = new GeneralRepository();
        public UtilRepository UtilRepository = new UtilRepository();
        public static D00_TBDETALLE GetDetalle(DataRow dr)
        {
            return _ = new D00_TBDETALLE
            {
                idDet = int.Parse(dr["idDet"].ToString()),
                abrev = dr["abrev"].ToString(),
                coddetTab = dr["coddetTab"].ToString(),
                descripcion = dr["descripcion"].ToString(),
                estado = dr["estado"].ToString(),
                fuente = dr["fuente"].ToString(),
                idTab = int.Parse(dr["idTab"].ToString())
            };
        }
        public List<D00_TBDETALLE> listarDetalles()
        {
            List<D00_TBDETALLE> detalles = new List<D00_TBDETALLE>();
            DataSet objects = UtilRepository.getAllData("usp_ListartbDetalle");
            foreach (DataRow dr in objects.Tables["Objects"].Rows)
            {
                detalles.Add(GetDetalle(dr));
            }
            return detalles;
        }
        public D00_TBDETALLE listarxNombre(string nombres)
        {
            D00_TBDETALLE detalle = new D00_TBDETALLE();

            DataSet objects = UtilRepository.getDataByName("usp_ListarxNombretbDetalle", nombres);
            foreach (DataRow dr in objects.Tables["Objects"].Rows)
            {
                detalle = GetDetalle(dr);
            }
            return detalle;
        }
        public List<D00_TBDETALLE> listarxDetallexIdGeneral(int? id)
        {
            List<D00_TBDETALLE> detalles = new List<D00_TBDETALLE>();

            DataSet objects = UtilRepository.getDataById("usp_ListartbDetallexIdtbGeneral", id);
            foreach (DataRow dr in objects.Tables["Objects"].Rows)
            {
                detalles.Add(GetDetalle(dr));
            }
            return detalles;
        }

        public List<D00_TBDETALLE> listarxDetallexNombreGeneral(string nombres)
        {
            List<D00_TBDETALLE> detalles = new List<D00_TBDETALLE>();

            DataSet objects = UtilRepository.getDataByName("usp_ListartbDetallexNombretbGeneral", nombres);
            foreach (DataRow dr in objects.Tables["Objects"].Rows)
            {
                detalles.Add(GetDetalle(dr));
            }
            return detalles;
        }
        public D00_TBDETALLE listarxIdDetalle(int? id)
        {
            D00_TBDETALLE detalle = new D00_TBDETALLE();

            DataSet objects = UtilRepository.getDataById("usp_ListarxIdtbDetalle", (int)id);
            foreach (DataRow dr in objects.Tables["Objects"].Rows)
            {
                detalle = GetDetalle(dr);
            }


            return detalle;
        }
        public string eliminarDetalle(int id)
        {
            return UtilRepository.deleteById("usp_EliminartbDetalle", id);
        }
        public string insertarDetalle(D00_TBDETALLE detalle)
        {
            return UtilRepository.insertaActualiza("usp_InsertartbDetalle", detalle, 1);
        }
        public string actualizarDetalle(D00_TBDETALLE detalle)
        {
            return UtilRepository.insertaActualiza("usp_ActualizartbDetalle", detalle, 2);
        }

        public DetalleDTO GetDetalle(int? id)
        {
            DetalleDTO dto = new DetalleDTO();
            D00_TBGENERAL general = generalrepository.listarxIdGeneral(id);
            dto.idtab = general.idTab;
            dto.codigo = general.codTab;
            dto.ldetalle = listarxDetallexIdGeneral(id);
            return dto;
        }
    }
}
