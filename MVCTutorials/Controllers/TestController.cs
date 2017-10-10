using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MVCTutorials.Controllers
{
    public class TestController : Controller
    {
        [HttpGet]
        public string PrintPragim()
        {
            string s = "Pragim Technologies";
            return s;
           // message("hyd");
        }

        [HttpGet]
        public string message(string id1)
        {
           // int number = id;
            return "Hello Good Morning, :" +id1;
        }

        public string messageRoute()
        {
            
            return "Hello Good Moring, :"+RouteData.Values["id"];
        }

        public ViewResult Index()
        {
            ViewData["Name"] = "Pragim Technologies";
            ViewData["Location"] = "Hyderabad";
            ViewData["Today"] = DateTime.Now;
            ViewData["LayoutData"] = "Layout Data";
            ViewData["Title"] = "Index Title";

            ViewBag.VBName = "VB Pragim Technologies";
            ViewBag.VBToday = DateTime.Now;

           // string title = ViewData["Title"].ToString();


            return View();
        }
        public ViewResult About()
        {
            throw new Exception("error occured");
            ViewData["Title"] = "About Title";
            return View();
        }
       
        public ViewResult Contact()
        {
            return View();
        }
        public ActionResult Razor()
        {
            return View();
        }
        public ActionResult FullPage()
        {
            return View();
        }

        public ActionResult PartailView1()
        {
            return PartialView();
        }
        public ActionResult PartailView2()
        {
            // return PartialView("~/Views/Shared/PartailView2.cshtml");
            return PartialView();
        }

        [ChildActionOnly]
        public ActionResult PartailView3()
        {
            return PartialView();
        }
    }

    //  BaseClass (ActionResult) and Derived Class (ViewResult)
    // BaseClass b=new BaseClass();    // True
    // DerivedClass d=new DerivedClass();  // True
    // BaseClass b=new DerivedClass();   // True  ActionResult a=new ViewResult();
    // DerivedClass d=new BaseClass();   // False

}