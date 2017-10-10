using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;

namespace MVCTutorials
{
    public class CustomBundleConfig
    {
        public static void BundleMVC(BundleCollection bundle)
        {
            StyleBundle styles = new StyleBundle("~/Content/css");
            styles.Include("~/Content/bootstrap.css", "~/Content/site.css");

            ScriptBundle scripts = new ScriptBundle("~/Scripts/script");
            scripts.Include("~/Scripts/jquery-{version}.js",
                "~/Scripts/jquery.validate*",
                "~/Scripts/modernizr-*",
                "~/Scripts/bootstrap.js",
                "~/Scripts/respond.js");


            bundle.Add(styles);
            bundle.Add(scripts);
        }
    }
}