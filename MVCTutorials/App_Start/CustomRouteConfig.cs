using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace MVCTutorials
{
    public class CustomRouteConfig
    {
        public static void LoadRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

            routes.MapRoute(
                name: "MyRoute",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "test", action = "Index",id=UrlParameter.Optional}
                //constraints: new {id="^h.*" }

                );
            
        }
    }
}