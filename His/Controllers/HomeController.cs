using System.Diagnostics;
using System.Web.Mvc;

namespace His.Controllers
{
    public class HomeController : Controller
    {
        //private readonly ILogger<HomeController> _logger;

        //public HomeController(ILogger<HomeController> logger)
        //{
        //    _logger = logger;
        //}

        public ActionResult Index()
        {
            string nombre = Session["nombreusuario"] as string;
            ViewBag.nombre = nombre;
            return View();
        }

        public ActionResult Privacy()
        {
            return View();
        }

        public ActionResult Menu()
        {
            return PartialView();
        }

        //[ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        //public IActionResult Error()
        //{
        //    return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        //}
    }
}
