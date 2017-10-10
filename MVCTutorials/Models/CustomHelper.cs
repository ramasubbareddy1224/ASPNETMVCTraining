using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MVCTutorials.Models
{
    public static class CustomHelper
    {
        public static HtmlString LabelWithBold(this HtmlHelper helper, string content)
        {
            string htmlString = String.Format("<label><strong>{0}</strong></label>", content);
            HtmlString htmStringObj = new HtmlString(htmlString);
            return htmStringObj;
        }
        public static HtmlString DivWithBackGround(this HtmlHelper helper,string color)
        {
            string htmlString = string.Format("<div width='200px' height='400px' style='background-color:{0}'>Hi</div>",color);
            return new HtmlString(htmlString);

        }
        public static HtmlString LabelWithBold(string content)
        {
            string htmlString = String.Format("<label><strong>{0}</strong></label>", content);
            HtmlString htmStringObj = new HtmlString(htmlString);
            return htmStringObj;
        }
        //public static string LabelWithBoldString(this HtmlHelper helper, string content)
        //{
        //    string htmlString = String.Format("<label><strong>{0}</strong></label>", content);
        //    return htmlString;
        //}
    }
}