﻿using His.Models;
using His.Repositories;
using System.Web.Mvc;
using static His.Repositories.UtilRepository;

namespace His.Controllers
{
    public class LoginController : Controller
    {
        UsuarioRepository usuarioRepository = new UsuarioRepository(); 
        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Index(D001_USUARIO usu)
        {
            ValidacionLogueo user = usuarioRepository.logueo(usu.loginUser,usu.claveUser);
            //var user = "";
            if (user.valida)
            {
                //  HttpContext.Session.SetString("nombreusuario", user.loginUser);
                return RedirectToAction("Index", "Home");
            }
            ViewBag.error = user.mensaje;
            return View();
        }
    }
}