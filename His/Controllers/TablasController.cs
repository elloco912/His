using His.Models;
using His.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace His.Controllers
{
    public class TablasController : Controller
    {
        private readonly DetalleRepository _detalleRepository = new DetalleRepository();
        private readonly GeneralRepository _generalRepository = new GeneralRepository();
        // GET: Detalle
        public ActionResult Index()
        {
            return View(_generalRepository.listarGenerals());
        }

        // GET: Detalle/Details/5
        public ActionResult Details(int? id)
        {
            var d00_TB = _generalRepository.listarxIdGeneral((int)id);
            if (d00_TB == null)
            {
                return HttpNotFound();
            }

            return View(d00_TB);
        }

        // GET: Detalle/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Detalle/Create
        [HttpPost]
        public ActionResult Create(FormCollection collection)
        {
            try
            {
                // TODO: Add insert logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Detalle/Edit/5

        public ActionResult AgregarTipo()
        {
            return PartialView();
        }

        [HttpPost]
        public ActionResult AgregarTipo(D00_TBGENERAL modelo)
        {
            TempData["mensajetipo"] = _generalRepository.insertarGeneral(modelo);
            return RedirectToAction("Index", "Tablas");
        }

        public ActionResult EditarTipo(int? id)
        {
            if (id == null)
            {
                return HttpNotFound();
            }
            D00_TBGENERAL general = _generalRepository.listarxIdGeneral(id);
            return PartialView(general);
        }

        [HttpPost]
        public ActionResult EditarTipo(int id)
        {
            D00_TBGENERAL general = _generalRepository.listarxIdGeneral(id);
            var mensaje = _generalRepository.actualizarGeneral(general);
            TempData["mensajetipo"] = mensaje;
            return RedirectToAction("Index", "Tablas");
        }

        public ActionResult Actualizar(int id)
        {
            return View();
        }

        // POST: Detalle/Edit/5
        [HttpPost]
        public ActionResult Actualizar(int id, FormCollection collection)
        {
            try
            {
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Detalle/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return HttpNotFound();
            }

            var d00_TBDETALLE = _generalRepository.listarxIdGeneral(id);
            if (d00_TBDETALLE == null)
            {
                return HttpNotFound();
            }

            return View(d00_TBDETALLE);
        }

        // POST: Detalle/Delete/5
        [HttpPost]
        public ActionResult Delete(int id)
        {
            _generalRepository.eliminarGeneral(id);
            return RedirectToAction(nameof(Index));
        }
    }
}
