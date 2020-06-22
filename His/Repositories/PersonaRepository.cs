using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Threading.Tasks;

namespace HistClinica.Repositories.Repositories
{
    public class PersonaRepository 
    {
        //private readonly ClinicaServiceContext _context;
        //private readonly IMedicoRepository _medicoRepository;
        //private readonly IEmpleadoRepository _empleadoRepository;
        //private readonly IPacienteRepository _pacienteRepository;
        //public PersonaRepository(ClinicaServiceContext context, IMedicoRepository medicorepository, IEmpleadoRepository empleadoRepository, IPacienteRepository pacienteRepository)
        //{
        //    _context = context;
        //    _medicoRepository = medicorepository;
        //    _empleadoRepository = empleadoRepository;
        //    _pacienteRepository = pacienteRepository;
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
        //public async Task<bool> PersonaExists(int? id)
        //{
        //    return await _context.T000_PERSONA.AnyAsync(e => e.idPersona == id);
        //}
        //public async Task<int> getIdTpEmpleado(string descripcion)
        //{
        //    return await (from d in _context.D00_TBDETALLE
        //                  where d.descripcion == descripcion
        //                 select d.idDet
        //                 ).FirstOrDefaultAsync();
        //}
        //public async Task DeletePersona(int? PersonaID)
        //{
        //    T000_PERSONA Persona = await _context.T000_PERSONA.FindAsync(PersonaID);
        //    _context.T000_PERSONA.Remove(Persona);
        //    await Save();
        //}
        //public async Task<string> InsertPersona(PersonaDTO Persona)
        //{
        //    int idPersona = 0;
        //    int idEmpleado = 0;
        //    try
        //    {
        //        await _context.T000_PERSONA.AddAsync(new T000_PERSONA()
        //        {
        //            primerNombre = Persona.primerNombre,
        //            segundoNombre = Persona.segundoNombre,
        //            apePaterno = Persona.apellidoPaterno,
        //            apeMaterno = Persona.apellidoMaterno,
        //            dniPersona = Persona.numeroDocumento,
        //            nroRuc = Persona.ruc,
        //            telefono = Persona.telefono,
        //            celular = Persona.celular,
        //            centroEduca = Persona.centroEduca,
        //            condicionRuc = Persona.condicionRuc,
        //            correo = Persona.correo,
        //            domiFiscal = Persona.domiFiscal,
        //            edad = Persona.edad,
        //            estado = Persona.estado,
        //            estadoRuc = Persona.estadoRuc,
        //            fecNacimiento = Persona.fecNacimiento,
        //            fotografia = Persona.fotografia,
        //            idciaSeguro = Persona.idciaSeguro,
        //            iddatoSiteds = Persona.iddatoSiteds,
        //            idemprConvenio = Persona.idemprConvenio,
        //            idEstCivil = Persona.idEstCivil,
        //            idEtnico = Persona.idEtnico,
        //            idgpoSangre = Persona.idgpoSangre,
        //            idGrdInstruc = Persona.idGrdInstruc,
        //            idOcupacion = Persona.idOcupacion,
        //            idParentesco = Persona.idParentesco,
        //            idReligion = Persona.idReligion,
        //            idSexo = Persona.idSexo,
        //            idtipoIafa = Persona.idtipoIafa,
        //            idtipoVia = Persona.idtipoVia,
        //            idtpDocumento = Persona.idTipoDocumento,
        //            idUbigeoNace = Persona.idUbigeoNace,
        //            idUbigeoResi = Persona.idUbigeoResi,
        //            manzana = Persona.manzana,
        //            nroEtapa = Persona.nroEtapa,
        //            nroKm = Persona.nroKm,
        //            nroVia = Persona.nroVia,
        //            razonSocial = Persona.razonSocial,
        //            tpPersona = Persona.tpPersona,
        //            idFactorrh = Persona.idFactorrh,
        //            interior = Persona.interior,
        //            nombreVia = Persona.nombreVia,
        //            nroBlock = Persona.nroBlock,
        //            nroDpto = Persona.nroDpto,
        //            nroLote = Persona.nroLote
        //        });
        //        await Save();
        //        idPersona = (await _context.T000_PERSONA
        //            .FirstOrDefaultAsync(p => p.dniPersona == Persona.numeroDocumento)).idPersona;
        //        if (Persona.personal != null)
        //        {
        //            await _empleadoRepository.InsertEmpleado(Persona, idPersona);
        //            idEmpleado = await _empleadoRepository.GetIdEmpleado(idPersona);
        //            if (Persona.personal.idTipoEmpleado == (int)await getIdTpEmpleado("MEDICA/O"))
        //            {
        //                await _medicoRepository.InsertMedico(Persona, idPersona, idEmpleado);
        //            }
        //        }
        //        else
        //        {
        //            await _pacienteRepository.InsertPaciente(Persona, idPersona);
        //        }
        //        return "Ingreso Exitoso Persona";
        //    }
        //    catch (Exception ex)
        //    {
        //        return "Error en el guardado " + ex.Message;
        //    }
        //}
        //public async Task<string> UpdatePersona(PersonaDTO Persona)
        //{
        //    try
        //    {
        //        _context.Update(new T000_PERSONA()
        //        {
        //            idPersona = (int) Persona.idPersona,
        //            primerNombre = Persona.primerNombre,
        //            segundoNombre = Persona.segundoNombre,
        //            apePaterno = Persona.apellidoPaterno,
        //            apeMaterno = Persona.apellidoMaterno,
        //            dniPersona = Persona.numeroDocumento,
        //            nroRuc = Persona.ruc,
        //            telefono = Persona.telefono,
        //            celular = Persona.celular,
        //            centroEduca = Persona.centroEduca,
        //            condicionRuc = Persona.condicionRuc,
        //            correo = Persona.correo,
        //            domiFiscal = Persona.domiFiscal,
        //            edad = Persona.edad,
        //            estado = Persona.estado,
        //            estadoRuc = Persona.estadoRuc,
        //            fecNacimiento = Persona.fecNacimiento,
        //            fotografia = Persona.fotografia,
        //            idciaSeguro = Persona.idciaSeguro,
        //            iddatoSiteds = Persona.iddatoSiteds,
        //            idemprConvenio = Persona.idemprConvenio,
        //            idEstCivil = Persona.idEstCivil,
        //            idEtnico = Persona.idEtnico,
        //            idgpoSangre = Persona.idgpoSangre,
        //            idGrdInstruc = Persona.idGrdInstruc,
        //            idOcupacion = Persona.idOcupacion,
        //            idParentesco = Persona.idParentesco,
        //            idReligion = Persona.idReligion,
        //            idSexo = Persona.idSexo,
        //            idtipoIafa = Persona.idtipoIafa,
        //            idtipoVia = Persona.idtipoVia,
        //            idtpDocumento = Persona.idTipoDocumento,
        //            idUbigeoNace = Persona.idUbigeoNace,
        //            idUbigeoResi = Persona.idUbigeoResi,
        //            manzana = Persona.manzana,
        //            nroEtapa = Persona.nroEtapa,
        //            nroKm = Persona.nroKm,
        //            nroVia = Persona.nroVia,
        //            razonSocial = Persona.razonSocial,
        //            tpPersona = Persona.tpPersona,
        //            idFactorrh = Persona.idFactorrh,
        //            interior = Persona.interior,
        //            nombreVia = Persona.nombreVia,
        //            nroBlock = Persona.nroBlock,
        //            nroDpto = Persona.nroDpto,
        //            nroLote = Persona.nroLote
        //        });
        //        await Save();
        //        if (Persona.personal.idTipoEmpleado != null)
        //        {
        //            await _empleadoRepository.UpdateEmpleado(Persona);
        //            if (Persona.personal.idTipoEmpleado == (int)await getIdTpEmpleado("MEDICA/O"))
        //            {
        //                await _medicoRepository.UpdateMedico(Persona);
        //            }
        //        }
        //        else
        //        {
        //            await _pacienteRepository.UpdatePaciente(Persona);
        //        }
        //        return "Actualizacion Exitosa Persona";
        //    }
        //    catch (Exception ex)
        //    {

        //        return "Error en el guardado " + ex.StackTrace;
        //    }
        //}
        //public async Task<List<PersonaDTO>> GetAllPersonal()
        //{
        //    List<PersonaDTO> Personas = await (from p in _context.T000_PERSONA
        //                                       join e in _context.T120_EMPLEADO on p.idPersona equals e.idPersona
        //                                       where e.idtpEmpleado != null
        //                                       select new PersonaDTO
        //                                       {
        //                                           idPersona = p.idPersona,
        //                                           primerNombre = p.primerNombre,
        //                                           segundoNombre = p.segundoNombre,
        //                                           apellidoPaterno = p.apePaterno,
        //                                           apellidoMaterno = p.apeMaterno,
        //                                           telefono = p.telefono
        //                                       }).ToListAsync();

        //    for (int i = 0; i < Personas.Count; i++)
        //    {
        //        Personas[i].personal = await (from e in _context.T120_EMPLEADO
        //                                      where e.idPersona == Personas[i].idPersona
        //                                      select new PersonalDTO
        //                                      {
        //                                          fechaIngreso = e.fecIngreso.Value.ToString("yyyy-MM-dd"),
        //                                          cargo = e.cargo
        //                                      }).FirstOrDefaultAsync();
        //    }
        //    return Personas;
        //}

        //public async Task<PersonaDTO> GetById(int? id)
        //{
        //    PersonaDTO Persona = new PersonaDTO();
        //    Persona = await (from p in _context.T000_PERSONA
        //                     join e in _context.T120_EMPLEADO on p.idPersona equals e.idPersona
        //                     where p.idPersona == id
        //                     select new PersonaDTO
        //                     {
        //                         idPersona = p.idPersona,
        //                         primerNombre = p.primerNombre,
        //                         segundoNombre = p.segundoNombre,
        //                         apellidoPaterno = p.apePaterno,
        //                         apellidoMaterno = p.apeMaterno,
        //                         fecNacimiento = p.fecNacimiento,
        //                         telefono = p.telefono,
        //                         numeroDocumento = (int)p.dniPersona,
        //                         ruc = p.nroRuc
        //                     }).FirstOrDefaultAsync();
        //    Persona.personal = await (from e in _context.T120_EMPLEADO
        //                              where e.idPersona == Persona.idPersona
        //                              select new PersonalDTO
        //                              {
        //                                  idEmpleado = e.idEmpleado,
        //                                  idTipoEmpleado = e.idtpEmpleado,
        //                                  fechaIngreso = e.fecIngreso.Value.ToString("yyyy-MM-dd"),
        //                                  cargo = e.cargo,
        //                                  descArea = e.descArea
        //                              }).FirstOrDefaultAsync();
        //    //Tipo de Empleado verificar
        //    if (Persona.personal.idTipoEmpleado == (int)await getIdTpEmpleado("MEDICA/O"))
        //    {
        //        PersonalDTO personaTemporal = new PersonalDTO();
        //        personaTemporal = await (from m in _context.T212_MEDICO
        //                                     where m.idEmpleado == Persona.personal.idEmpleado
        //                                     select new PersonalDTO
        //                                     {
        //                                         idEspecialidad = (from tb in _context.D00_TBDETALLE
        //                                                           where m.idEspecialidad == tb.idDet
        //                                                           select m.idEspecialidad).FirstOrDefault(),
        //                                         idMedico = m.idMedico,
        //                                         numeroColegio = m.nroColegio
        //                                     }).FirstOrDefaultAsync();
        //        Persona.personal.idEspecialidad = personaTemporal.idEspecialidad;
        //        Persona.personal.idMedico = personaTemporal.idMedico;
        //        Persona.personal.numeroColegio = personaTemporal.numeroColegio;
        //    }
        //    return Persona;
        //}
    }
}