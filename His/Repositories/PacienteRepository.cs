using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Threading.Tasks;

namespace HistClinica.Repositories.Repositories
{
    public class PacienteRepository 
    {
        //private readonly ClinicaServiceContext _context;
        //public PacienteRepository(ClinicaServiceContext context)
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

        //public async Task<bool> PacienteExists(int? id)
        //{
        //    return await _context.T001_PACIENTE.AnyAsync(e => e.idPaciente == id);
        //}
        //public async Task DeletePaciente(int PacienteID)
        //{
        //    T001_PACIENTE Paciente = await _context.T001_PACIENTE.FindAsync(PacienteID);
        //    _context.T001_PACIENTE.Remove(Paciente);
        //    await Save();
        //}
        //public async Task<string> InsertPaciente(PersonaDTO Persona, int idPersona)
        //{
        //    int? idAsegurado = null;
        //    int? idConvenio = null;
        //    int? idPaciente = null;
        //    try
        //    {
        //        if (Persona.paciente.idTipoPaciente == 120)//Compañia
        //        {
        //            await _context.T001_PACASEGURADO.AddAsync(new T001_PACASEGURADO()
        //            {
        //                cobertura = Persona.paciente.coberturaCompañia,
        //                ordenAtenMed = Persona.paciente.ordenAtencionMedicaCompañia,
        //                nomAseguradora = Persona.paciente.nombreAseguradoraCompañia,
        //                codAsegurado = Persona.paciente.codAseguradoCompañia,
        //                poliza = Persona.paciente.polizaCompañia,
        //                idParentesco = Persona.paciente.idParentescoCompañia,
        //                idPaciente = Persona.paciente.idPaciente,
        //                estado = Persona.estado,
        //                idtpDocumento = Persona.idTipoDocumento,
        //                iniVigencia = Persona.paciente.inicioVigenciaCompañia,
        //                finVigencia = Persona.paciente.finVigenciaCompañia,
        //                tpPlanSalud = Persona.paciente.tpPlanSalud,
        //                nroplanSalud = Persona.paciente.numeroPlanSaludCompañia,
        //                estadoSeguro = Persona.paciente.estadoSeguro,
        //                tpAfiliacion = Persona.paciente.tpAfiliacion,
        //                fecAfiliacion = Persona.paciente.fecAfiliacion,
        //                codTitular = Persona.paciente.codTitular,
        //                moneda = Persona.paciente.moneda,
        //                nomContratante = Persona.paciente.nomContratante,
        //                dniContratante = Persona.numeroDocumento,
        //                planSalud = Persona.paciente.planSalud,
        //                codCobertura = Persona.paciente.codCobertura,
        //                beneficio = Persona.paciente.beneficio,
        //                restriccion = Persona.paciente.restriccion,
        //                copagoFijo = Persona.paciente.copagoFijo,
        //                copagoVariable = Persona.paciente.copagoVariable,
        //                finCarencia = Persona.paciente.finCarencia,
        //                convenio = Persona.paciente.convenio,
        //                descuento = Persona.paciente.descuento
        //            });
        //            await Save();
        //            idAsegurado = (await _context.T001_PACASEGURADO
        //            .FirstOrDefaultAsync(p => p.dniContratante == Persona.numeroDocumento)).idAsegurado;
        //        }
        //        else if (Persona.paciente.idTipoPaciente == 121)//Convenio
        //        {
        //            await _context.T001_PACCONVENIO.AddAsync(new T001_PACCONVENIO()
        //            {
        //                cobertura = Persona.paciente.coberturaCompañia,
        //                idParentesco = Persona.paciente.idParentescoCompañia,
        //                idPaciente = Persona.paciente.idPaciente,
        //                estado = Persona.paciente.estadoConven.ToString(),
        //                idtpDocumento = Persona.idTipoDocumento,
        //                iniVigencia = Persona.paciente.inicioVigenciaCompañia,
        //                finVigencia = Persona.paciente.finVigenciaCompañia,
        //                tpAfiliacion = Persona.paciente.tpAfiliacion,
        //                fecAfiliacion = Persona.paciente.fecAfiliacion,
        //                codTitular = Persona.paciente.codTitular,
        //                moneda = Persona.paciente.moneda,
        //                nomContratante = Persona.paciente.nomContratante,
        //                dniContratante = Persona.numeroDocumento,
        //                beneficio = Persona.paciente.beneficio,
        //                restriccion = Persona.paciente.restriccion,
        //                copagoFijo = Persona.paciente.copagoFijo,
        //                copagoVariable = Persona.paciente.copagoVariable,
        //                estadoConvenio = Persona.paciente.estadoConvenio.ToString(),
        //                ordAtenMedica = Persona.paciente.ordenAtencionMedicaConvenio
        //            });
        //            await Save();
        //            idConvenio = (await _context.T001_PACCONVENIO
        //            .FirstOrDefaultAsync(p => p.dniContratante == idPersona)).idPacConvenio;
        //        }
        //        await _context.T001_PACIENTE.AddAsync(new T001_PACIENTE()
        //        {
        //            idPersona = idPersona,
        //            codPaciente = Persona.paciente.codPaciente,
        //            descripcion = Persona.paciente.descripcion,
        //            dniAcom = Persona.paciente.numeroDocumentoAcompañante,
        //            edadAcom = Persona.paciente.edadAcompañante,
        //            estado = Persona.paciente.estadoPaciente.ToString(),
        //            idAsegurado = idAsegurado,
        //            idFactorrh = Persona.paciente.idFactorRrh,
        //            idgpoSangre = Persona.paciente.idGrupoSanguineo,
        //            idPacConvenio = idConvenio,
        //            idtpPaciente = Persona.paciente.idTipoPaciente,
        //            nombreAcom = Persona.paciente.primerNombreAcompañante + " " + Persona.paciente.segundoNombreAcompañante + " " + Persona.paciente.apellidoPaternoAcompañante + " " + Persona.paciente.apellidoMaternoAcompañante,
        //            nrohc = Persona.paciente.nrohc
        //        });
        //        await Save();
        //        idPaciente = (await _context.T001_PACIENTE
        //            .FirstOrDefaultAsync(p => p.idPersona == idPersona)).idPaciente;
        //        await _context.D010_PACACOMPANA.AddAsync(new D010_PACACOMPANA()
        //        {
        //            tpDocumento = Persona.paciente.idTipoDocumentoAcompañante.ToString(),
        //            dniAcom = Persona.paciente.numeroDocumentoAcompañante,
        //            nombresAcom = Persona.paciente.primerNombreAcompañante + " " + Persona.paciente.segundoNombreAcompañante,
        //            apePatAcom = Persona.paciente.apellidoPaternoAcompañante,
        //            apeMatAcom = Persona.paciente.apellidoMaternoAcompañante,
        //            parentesco = Persona.paciente.idParentescoAcompañante.ToString(),
        //            idPersona = idPersona,
        //            estado = Persona.paciente.estadoAcompañante.ToString(),
        //            idPaciente = idPaciente
        //        });
        //        await Save();
        //        return "Ingreso Exitoso Paciente";
        //    }
        //    catch (Exception ex)
        //    {
        //        return "Error en el guardado " + ex.StackTrace;
        //    }
        //}
        //public async Task<string> UpdatePaciente(PersonaDTO Persona)
        //{
        //    try
        //    {
        //        if (Persona.paciente.idTipoPaciente == 120)//Compañia
        //        {
        //            _context.Update(new T001_PACASEGURADO()
        //            {
        //                idAsegurado = (int)Persona.paciente.idAsegurado,
        //                cobertura = Persona.paciente.coberturaCompañia,
        //                ordenAtenMed = Persona.paciente.ordenAtencionMedicaCompañia,
        //                nomAseguradora = Persona.paciente.nombreAseguradoraCompañia,
        //                codAsegurado = Persona.paciente.codAseguradoCompañia,
        //                poliza = Persona.paciente.polizaCompañia,
        //                idParentesco = Persona.paciente.idParentescoCompañia,
        //                idPaciente = Persona.paciente.idPaciente,
        //                estado = Persona.estado,
        //                idtpDocumento = Persona.idTipoDocumento,
        //                iniVigencia = Persona.paciente.inicioVigenciaCompañia,
        //                finVigencia = Persona.paciente.finVigenciaCompañia,
        //                tpPlanSalud = Persona.paciente.tpPlanSalud,
        //                nroplanSalud = Persona.paciente.numeroPlanSaludCompañia,
        //                estadoSeguro = Persona.paciente.estadoSeguro,
        //                tpAfiliacion = Persona.paciente.tpAfiliacion,
        //                fecAfiliacion = Persona.paciente.fecAfiliacion,
        //                codTitular = Persona.paciente.codTitular,
        //                moneda = Persona.paciente.moneda,
        //                nomContratante = Persona.paciente.nomContratante,
        //                dniContratante = Persona.numeroDocumento,
        //                planSalud = Persona.paciente.planSalud,
        //                codCobertura = Persona.paciente.codCobertura,
        //                beneficio = Persona.paciente.beneficio,
        //                restriccion = Persona.paciente.restriccion,
        //                copagoFijo = Persona.paciente.copagoFijo,
        //                copagoVariable = Persona.paciente.copagoVariable,
        //                finCarencia = Persona.paciente.finCarencia,
        //                convenio = Persona.paciente.convenio,
        //                descuento = Persona.paciente.descuento
        //            });
        //            await Save();
        //        }
        //        else if (Persona.paciente.idTipoPaciente == 121)//Convenio
        //        {
        //            _context.Update(new T001_PACCONVENIO()
        //            {
        //                idPacConvenio = (int)Persona.paciente.idAsegurado,
        //                cobertura = Persona.paciente.coberturaCompañia,
        //                idParentesco = Persona.paciente.idParentescoCompañia,
        //                idPaciente = Persona.paciente.idPaciente,
        //                estado = Persona.paciente.estadoConven.ToString(),
        //                idtpDocumento = Persona.idTipoDocumento,
        //                iniVigencia = Persona.paciente.inicioVigenciaCompañia,
        //                finVigencia = Persona.paciente.finVigenciaCompañia,
        //                tpAfiliacion = Persona.paciente.tpAfiliacion,
        //                fecAfiliacion = Persona.paciente.fecAfiliacion,
        //                codTitular = Persona.paciente.codTitular,
        //                moneda = Persona.paciente.moneda,
        //                nomContratante = Persona.paciente.nomContratante,
        //                dniContratante = Persona.numeroDocumento,
        //                beneficio = Persona.paciente.beneficio,
        //                restriccion = Persona.paciente.restriccion,
        //                copagoFijo = Persona.paciente.copagoFijo,
        //                copagoVariable = Persona.paciente.copagoVariable,
        //                estadoConvenio = Persona.paciente.estadoConvenio.ToString(),
        //                ordAtenMedica = Persona.paciente.ordenAtencionMedicaConvenio
        //            });
        //            await Save();
        //        }
        //        _context.Update(new T001_PACIENTE()
        //        {
        //            idPersona = Persona.idPersona,
        //            idPaciente = (int)Persona.paciente.idPaciente,
        //            codPaciente = Persona.paciente.codPaciente,
        //            descripcion = Persona.paciente.descripcion,
        //            dniAcom = Persona.paciente.numeroDocumentoAcompañante,
        //            edadAcom = Persona.paciente.edadAcompañante,
        //            estado = Persona.paciente.estadoPaciente.ToString(),
        //            idAsegurado = Persona.paciente.idAsegurado,
        //            idFactorrh = Persona.paciente.idFactorRrh,
        //            idgpoSangre = Persona.paciente.idGrupoSanguineo,
        //            idPacConvenio = Persona.paciente.idConvenio,
        //            idtpPaciente = Persona.paciente.idTipoPaciente,
        //            nombreAcom = Persona.paciente.primerNombreAcompañante + " " + Persona.paciente.segundoNombreAcompañante + " " + Persona.paciente.apellidoPaternoAcompañante + " " + Persona.paciente.apellidoMaternoAcompañante,
        //            nrohc = Persona.paciente.nrohc
        //        });
        //        await Save();
        //        _context.Update(new D010_PACACOMPANA()
        //        {
        //            tpDocumento = Persona.paciente.idTipoDocumentoAcompañante.ToString(),
        //            dniAcom = Persona.paciente.numeroDocumentoAcompañante,
        //            nombresAcom = Persona.paciente.primerNombreAcompañante + " " + Persona.paciente.segundoNombreAcompañante,
        //            apePatAcom = Persona.apellidoPaterno,
        //            apeMatAcom = Persona.apellidoMaterno,
        //            parentesco = Persona.paciente.idParentescoAcompañante.ToString(),
        //            idPersona = Persona.idPersona,
        //            estado = Persona.paciente.estadoAcompañante.ToString(),
        //            idPaciente = Persona.paciente.idPaciente
        //        });
        //        await Save();
        //        return "Actualizacion Exitosa Paciente";
        //    }
        //    catch (Exception ex)
        //    {
        //        return "Error en el guardado " + ex.StackTrace;
        //    }
        //}
        //public async Task<List<T001_PACIENTE>> GetAllPacientes()
        //{
        //    List<T001_PACIENTE> Pacientes = await (from p in _context.T001_PACIENTE
        //                                           join o in _context.T000_PERSONA on p.idPersona equals o.idPersona
        //                                           select new T001_PACIENTE
        //                                           {
        //                                               idPaciente = p.idPaciente,
        //                                               codPaciente = p.codPaciente,
        //                                               descripcion = p.descripcion,
        //                                               dniAcom = p.dniAcom,
        //                                               edadAcom = p.edadAcom,
        //                                               estado = p.estado,
        //                                               idAsegurado = p.idAsegurado,
        //                                               idFactorrh = p.idFactorrh,
        //                                               idgpoSangre = p.idgpoSangre,
        //                                               idPacConvenio = p.idPacConvenio,
        //                                               idPersona = p.idPersona,
        //                                               idtpPaciente = p.idtpPaciente,
        //                                               nombreAcom = p.nombreAcom,
        //                                               nrohc = p.nrohc
        //                                           }).ToListAsync();

        //    return Pacientes;
        //}
        //public async Task<PersonaDTO> GetByDni(int? Dni)
        //{
        //    PersonaDTO Persona = await (from p in _context.T000_PERSONA
        //                                join pa in _context.T001_PACIENTE on p.idPersona equals pa.idPersona
        //                                where p.dniPersona == Dni 
        //                                select new PersonaDTO
        //                                {
        //                                    primerNombre = p.primerNombre,
        //                                    segundoNombre = p.segundoNombre,
        //                                    apellidoPaterno = p.apePaterno,
        //                                    apellidoMaterno = p.apeMaterno,
        //                                    numeroDocumento = p.dniPersona,
        //                                    correo = p.correo,
        //                                    edad = p.edad,
        //                                    descripcionOcupacion = (from det in _context.D00_TBDETALLE where det.idDet == p.idOcupacion select det.descripcion).FirstOrDefault(),
        //                                    paciente = new PacienteDTO()
        //                                    {
        //                                        idPaciente = (from pa in _context.T001_PACIENTE
        //                                                      where pa.idPersona == p.idPersona
        //                                                      select pa.idPaciente).FirstOrDefault(),
        //                                        cita = new List<CitaDTO>()
        //                                    }
        //                                }).FirstOrDefaultAsync();
        //    if (Persona != null)
        //    {
        //        Persona.paciente.cita = (from c in _context.T068_CITA
        //                                 where c.idPaciente == Persona.paciente.idPaciente
        //                                 select new CitaDTO
        //                                 {
        //                                     idCita = c.idCita,
        //                                     nroCita = c.nroCita,
        //                                     idTipoCita = c.tipoCita,
        //                                     TipoCita = (from tb in _context.D00_TBDETALLE
        //                                             where tb.idDet == c.tipoCita
        //                                             select tb.descripcion).FirstOrDefault(),
        //                                     fecha = (c.fechaCita).Value.Date.ToString(),
        //                                     hora = (c.fechaCita).Value.ToString("H:mm"),
        //                                     consultorio = (from de in _context.D00_TBDETALLE
        //                                                    where de.idDet == c.idConsultorio
        //                                                    select de.descripcion).FirstOrDefault(),
        //                                     descripcion = (from sc in _context.T218_SERVICIOSCLI
        //                                                    where sc.idservicioCli == c.idservicioCli
        //                                                    select sc.descripcion).FirstOrDefault(),
        //                                     medico = (from cm in _context.D012_CRONOMEDICO
        //                                               join m in _context.T212_MEDICO on cm.idMedico equals m.idMedico
        //                                               join p in _context.T000_PERSONA on m.idPersona equals p.idPersona
        //                                               where cm.idProgramMedica == c.idProgramMedica
        //                                               select (p.primerNombre + " " + p.segundoNombre + " " + p.apePaterno + " " + p.apeMaterno)).FirstOrDefault(),
        //                                     especialidad = (from tb in _context.D00_TBDETALLE
        //                                                     join cm in _context.D012_CRONOMEDICO on c.idProgramMedica equals cm.idProgramMedica
        //                                                     join m in _context.T212_MEDICO on cm.idMedico equals m.idMedico
        //                                                     where tb.idDet == m.idEspecialidad
        //                                                     select tb.descripcion).FirstOrDefault(),
        //                                     precio = c.precio,
        //                                     igv = c.igv,
        //                                     estado = (from ec in _context.T109_ESTADOCITA where ec.idEstadoCita == c.idEstadoCita select ec.estado).FirstOrDefault(),
        //                                     estadoPago = (from ep in _context.D015_PAGO
        //                                                   where ep.idCita == c.idCita
        //                                                   select ep.estado).FirstOrDefault()
        //                                 }).ToList();
        //    }
        //    //for (int i = 0; i < Persona.paciente.cita.Count; i++)
        //    //{
        //    //    Persona.paciente.cita[i].especialidad = (from tb in _context.D00_TBDETALLE where tb.idDet == Persona.paciente.cita[i].idEspecialidad select tb.descripcion).FirstOrDefault();
        //    //}
        //    return Persona;
        //}
    }
}
