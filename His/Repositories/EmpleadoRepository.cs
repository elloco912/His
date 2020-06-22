using His.Models;
using His.Repositories;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Threading.Tasks;

namespace HistClinica.Repositories.Repositories
{
    public class EmpleadoRepository 
    {
        private static UtilRepository UtilRepository = new UtilRepository(); 
        public static T120_EMPLEADO GetEMPLEADO(DataRow dr)
        {
            return _ = new T120_EMPLEADO
            {
                idEmpleado = Convert.ToInt32(dr["idEmpleado"]),
                codEmpleado = dr["codEmpleado"].ToString(),
                descArea = dr["descArea"].ToString(),
                cargo = dr["cargo"].ToString(),
                fecIngreso = Convert.ToDateTime(dr["cargo"].ToString()),
                salario = Convert.ToInt32(dr["salario"].ToString()),
                genero = dr["genero"].ToString(),
                idtpEmpleado = Convert.ToInt32(dr["idtpEmpleado"]),
                idPersona = Convert.ToInt32(dr["idPersona"]),
                estado = dr["estado"].ToString()
            };
        }
        public List<T120_EMPLEADO> listarEmpleados()
        {
            List<T120_EMPLEADO> empleados = new List<T120_EMPLEADO>();
            DataSet objects = UtilRepository.GetAllData("usp_ListarEmpleado");
            foreach (DataRow dr in objects.Tables["Objects"].Rows)
            {
                empleados.Add(GetEMPLEADO(dr));
            }
            return empleados;
        }

        public T120_EMPLEADO listarxIdEmpleado(int id)
        {
            T120_EMPLEADO empleado = new T120_EMPLEADO();

            DataSet objects = UtilRepository.GetDataById("usp_listarxIdUsuario", id);
            foreach (DataRow dr in objects.Tables["Objects"].Rows)
            {
                empleado = GetEMPLEADO(dr);
            }
            return empleado;
        }

        public string eliminarempleado(int id)
        {
            return UtilRepository.DeleteById("usp_EliminarEmpleado", id);
        }

        public string insertarempleado(T120_EMPLEADO empleado)
        {
            return UtilRepository.InsertaActualiza("usp_InsertarEmpleado", empleado, 1);
        }

        public string actualizarempleado(T120_EMPLEADO empleado)
        {
            return UtilRepository.InsertaActualiza("usp_ActualizarEmpleado", empleado, 2);
        }
        //private readonly ClinicaServiceContext _context;
        //public EmpleadoRepository(ClinicaServiceContext context)
        //{
        //    _context = context;
        //}

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

        //public async Task<bool> EmpleadoExists(int? id)
        //{
        //    return await _context.T120_EMPLEADO.AnyAsync(e => e.idEmpleado == id);
        //}

        //public async Task<string> InsertEmpleado(PersonaDTO Persona, int idPersona)
        //{
        //    try
        //    {
        //        T120_EMPLEADO Empleado = new T120_EMPLEADO
        //        {
        //            idPersona = idPersona,
        //            cargo = Persona.personal.cargo,
        //            codEmpleado = Persona.personal.codEmpleado,
        //            descArea = Persona.personal.descArea,
        //            estado = Persona.personal.estadoPersonal,
        //            fecIngreso = DateTime.Parse(Persona.personal.fechaIngreso),
        //            genero = Persona.personal.genero,
        //            idtpEmpleado = Persona.personal.idTipoEmpleado,
        //            precio = Persona.personal.precio,
        //            salario = Persona.personal.salario
        //        };
        //        await _context.T120_EMPLEADO.AddAsync(Empleado);
        //        await Save();
        //        return "Ingreso Exitoso Empleado";
        //    }
        //    catch (Exception ex)
        //    {
        //        return "Error en el guardado " + ex.Message;
        //    }
        //}
        //public async Task<string> UpdateEmpleado(PersonaDTO Persona)
        //{
        //    try
        //    {
        //        T120_EMPLEADO Empleado = new T120_EMPLEADO
        //        {
        //            idPersona = Persona.idPersona,
        //            idEmpleado = (int)Persona.personal.idEmpleado,
        //            cargo = Persona.personal.cargo,
        //            codEmpleado = Persona.personal.codEmpleado,
        //            descArea = Persona.personal.descArea,
        //            estado = Persona.personal.estadoPersonal,
        //            fecIngreso = DateTime.Parse(Persona.personal.fechaIngreso),
        //            genero = Persona.personal.genero,
        //            idtpEmpleado = Persona.personal.idTipoEmpleado,
        //            precio = Persona.personal.precio,
        //            salario = Persona.personal.salario
        //        };
        //        _context.Update(Empleado);
        //        await Save();
        //        return "Actualizacion Exitosa Empleado";
        //    }
        //    catch (Exception ex)
        //    {

        //        return "Error en el guardado " + ex.StackTrace;
        //    }
        //}
        //public async Task<int> GetIdEmpleado(int? id)
        //{
        //    int idEmpleado = await (from p in _context.T120_EMPLEADO
        //                            where p.idPersona == id
        //                            select p.idEmpleado).FirstOrDefaultAsync();
        //    return idEmpleado;
        //}

        //public async Task<PersonaDTO> GetById(int? id)
        //{
        //    PersonaDTO personaDTO = await (from p in _context.T000_PERSONA
        //                             join e in _context.T120_EMPLEADO on p.idPersona equals e.idPersona
        //                             where p.idPersona == id
        //                             select new PersonaDTO
        //                             {
        //                                 primerNombre = p.primerNombre,
        //                                 segundoNombre = p.segundoNombre,
        //                                 numeroDocumento = p.dniPersona,
        //                                 personal = new PersonalDTO
        //                                 {
        //                                     idEmpleado = e.idEmpleado,
        //                                     idTipoEmpleado = e.idtpEmpleado
        //                                 }
        //                             }).FirstOrDefaultAsync(); 
        //    return personaDTO;
        //}
    }
}
