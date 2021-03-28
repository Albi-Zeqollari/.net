using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace projekti
{
    public partial class admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
       
           

            using(Projekt1DBEntities2 entities2 = new Projekt1DBEntities2())
            {


                var info = from p in entities2.contacts
                           select p;

                DataList1.DataSource = info.ToList();
                DataList1.DataBind();
            }







            using(Projekt1DBEntities2 entities2 = new Projekt1DBEntities2())
            {


                var info2 = from x in entities2.usertbls
                            select x;

               

                DataList2.DataSource = info2.ToList();
                DataList2.DataBind();

            }
        
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }

   
   
       
     

        protected void Button3_Click(object sender, EventArgs e)
        {
            using (Projekt1DBEntities2 entities2 = new Projekt1DBEntities2())
            {
                Button button = (Button)sender;
                string buttonId = button.Attributes["dataEmail"].ToString();
                //Response.Write("<script>console.log(\" " + button.Attributes["dataEmail"].ToString() + " \");</script>");
                
                                var info3 = (from z in entities2.usertbls

                                            where z.Email == buttonId
                                             select z).SingleOrDefault();

                try
                {
                    entities2.usertbls.Remove(info3);
                    entities2.SaveChanges();
                    Response.Redirect("admin.aspx");
                }
                catch
                {
                    
                    // Provide for exceptions.
                }

                
            }
        }

       
    }
}