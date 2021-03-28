using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using Newtonsoft.Json;

namespace projekti
{
    public partial class WebForm1 : System.Web.UI.Page
    {

        public object SubmitBtn { get; private set; }
        string[] searches = { "Pizza", "pinnata", "potato", "chicken", "griiled chicken", "meow" };

        protected void Page_Load(object sender, EventArgs e)
        {
            /*
            string url = Request.Url.AbsoluteUri;
            HtmlGenericControl formurl = (HtmlGenericControl)FindControl("recipeview");
            string url2 = Server.HtmlEncode(Request.QueryString["id"]);

            dynamic dynObj = JsonConvert.DeserializeObject(jsonstring.Text.ToString());
            Console.WriteLine("{0} {1}", dynObj.QuestionId, dynObj.QuestionTitle);
           Response.Write("<script>console.log(" + dynObj + ");</script>");
            string recipearr = jsonstring.Text;
                Response.Write("<script>console.log(\" " +  recipearr + " \");</script>");
            if (url2 != null)
            {
                formurl.InnerHtml = "<figure class=\"recipe__fig\"> <img src=\"img/test-1.jpg\" alt=\"Tomato\" class=\"recipe__img\"> <h1 class=\"recipe__title\"> <span>Pasta with tomato cream sauce</span> </h1> </figure> <div class=\"recipe__details\"> <div class=\"recipe__info\"> <svg class=\"recipe__info-icon\"> <use href=\"img/icons.svg#icon-stopwatch\"></use> </svg> <span class=\"recipe__info-data recipe__info-data--minutes\">45</span> <span class=\"recipe__info-text\"> minutes</span> </div> <div class=\"recipe__info\"> <svg class=\"recipe__info-icon\"> <use href=\"img/icons.svg#icon-man\"></use> </svg> <span class=\"recipe__info-data recipe__info-data--people\">4 Servings </span> <span class=\"recipe__info-text\">  </div> <button class=\"recipe__love\"> <svg class=\"header__likes\"> <use href=\"img/icons.svg#icon-heart-outlined\"></use> </svg> </button> </div> <div class=\"recipe__ingredients\"> <ul class=\"recipe__ingredient-list\"> <li class=\"recipe__item\"> <svg class=\"recipe__icon\"> <use href=\"img/icons.svg#icon-check\"></use> </svg> <div class=\"recipe__count\">1000</div> <div class=\"recipe__ingredient\"> <span class=\"recipe__unit\">g</span> pasta </div> </li> <li class=\"recipe__item\"> <svg class=\"recipe__icon\"> <use href=\"img/icons.svg#icon-check\"></use> </svg> <div class=\"recipe__count\">1/2</div> <div class=\"recipe__ingredient\"> <span class=\"recipe__unit\">cup</span> ricotta cheese </div> </li> <li class=\"recipe__item\"> <svg class=\"recipe__icon\"> <use href=\"img/icons.svg#icon-check\"></use> </svg> <div class=\"recipe__count\">1</div> <div class=\"recipe__ingredient\"> <span class=\"recipe__unit\"></span> can of tomatoes, whole or crushed </div> </li> <li class=\"recipe__item\"> <svg class=\"recipe__icon\"> <use href=\"img/icons.svg#icon-check\"></use> </svg> <div class=\"recipe__count\">1</div> <div class=\"recipe__ingredient\"> <span class=\"recipe__unit\"></span> can tuna packed in olive oil </div> </li> <li class=\"recipe__item\"> <svg class=\"recipe__icon\"> <use href=\"img/icons.svg#icon-check\"></use> </svg> <div class=\"recipe__count\">1/2</div> <div class=\"recipe__ingredient\"> <span class=\"recipe__unit\">cup</span> grated parmesan cheese </div> </li> <li class=\"recipe__item\"> <svg class=\"recipe__icon\"> <use href=\"img/icons.svg#icon-check\"></use> </svg> <div class=\"recipe__count\">1/4</div> <div class=\"recipe__ingredient\"> <span class=\"recipe__unit\">cup</span> fresh basil, chopped or torn </div> </li> </ul> </div> <div class=\"recipe__directions\"> <h2 class=\"heading-2\">How to cook it</h2> <p class=\"recipe__directions-text\"> This recipe was carefully designed and tested by <span class=\"recipe__by\">The Pioneer Woman</span>. Please check out directions at their website. </p> <a class=\"btn-small recipe__btn\" href=\"http://thepioneerwoman.com/cooking/pasta-with-tomato-cream-sauce/\" target=\"_blank\"> <span>Directions</span> <svg class=\"search__icon\"> <use href=\"img/icons.svg#icon-triangle-right\"></use> </svg> </a> </div>";
                Response.Write("<script>console.log(" + url2 + ");</script>");
            }

            
           


        */


            if (Session["Username"]== null)
            {

                Linkbutton1.Text = "Log In";
               
                

            }
            else
            {
                Linkbutton1.Text = Session["Username"] + "(Log out)";
              
              
            }
        }

        protected void button_search_Click(object sender, EventArgs e)
        {
            int x = 1;
        }
        protected bool TextBox2_TextChanged(object sender, EventArgs e)
        {

            Response.Write("<script>console.log(\"yeye\");</script>");

            return false;
        }

        protected void Linkbutton1_Click(object sender, EventArgs e)
        {

         
            Response.Redirect("login.aspx");

        }
    }
}