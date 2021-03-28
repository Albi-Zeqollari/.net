<%@ Page  EnableEventValidation="false" Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="projekti.admin" %>

<!DOCTYPE html>



<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Echef-Admin</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link type="text/css" rel="stylesheet" href="./dist/css/admin.css" media="screen" runat="server"/>
     <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.2/css/all.css" integrity="sha384-vSIIfh2YWi9wW0r9iZe7RJPrKwp6bG+s9QZMoITbCckVJqGCCRhc+ccxNcdpHuYu" crossorigin="anonymous">

</head>
<body>
    <form id="form1" runat="server">
        <header>
            <h2>Echef</h2>
            <asp:Button ID="Button1" runat="server" Text="Admin(Sign Out)" OnClick="Button1_Click" />
          
        </header>
        
        


             


        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Projekt1DBConnectionString %>" SelectCommand="SELECT [Email] FROM [usertbl] ORDER BY [Email]"></asp:SqlDataSource>
        
      
       
            
                

             


        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Projekt1DBConnectionString %>" SelectCommand="SELECT [Username], [Email], [Reasons], [Text] FROM [contact]"></asp:SqlDataSource>




        <div class="contents">
            <h3>Users</h3>
            <asp:DataList ID="DataList2" runat="server"  DataKeyField="Email" Height="177px" >
            <ItemTemplate>
                
             <table class="table table-striped">
                  <tbody>
                    <tr>
                      <th scope="row">  <asp:Label ID="UsernameLabel" runat="server" Text='<%# Eval("Username") %>' /></th>
                      <td><asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' /></td>
                     <td class="del-btn">
              <asp:Button ID="Button3" runat="server" Text="Delete User" CommandName="Delete" dataEmail='<%# Eval("Email") %>' CssClass="btn btn-outline-danger"  CausesValidation="false" OnClick="Button3_Click" />
                        </td>
                    </tr>
   
                     
                  </tbody>        
        </table>
         </ItemTemplate>
        </asp:DataList>
          

            <br /> <br /> <br />

            <h3>Messages</h3>
               <div class="accordion" id="accordionExample">
        <asp:DataList ID="DataList1" runat="server" DataKeyField="Email" >
            <ItemTemplate>
               <div class="card">

                   <div class="card-header" id="headingOne">
                  <h5 class="mb-0">
                    <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                      <span> <asp:Label ID="UsernameLabel" runat="server" Text='<%# Eval("Username") %>' /> - &nbsp;</span>
                        <span><asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' /></span>
                    </button>
                  </h5>
                </div>
                <div id="collapseOne" class="collapse" aria-labelledby="headingOne" data-parent="#accordionExample">
                  <div class="card-body">
                      <h4> <asp:Label ID="ReasonsLabel" runat="server" Text='<%# Eval("Reasons") %>' /></h4>
                       <asp:Label ID="TextLabel" runat="server" Text='<%# Eval("Text") %>' />
                    </div>
                </div>
                 
              </div>


             
            </ItemTemplate>
        </asp:DataList>
              </div>
        </div>
    </form>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
</html>