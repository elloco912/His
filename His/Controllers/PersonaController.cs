using His.DTO;
using His.Models;
using His.Repositories;
using System.Collections.Generic;
using System.Data.Entity.Infrastructure;
using System.Threading.Tasks;
using System.Web.Mvc;

namespace His.Controllers
{
    public class PersonaController : Controller
    {
        //    private readonly ClinicaServiceContext _context;
        private PersonaRepository _personaRepository = new PersonaRepository();
        private EmpleadoRepository _empleadorepository = new EmpleadoRepository();
        private CajaRepository _cajaRepository = new CajaRepository();
        private UsuarioRepository _usuarioRepository = new UsuarioRepository();

        // GET: Persona
        public async Task<ActionResult> Index()
        {
            if (TempData["mensajepersona"] != null)
            {
                ViewBag.message = TempData["mensajepersona"].ToString();
            }
            return View(_personaRepository.listarPersonas());
        }

        // GET: Persona/Details/5
        public async Task<ActionResult> Details(int? id)
        {
            if (id == null)
            {
                return HttpNotFound();
            }

            var persona = _personaRepository.listarxIdPersona((int)id);
            if (persona == null)
            {
                return HttpNotFound();
            }

            return View(persona);
        }

        // GET: Persona/Create
        public async Task<ActionResult> Create()
        {
            //var lespecialidads = await _utilrepository.GetTipo("Especialidad");
            //ViewBag.listaespecialidades = lespecialidads;

            //combo tipo de empleado
            //var tipoEmpleados = await _utilrepository.GetTipo("Tipo Empleado");
            //ViewBag.lsttipoempleado = tipoEmpleados;
            return View();
        }

        // POST: Persona/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Create(PersonaDTO personaDTO)
        {
            if (personaDTO != null)
            {
                TempData["mensajepersona"] = _personaRepository.insertarPersona(personaDTO);
                return RedirectToAction(nameof(Index));
            }
            return RedirectToAction("Create");
        }


        // POST: Persona/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        public async Task<ActionResult> Editar(int? idpersona)
        {
            //var lespecialidads = await _utilrepository.GetTipo("Especialidad");
            //ViewBag.listaespecialidades = lespecialidads;

            //combo tipo de empleado
            //var tipoEmpleados = await _utilrepository.GetTipo("Tipo Empleado");
            //ViewBag.lsttipoempleado = tipoEmpleados;

            PersonaDTO persona = _personaRepository.listarxIdPersona((int)idpersona);
            return PartialView("Edit", persona);
        }


        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Edit(int? id, PersonaDTO personaDTO)
        {
            if (personaDTO != null)
            {
                try
                {
                    TempData["mensajepersona"] = _personaRepository.actualizarPersona(personaDTO);
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (_personaRepository.listarxIdPersona((int)personaDTO.idPersona) != null)
                    {
                        return HttpNotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            return View(personaDTO);
        }

        // GET: Persona/Delete/5
        public async Task<ActionResult> Delete(int id)
        {
            if (id == null)
            {
                return HttpNotFound();
            }

            var persona = _personaRepository.listarxIdPersona(id);
            if (persona == null)
            {
                return HttpNotFound();
            }

            return PartialView(persona);
        }

        // POST: Persona/Delete/5
        [HttpPost, ActionName("Delete")]
        // [ValidateAntiForgeryToken]
        public async Task<ActionResult> DeleteConfirmed(PersonaDTO personadto)
        {
            var persona =_personaRepository.listarxIdPersona((int)personadto.idPersona);
            _personaRepository.eliminarPersona(personadto.idPersona);
            return RedirectToAction(nameof(Index));
        }

        public async Task<ActionResult> Asignar(int? id)
        {
            //var tipoEmpleados = await _utilrepository.GetTipo("Tipo Empleado");
            //ViewBag.lsttipoempleado = tipoEmpleados;

            //List<D024_CAJA> cajas = await _utilrepository.getCajas();
            //ViewBag.lscaja = cajas;

            PersonaDTO persona = _empleadorepository.listarxIdEmpleado((int)id);
            return PartialView(persona);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Asignar(PersonaDTO personaDTO)
        {
            if (personaDTO.personal.idEmpleado != null)
            {
                try
                {
                    if (personaDTO.asignacion.idCaja != null)
                    {
                        //await _cajaRepository.AsignaCaja(personaDTO);
                    }
                    if (personaDTO.asignacion.claveUser != null)
                    {
                        TempData["mensajepersona"] = _usuarioRepository.insertarUsuario(personaDTO);

                    }
                }
                catch (DbUpdateConcurrencyException)
                {
                    //if (await _usuarioRepository.UsuarioExists(personaDTO.personal.idEmpleado))
                    //{
                    //    return HttpNotFound();
                    //}
                    //else
                    //{
                    //    throw;
                    //}
                }
                return RedirectToAction(nameof(Index));
            }
            return View();
        }
    }

}
