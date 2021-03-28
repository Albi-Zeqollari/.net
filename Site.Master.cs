using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace projekti
{
    public partial class Site : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string url = Request.Url.AbsoluteUri;
            if (url.Contains("Aboutus.aspx"))
            {
                pagebody.Attributes.Add("class", "about-page");
            }
            else if (url.Contains("contact.aspx"))
            {
                pagebody.Attributes.Add("class", "contact-page");
            }
            Response.Write("<script>console.log(\" " + url.Contains("Aboutus.aspx") + " \");</script>");
        }
    }
}