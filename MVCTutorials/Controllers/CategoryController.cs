using ShoppingCart.BusinessModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MVCTutorials.Controllers
{
    public class CategoryController : Controller
    {
        // GET: Category
        public ActionResult Index()
        {
            return View();
        }

        public List<CategoryBO> GetCategories()
        {
            List<CategoryBO> categories;

            using (var context = new ShoppingCartDBContext())
            {
                categories = context.Categories.ToList();
            }
            return categories;
        }



    }
}