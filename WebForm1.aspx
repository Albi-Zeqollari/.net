<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="projekti.WebForm1"  MasterPageFile="~/Site.Master"  EnableEventValidation="false" %>

  <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 

     <script>
         var likesarr = [];
         var isliked = false;
         var itemarray;
         function button_search_Click() {
            var query= document.getElementById("TextBox1").value
            console.log(query);

             //fetch search data
            fetch(`https://forkify-api.herokuapp.com/api/search?q=${query}`)
                .then(response => response.json())
                .then(data => {
                    var recipelist = document.querySelector(".results__list");
                    if (recipelist.innerHTML != "") {
                        recipelist.innerHTML = "";
                    }
                    console.log(data) 
                    
                    //display search items
                    for (var i = 0; i < 10; i++) {
                        recipelist.insertAdjacentHTML('beforeend', `<li>
                    <a class="results__link results__link--active" href="#${data.recipes[i].recipe_id}"  >
                        <figure class="results__fig">
                            <img src="${data.recipes[i].image_url}" alt="Test">
                        </figure>
                        <div class="results__data">
                            <h4 class="results__name">${data.recipes[i].title} ...</h4>
                            <p class="results__author">${data.recipes[i].publisher}</p>
                        </div>
                    </a>
                </li>`) 
                    }

                });
         }



         //return recipe ingredients
         function createingredient(el) {
             return ` <li class="recipe__item">
                        <svg class="recipe__icon">
                            <use href="img/icons.svg#icon-check"></use>
                        </svg>
                        <div class="recipe__ingredient">
                           ${el}
                        </div>
                    </li>`;
         }



         function returnRecipe(itemarray) {
             return `
    <figure class="recipe__fig">
        <img src="${itemarray.recipe.image_url} " alt="${itemarray.recipe.title}" class="recipe__img">
        <h1 class="recipe__title">
            <span>${itemarray.recipe.title}</span>
        </h1>
    </figure>
    <div class="recipe__details">
        <div class="recipe__info">
            <svg class="recipe__info-icon">
                <use href="img/icons.svg#icon-stopwatch"></use>
            </svg>
            <span class="recipe__info-data recipe__info-data--minutes">${Math.floor(Math.random() * 16) + 25}</span>
            <span class="recipe__info-text"> minutes</span>
        </div>
        <div class="recipe__info">
            <svg class="recipe__info-icon">
                <use href="img/icons.svg#icon-man"></use>
            </svg>
            <span class="recipe__info-data recipe__info-data--people">${Math.floor(Math.random() * 3) + 1}</span>
            <span class="recipe__info-text"> servings</span>

          
        </div>
       
    </div>



    <div class="recipe__ingredients">
        <ul class="recipe__ingredient-list">

          
                    ${itemarray.recipe.ingredients.map(el => createingredient(el)).join('')}
           
            
        </ul>

        
    </div>

    <div class="recipe__directions">
        <h2 class="heading-2">How to cook it</h2>
        <p class="recipe__directions-text">
            This recipe was carefully designed and tested by
            <span class="recipe__by">${itemarray.recipe.publisher}</span>. Please check out directions at their website.
        </p>
        <a class="btn-small recipe__btn" href="${itemarray.recipe.publisher_url}" target="_blank">
            <span>Directions</span>
            <svg class="search__icon">
                <use href="img/icons.svg#icon-triangle-right"></use>
            </svg>

        </a>
    </div>
    `
         }



         //fetch selected recipe
         window.addEventListener('hashchange', function () {
                const id = window.location.hash.replace('#', '');
                fetch(`https://forkify-api.herokuapp.com/api/get?rId=${id}`)
                    .then(response => response.json())
                    .then(data => {
                        itemarray = data;
                        console.log(itemarray);




                        var recipe = returnRecipe(itemarray);

                        document.querySelector('.recipe').innerHTML = recipe;


                        
                    });
         
                 
                    
              
             
         })

                      
    </script>

    <div class="container">
        <asp:TextBox ID="jsonstring" ClientIDMode="Static" runat="server" type="hidden" ></asp:TextBox>
        <header class="header">
            <img src="./img/logo.png" alt="Logo" class="header__logo">
                <div class="search-container">
                <asp:TextBox ClientIDMode="Static" ID="TextBox1" runat="server" type="text" class="search__field" placeholder="Search over 1,000,000 recipes..." Text=""></asp:TextBox>
                <asp:LinkButton runat="server" OnClientClick="button_search_Click(); return false;" id="button_search" Class="btn search__btn" OnClick="button_search_Click">
                    <svg class="search__icon">&nbsp;<use href="img/icons.svg#icon-magnifying-glass"></use> </svg>
                    <span>Search</span>
                </asp:LinkButton>
                </div>
            <div class="user">
               
                <i class="fas fa-user"></i>
                <asp:LinkButton ID="Linkbutton1" runat="server" Text="Login" OnClick="Linkbutton1_Click"></asp:LinkButton>
            </div>
          <!--  <div class="likes">
                <div class="likes__field">
                    <svg class="likes__icon">
                        <use href="img/icons.svg#icon-heart"></use>
                    </svg>
                </div>
                <div class="likes__panel">
                    <ul class="likes__list">
                       
                  
                        
                    </ul>
                </div>
            </div>
        -->
        </header>
        

        <div class="results">
            <ul class="results__list">
    
                
                
                
                
                </ul><div class="copyright">
                &copy; by E.D  A.Z  D.T
            >
        </div>
 </div>

        <div class="recipe" id="recipeview" runat="server">
           
           
           
        




        </div>
    
      </asp:Content> 