using His.DTO;
using His.Repositories;
using System;
using System.Collections.Generic;
using System.Data.Entity.Infrastructure;
using System.Threading.Tasks;
using System.Web.Mvc;

namespace His.Controllers
{
    public class PacienteController : Controller
    {
        private PersonaRepository _personaRepository = new PersonaRepository();
        private PacienteRepository _pacienteRepository = new PacienteRepository();
        private DetalleRepository _detalleRepository = new DetalleRepository();


        public async Task<ActionResult> Index()
        {
            if (TempData.ContainsKey("mensajecita"))
            {
                ViewBag.message = TempData["mensajecita"].ToString();
            }
            if (TempData.ContainsKey("dni"))
            {
                var dni = TempData["dni"].ToString();
                //ToDo:terminar esto
                //PersonaDTO personaDTO = _pacienteRepository.listarxDni(Convert.ToInt32(dni));
                //return View(personaDTO);
            }
            return View();

        }

        [HttpPost]
        public async Task<ActionResult> Index(int dni)
        {
            //ToDo:terminar esto
            //PersonaDTO personaDTO = _pacienteRepository.listarxDni(dni);
            //return View(personaDTO);
            return View();
        }

        // GET: Paciente/Details/5
        public async Task<ActionResult> Details(int? id)
        {
            if (id == null)
            {
                return HttpNotFound();
            }

            var paciente =  _pacienteRepository.listarxDni((int)id);
            if (paciente == null)
            {
                return HttpNotFound();
            }

            return View(paciente);
        }

        // GET: Paciente/Create
        public async Task<ActionResult> Create()
        {
            var lsttipsexo = new Object();
            lsttipsexo = _detalleRepository.listarxDetallexNombreGeneral("sexo");
            ViewBag.lssexo = lsttipsexo;

            var lsgrdinstruccion = new Object();
            lsgrdinstruccion = _detalleRepository.listarxDetallexNombreGeneral("grado instruccion");
            ViewBag.lgrdinst = lsgrdinstruccion;

            var ocupacion = new Object();
            ocupacion = _detalleRepository.listarxDetallexNombreGeneral("Ocupacion");
            ViewBag.locupacion = ocupacion;

            var gruposangre = new Object();
            gruposangre = _detalleRepository.listarxDetallexNombreGeneral("Grupo Sangre");
            ViewBag.lgpsangre = gruposangre;

            var factrh = new Object();
            factrh = _detalleRepository.listarxDetallexNombreGeneral("Factor RH");
            ViewBag.lfh = factrh;

            var parentesco = new Object();
            parentesco = _detalleRepository.listarxDetallexNombreGeneral("Parentesco");
            ViewBag.lparentesco = parentesco;

            var tipovia = new Object();
            tipovia = _detalleRepository.listarxDetallexNombreGeneral("Tipo Via");
            ViewBag.ltipovia = tipovia;

            var tippac = new Object();
            tippac = _detalleRepository.listarxDetallexNombreGeneral("Tipo Paciente");
            ViewBag.ltippac = tippac;

            var estadocivil = new Object();
            estadocivil = _detalleRepository.listarxDetallexNombreGeneral("Estado Civil");
            ViewBag.lestcivil = estadocivil;

            var tipdoc = new Object();
            tipdoc = _detalleRepository.listarxDetallexNombreGeneral("Tipo Documento");
            ViewBag.ltipdoc = tipdoc;

            return View();
        }

        // POST: Paciente/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Create(PersonaDTO persona)
        {
            if (persona != null)
            {
                TempData["dni"] = persona.numeroDocumento;
                TempData["mensajecita"] = _personaRepository.insertarPersona(persona);
                return RedirectToAction(nameof(Index));
            }
            return View(persona);
        }

        // GET: Paciente/Edit/5
        public async Task<ActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return HttpNotFound();
            }

            var paciente = _pacienteRepository.listarxDni((int)id);
            if (paciente == null)
            {
                return HttpNotFound();
            }
            return View(paciente);
        }

        // POST: Paciente/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Edit(int id, PersonaDTO persona)
        {
            if (id != persona.paciente.idPaciente)
            {
                return HttpNotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                     _personaRepository.actualizarPersona(persona);
                }
                catch (DbUpdateConcurrencyException)
                {
                    //if (!(await _pacienteRepository.PacienteExists(persona.paciente.idPaciente)))
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
            return View(persona);
        }

        // GET: Paciente/Delete/5
        public async Task<ActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return HttpNotFound();
            }

            var paciente = _pacienteRepository.listarxDni((int)id);
            if (paciente == null)
            {
                return HttpNotFound();
            }

            return View(paciente);
        }

        // POST: Paciente/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> DeleteConfirmed(int id)
        {
            var paciente = _pacienteRepository.listarxDni((int)id);
            _pacienteRepository.eliminarPaciente(id);
            return RedirectToAction(nameof(Index));
        }


        public ActionResult Pago()
        {
            return View();
        }
    }
}
