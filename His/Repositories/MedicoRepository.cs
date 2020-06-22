using System;
using System.Linq;
using System.Threading.Tasks;

namespace HistClinica.Repositories.Repositories
{
    public class MedicoRepository 
    {
        //private readonly ClinicaServiceContext _context;
        //public MedicoRepository(ClinicaServiceContext context)
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

        //public async Task<bool> MedicoExists(int? id)
        //{
        //    return await _context.T212_MEDICO.AnyAsync(e => e.idMedico == id);
        //}
        //public async Task<string> InsertMedico(PersonaDTO Persona, int idPersona, int idEmpleado)
        //{
        //    try
        //    {
        //        T212_MEDICO Medico = new T212_MEDICO()
        //        {
        //            idEmpleado = idEmpleado,
        //            idPersona = idPersona,
        //            nroColegio = Persona.personal.numeroColegio,
        //            nroRuc = Persona.ruc,
        //            idEspecialidad = Persona.personal.idEspecialidad,
        //            estado = Persona.personal.estadoPersonal,
        //            codMedico = Persona.personal.codMedico,
        //            condicion = Persona.personal.condicion,
        //            nroRne = Persona.personal.nroRne,
        //            idtpDocumento = Persona.idTipoDocumento
        //        };
        //        await _context.T212_MEDICO.AddAsync(Medico);
        //        await Save();
        //        return "Ingreso Exitoso Medico";
        //    }
        //    catch (Exception ex)
        //    {
        //        return "Error en el guardado " + ex.Message;
        //    }
        //}
        //public async Task<string> UpdateMedico(PersonaDTO Persona)
        //{
        //    try
        //    {
        //        T212_MEDICO Medico = new T212_MEDICO()
        //        {
        //            idPersona = Persona.idPersona,
        //            idEmpleado = Persona.personal.idEmpleado,
        //            idMedico = (int)Persona.personal.idMedico,
        //            nroColegio = Persona.personal.numeroColegio,
        //            nroRuc = Persona.ruc,
        //            idEspecialidad = Persona.personal.idEspecialidad,
        //            estado = Persona.personal.estadoPersonal,
        //            codMedico = Persona.personal.codMedico,
        //            condicion = Persona.personal.condicion,
        //            nroRne = Persona.personal.nroRne,
        //            idtpDocumento = Persona.idTipoDocumento
        //        };
        //        _context.Update(Medico);
        //        await Save();
        //        return "Actualizacion Exitosa Medico";
        //    }
        //    catch (Exception ex)
        //    {

        //        return "Error en el guardado " + ex.StackTrace;
        //    }
        //}

        //public async Task<int> GetIdMedico(int? id)
        //{
        //    int idMedico = await (from p in _context.T212_MEDICO
        //                          where p.idPersona == id
        //                          select p.idMedico).FirstOrDefaultAsync();
        //    return idMedico;
        //}
    }
}
