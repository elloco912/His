using His.DTO;
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
            if (TempData["mensajetipo"] != null)
            {
                ViewBag.message = TempData["mensajetipo"].ToString();
            }
            return View(_generalRepository.listarGenerals());
        }

        [HttpPost]
        public ActionResult Index(string codigo)
        {
            if (codigo == "")
            {
             return RedirectToAction("Index");
            }
            List<D00_TBGENERAL> modelo = _generalRepository.listarxCodigoGeneral(codigo);
            return View(modelo);
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
        public ActionResult EditarTipo(D00_TBGENERAL modelo)
        {
           // D00_TBGENERAL general = _generalRepository.listarxIdGeneral(id);
            var mensaje = _generalRepository.actualizarGeneral(modelo);
            TempData["mensajetipo"] = mensaje;
            return RedirectToAction("Index", "Tablas");
        }

      

        // POST: Detalle/Edit/5
     
        public ActionResult VistaDetalle(int? id)
        {
            if (id == null)
            {
                return HttpNotFound();
            }
            if (TempData["mensajedetalle"] != null)
            {
                ViewBag.message = TempData["mensajedetalle"].ToString();
            }
            DetalleDTO dto = _detalleRepository.GetDetalle(id);
            return View(dto);
        }

        [HttpPost]
        public ActionResult VistaDetalle()
        {
            return View();
        }

        public ActionResult AgregarDetalle(int id)
        {
            var model = _generalRepository.listarxIdGeneral(id);
            D00_TBDETALLE detalle = new D00_TBDETALLE();
            detalle.idTab = model.idTab;
            return PartialView(detalle);
        }

        [HttpPost]
        public ActionResult AgregarDetalle(D00_TBDETALLE modelo)
        {
            TempData["mensajedetalle"] = _detalleRepository.insertarDetalle(modelo);
            return RedirectToAction("VistaDetalle",  new { id = modelo.idTab });
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
        public ActionResult EditarDetalle(D00_TBDETALLE modelo)
        {
            var mensaje = _detalleRepository.actualizarDetalle(modelo);
            TempData["mensajedetalle"] = mensaje;
            return RedirectToAction("VistaDetalle", new { id = modelo.idTab });
        }

        // GET: Detalle/Delete/5
        public ActionResult DeleteTipo(int id)
        {
            D00_TBGENERAL general = _generalRepository.listarxIdGeneral(id);
            return PartialView(general);
        }

        // POST: Detalle/Delete/5
        [HttpPost]
        public ActionResult DeleteTipo(D00_TBGENERAL modelo, FormCollection collection)
        {
            try
            {
                TempData["mensajetipo"] = _generalRepository.eliminarGeneral(modelo.idTab);

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        public ActionResult DeleteDetalle(int id)
        {
            D00_TBDETALLE detalle = _detalleRepository.listarxIdDetalle(id);
            return PartialView(detalle);
        }

        // POST: Detalle/Delete/5
        [HttpPost]
        public ActionResult DeleteDetalle (D00_TBDETALLE modelo)
        {
            try
            {
                TempData["mensajedetalle"] = _detalleRepository.eliminarDetalle(modelo.idDet);

                return RedirectToAction("VistaDetalle", new { id = modelo.idTab });
            }
            catch
            {
                return View();
            }
        }
    }
}
