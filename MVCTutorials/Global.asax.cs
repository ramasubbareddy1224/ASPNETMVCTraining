using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Optimization;
using System.Web.Routing;

namespace MVCTutorials
{
    public class MvcApplication : System.Web.HttpApplication
    {
        protected void Application_Start()
        {
           // CustomFilterConfig.LoadFilters(GlobalFilters.Filters);
            CustomRouteConfig.LoadRoutes(RouteTable.Routes);
            CustomBundleConfig.BundleMVC(BundleTable.Bundles);
           

        }
    }
}
