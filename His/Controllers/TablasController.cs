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
            return View(_generalRepository.listarDetalles());
        }

        // GET: Detalle/Details/5
        public ActionResult Details(int? id)
        {
            return View(_detalleRepository.listarxIdDetalle((int)id));
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
            TempData["mensajetipo"] = _generalRepository.insertarDetalle(modelo);
            return RedirectToAction("Index", "Tablas");
        }

        public ActionResult EditarTipo(int? id)
        {
            if (id == null)
            {
                return HttpNotFound();
            }
            D00_TBGENERAL general = _generalRepository.listarxIdDetalle(id);
            return PartialView(general);
        }

        [HttpPost]
        public ActionResult EditarTipo(int id)
        {
            D00_TBGENERAL general = _generalRepository.listarxIdDetalle(id);
            var mensaje = _generalRepository.actualizarDetalle(general);
            TempData["mensajetipo"] = mensaje;
            return RedirectToAction("Index", "Tablas");
        }

        public ActionResult VistaDetalle()
        {
            
            return View();
        }

        // POST: Detalle/Edit/5
        [HttpPost]
        public ActionResult VistaDetalle(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        public ActionResult AgregarDetalle()
        {
            return PartialView();
        }

        [HttpPost]
        public ActionResult AgregarDetalle(D00_TBDETALLE modelo)
        {
            TempData["mensajedetalle"] = _detalleRepository.insertarDetalle(modelo);
            return RedirectToAction("Index", "VistaDetalle");
        }

        public ActionResult EditarDetalle(int? id)
        {
            if (id == null)
            {
                return HttpNotFound();
            }
            D00_TBDETALLE detalle = _detalleRepository.listarxIdDetalle(id);
            return PartialView(detalle);
        }

        [HttpPost]
        public ActionResult EditarDetalle(int id)
        {
            D00_TBDETALLE detalle = _detalleRepository.listarxIdDetalle(id);
            var mensaje = _detalleRepository.actualizarDetalle(detalle);
            TempData["mensajedetalle"] = mensaje;
            return RedirectToAction("Index", "VistaDetalle");
        }

        // GET: Detalle/Delete/5
        public ActionResult DeleteTipo(int id)
        {
            D00_TBGENERAL general = _generalRepository.listarxIdDetalle(id);
            return PartialView(general);
        }

        // POST: Detalle/Delete/5
        [HttpPost]
        public ActionResult DeleteTipo(int id, FormCollection collection)
        {
            try
            {
                _generalRepository.eliminarDetalle(id);

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        public ActionResult DeleteDetalle(int id)
        {
            D00_TBGENERAL general = _generalRepository.listarxIdDetalle(id);
            return PartialView(general);
        }

        // POST: Detalle/Delete/5
        [HttpPost]
        public ActionResult DeleteDetalle (int id, FormCollection collection)
        {
            try
            {
                _generalRepository.eliminarDetalle(id);

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
