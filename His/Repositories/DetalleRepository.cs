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
        public UtilRepository UtilRepository = new UtilRepository();
        //private bool disposed = false;
        //protected virtual void Dispose(bool disposing)
        //{
        //    if (!this.disposed)
        //    {
        //        if (disposing)
        //        {
        //            _context.Dispose();
        //        }
        //    }
        //    this.disposed = true;
        //}
        //public void Dispose()
        //{
        //    Dispose(true);
        //    GC.SuppressFinalize(this);
        //}
        //public async Task Save()
        //{
        //    await _context.SaveChangesAsync();
        //}

        //public async Task<bool> DetalleExists(int? id)
        //{
        //    return await _context.D00_TBDETALLE.AnyAsync(e => e.idDet == id);
        //}

        public List<D00_TBDETALLE> GetAllDetalles(string filtro)
        {
            D00_TBDETALLE detalle;
            List<D00_TBDETALLE> detalles = new List<D00_TBDETALLE>();            
            if (filtro == "")
            {
                DataSet objects = UtilRepository.GetAllData("");
                foreach (DataRow dr in objects.Tables["Objects"].Rows)
                {
                    detalle = new D00_TBDETALLE
                    {
                        idDet = Convert.ToInt32(dr["idDet"]),
                        abrev = dr["abrev"].ToString(),
                        coddetTab = dr["coddetTab"].ToString(),
                        descripcion = dr["abrev"].ToString(),
                        estado = dr["estado"].ToString(),
                        fuente = dr["fuente"].ToString(),
                        idTab = Convert.ToInt32(dr["idTab"])
                    };
                    detalles.Add(detalle);
                }
            }
            else
            {
                    
            }
            return detalles;
        }

        public D00_TBDETALLE GetDetalle(int? id)
        {
            D00_TBDETALLE detalle=new D00_TBDETALLE();
            DataSet objects = UtilRepository.GetAllData("");
            foreach (DataRow dr in objects.Tables["Objects"].Rows)
            {
                detalle = new D00_TBDETALLE
                {
                    idDet = Convert.ToInt32(dr["idDet"]),
                    abrev = dr["abrev"].ToString(),
                    coddetTab = dr["coddetTab"].ToString(),
                    descripcion = dr["abrev"].ToString(),
                    estado = dr["estado"].ToString(),
                    fuente = dr["fuente"].ToString(),
                    idTab = Convert.ToInt32(dr["idTab"])
                };
            }
            return detalle;
        }

        //public async Task<D00_TBDETALLE> GetById(int? Id)
        //{
        //    DetalleDTO listaDetalle = new DetalleDTO();
        //    listaDetalle = await (from detalle in _context.D00_TBDETALLE
        //                         where detalle.idTab == 1 && detalle.idDet == Id
        //                         select new DetalleDTO
        //                         {
        //                             idDet = detalle.idDet,
        //                             coddetTab = detalle.coddetTab,
        //                             descripcion = detalle.descripcion
        //                         }).FirstOrDefaultAsync();
        //    return listaDetalle;
        //}

        //public async Task<string> InsertDetalle(D00_TBDETALLE Detalle)
        //{
        //    try
        //    {
        //        await _context.D00_TBDETALLE.AddAsync(new D00_TBDETALLE()
        //        {
        //            coddetTab = Detalle.coddetTab,
        //            descripcion = Detalle.descripcion,
        //            idTab = 1
        //    });
        //        await Save();
        //        return "Ingreso Exitoso";
        //    }
        //    catch (Exception ex)
        //    {
        //        return "Error en el guardado " + ex.StackTrace;
        //    }
        //}

        //public async Task DeleteDetalle(int DetalleID)
        //{
        //    D00_TBDETALLE Detalle = await _context.D00_TBDETALLE.FindAsync(DetalleID);
        //    _context.D00_TBDETALLE.Remove(Detalle);
        //    await Save();
        //}

        //public async Task<string> UpdateDetalle(D00_TBDETALLE Detalle)
        //{
        //    try
        //    {
        //        await _context.D00_TBDETALLE.AddAsync(new D00_TBDETALLE()
        //        {
        //            idDet = Detalle.idDet,
        //            coddetTab = Detalle.coddetTab,
        //            descripcion = Detalle.descripcion,
        //            idTab = 1
        //        });
        //        await Save();
        //        return "Ingreso Exitoso";
        //    }
        //    catch (Exception ex)
        //    {
        //        return "Error en el guardado " + ex.StackTrace;
        //    }
        //}
    }
}
