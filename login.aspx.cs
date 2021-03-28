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
    public partial class login : System.Web.UI.Page
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
                SqlCommand cmd1 = new SqlCommand("insert into usertbl " + "(Email,Username,Password)values(@Email,@Username,@Password)", con2);

                string EncryptedPassword = FormsAuthentication.HashPasswordForStoringInConfigFile(txtpassword1.Text, "SHA1");

                cmd1.Parameters.AddWithValue("@Email", txtname.Text);
                cmd1.Parameters.AddWithValue("@Username", txtusername1.Text);
                cmd1.Parameters.AddWithValue("@Password", EncryptedPassword);
                cmd1.ExecuteNonQuery();


                Label1.Text = "Sign in was succesfull.Please log in!";

               

            }

            catch
            {

                Label7.Text = "This email is already registered";

            }


          

           

        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {

            //per adminin
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-KHMSUE2\SQLEXPRESS;Initial Catalog=Projekt1DB;Integrated Security=True");

            con.Open();

            string query = "select count(*) from admintbl where username = @Username and password = @Password and Usertype=@Usertype";
            SqlCommand sqlcmd = new SqlCommand(query, con);

            sqlcmd.Parameters.AddWithValue("@Username", txtusername.Text.Trim());
            sqlcmd.Parameters.AddWithValue("@Password", txtpassword.Text.Trim());
            sqlcmd.Parameters.AddWithValue("@Usertype", DropDownList1.SelectedItem.ToString());

            int count1 = Convert.ToInt32(sqlcmd.ExecuteScalar());


          
            ///



            ////per userin

            SqlConnection con1 = new SqlConnection(@"Data Source=DESKTOP-KHMSUE2\SQLEXPRESS;Initial Catalog=Projekt1DB;Integrated Security=True");
            con1.Open();
            string query1 = "select count(*) from usertbl where username = @Username and password = @Password";
            SqlCommand sqlcmd1 = new SqlCommand(query1, con1);
            string encryptedpassword = FormsAuthentication.HashPasswordForStoringInConfigFile(txtpassword.Text, "SHA1");
            sqlcmd1.Parameters.AddWithValue("@Username", txtusername.Text.Trim());
            sqlcmd1.Parameters.AddWithValue("@Password", encryptedpassword.Trim());
            int count = Convert.ToInt32(sqlcmd1.ExecuteScalar());


            ////

            if (DropDownList1.SelectedIndex == 0 && count == 1)
            {


                Session["Username"] = txtusername.Text.Trim();


                Response.Redirect("WebForm1.aspx");

            }

            else if (DropDownList1.SelectedIndex == 1 && count1 == 1)
            {



                Response.Redirect("admin.aspx");
            }

            else
            {


                Label3.Visible = true;

                Label3.Text = "Incorrect username or password";
            }



        }

     


        protected void Button1_Click1(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("WebForm1.aspx");
        }
    }
}