using System;
using System.Collections.Generic;
using System.Web.Mvc;
using His.Models;
using His.Repositories;
using HistClinica.Repositories.Repositories;

namespace His.Controllers
{
    public class CronogramaController : Controller
    {
        private readonly CronoMedicoRepository cronoMedicoRepository = new CronoMedicoRepository();
        private readonly DetalleRepository detalleRepository = new DetalleRepository();
        private readonly MedicoRepository medicoRepository = new MedicoRepository();


        public ActionResult Index()
        {

            string[] horas = new string[] { "1:00", "2:00", "3:00", "4:00", "5:00", "6:00", "7:00", "8:00", "9:00", "10:00", "11:00", "12:00", "13:00", "14:00", "15:00", "16:00", "17:00", "18:00", "19:00", "20:00", "21:00", "22:00", "23:00", "24:00" };


            //combo consultorios
            var lconsultorio = detalleRepository.listarxDetallexNombreGeneral("Consultorio");
            ViewBag.listaconsultorio = lconsultorio;

            //combo especialidades
            var lespecialidads = detalleRepository.listarxDetallexNombreGeneral("Especialidad");
            ViewBag.listaespecialidades = lespecialidads;

            //combo horas
            ViewBag.listahoras = horas;

            //combo medicos
          /*  var medico = medicoRepository.listarMedicos();
            ViewBag.listamedicos = medico;*/

            //listar
            List<D012_CRONOMEDICO> cronograma = new List<D012_CRONOMEDICO>();
            cronograma = cronoMedicoRepository.listarCronoMedicos();

            if (TempData["mensaje"] != null)
            {
                ViewBag.message = TempData["mensaje"].ToString();
            }

            return View(cronograma);
        }

       /* public async Task<JsonResult> GetEspecialidad(int id)
        {
            var newlistespe = await _utilrepository.GetEspecialidad(id);
            // ViewBag.listaespecialidades = newlistespe;
            return Json(newlistespe);
        }*/

        public ActionResult Create(D012_CRONOMEDICO cronoMedico)
        {
            if (cronoMedico != null)
            {
                TempData["mensaje"] = cronoMedicoRepository.insertarCronoMedico(cronoMedico);
                return RedirectToAction("Index");
            }
            return PartialView();
        }

        public ActionResult Delete(int id)
        {

            D012_CRONOMEDICO cronograma = cronoMedicoRepository.listarxIdCronoMedico(id);
            return PartialView(cronograma);
        }

        [HttpPost, ActionName("Delete")]
        public ActionResult DeletePost(D012_CRONOMEDICO cronograma)
        {

          cronoMedicoRepository.eliminarCronoMedico(cronograma.idProgramMedica);
            return RedirectToAction("Index");
        }

        public ActionResult Details(int id)
        {

            D012_CRONOMEDICO cronoMedico = cronoMedicoRepository.listarxIdCronoMedico(id);

            return PartialView(cronoMedico);
        }

        public ActionResult Editar(int id)
        {
            string[] horas = new string[] { "1:00", "2:00", "3:00", "4:00", "5:00", "6:00", "7:00", "8:00", "9:00", "10:00", "11:00", "12:00", "13:00", "14:00", "15:00", "16:00", "17:00", "18:00", "19:00", "20:00", "21:00", "22:00", "23:00", "24:00" };

            //combo consultorios
            var lconsultorio = detalleRepository.listarxDetallexNombreGeneral("Consultorio");
            ViewBag.listaconsultorio = lconsultorio;

            //combo especialidades
            var lespecialidads = detalleRepository.listarxDetallexNombreGeneral("Especialidad");
            ViewBag.listaespecialidades = lespecialidads;

            //combo estado
            var estado = new Object();
            estado = detalleRepository.listarxDetallexNombreGeneral("EstadoCronograma");
            ViewBag.lestado = estado;

            //combo medicos
            var medico = medicoRepository.listarMedicos();
            ViewBag.listamedicos = medico;

            ViewBag.listahoras = horas;

            D012_CRONOMEDICO cronoMedico = cronoMedicoRepository.listarxIdCronoMedico(id);

            return PartialView("Edit", cronoMedico);

        }

        [HttpPost]
        public ActionResult Edit(D012_CRONOMEDICO cronoMedico)
        {
            if (ModelState.IsValid)
            {
                TempData["mensaje"] = cronoMedicoRepository.actualizarCronoMedico(cronoMedico);
                return RedirectToAction("Index");
            }
            return PartialView();
        }

      /*  [HttpGet]
        public async Task<IActionResult> ConsultarCronograma()
        {
            List<CronogramaDTO> cronograma = new List<CronogramaDTO>();
            cronograma = await cronogramaRepository.GetAllCronogramasConsulta();

            //filtro de medico
            var medico = await _utilrepository.GetMedicos();
            ViewBag.listamedicos = medico;

            return PartialView(cronograma);
        }

        public async Task<IActionResult> ConsultarCronogramapost(int id)
        {
            var medico = await _utilrepository.GetMedicos();
            ViewBag.listamedicos = medico;

            List<CronogramaDTO> cronograma = new List<CronogramaDTO>();
            cronograma = await cronogramaRepository.GetCronogramaByMedico(id);
            return PartialView("ConsultarCronograma", cronograma);
        }

    */
    }
}