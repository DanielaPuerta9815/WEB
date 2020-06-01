using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using SaludAtuAlcance.Models;

namespace SaludAtuAlcance.Controllers
{
   
        public class HomeController : Controller
        {

        public ActionResult IndexPaciente()
        {
            return View();
        }
         //trae datos y los pinta en el view
        /*public ActionResult GetList()
        {
            using (DBModels db = new DBModels())
            {
                var empList = db.Employees.ToList<Employee>();
                return Json(new { data = empList }, JsonRequestBehavior.AllowGet);
            }

        }*/ 

    }
}