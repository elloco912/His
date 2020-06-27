using His.Models;
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
                ViewBag.error = user.mensaje;
                Session["nombreusuario"] = "Bertol Franco Palacios";
                return RedirectToAction("Index", "Panel");
            }
            ViewBag.error = user.mensaje;
            return View();
        }
    }
}