using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ProjetoWebSite.Controllers
{
    public class PaginaInicialController : Controller
    {
        // GET: PaginaInicial
        public ActionResult Index()
        {
            if (Session["idusuario"] == null)
            {
                return RedirectToAction("Index", "Home");
            }

            int IdUsuario = Convert.ToInt16(Session["idusuario"]);

            return View();
        }

        public ActionResult DeslogarSistema()
        {
            Session["idusuario"] = null;
            return RedirectToAction("Index", "Home");
        }


    }
}