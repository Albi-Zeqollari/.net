using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Xml.Linq;
using System.Web.Security;

namespace projekti
{

  

    public partial class contact : System.Web.UI.Page
    {
        SqlCommand cmd1 = new SqlCommand();
        SqlConnection con2 = new SqlConnection();


      
        protected void Page_Load(object sender, EventArgs e)
        {
            con2.ConnectionString = @"Data Source=DESKTOP-KHMSUE2\SQLEXPRESS;Initial Catalog=Projekt1DB;Integrated Security=True";
            con2.Open();

        }

        protected void btnsignup_Click(object sender, EventArgs e)
        {

            try
            {


           
            SqlCommand cmd1 = new SqlCommand("insert into contact " + "(Email,Username,Reasons,Text)values(@Email,@Username,@Reasons,@Text)", con2);



            cmd1.Parameters.AddWithValue("@Email", txtname.Text);
            cmd1.Parameters.AddWithValue("@Username", txtusername1.Text);
            cmd1.Parameters.AddWithValue("@Reasons", DropDownList1.SelectedItem.ToString());
            cmd1.Parameters.AddWithValue("@Text", Txt.Text.ToString());
            cmd1.ExecuteNonQuery();

            Response.Redirect("WebForm1.aspx");
            }
            catch
            {

                Label7.Text = "You already submitet the from";
            }
        }
    }
}