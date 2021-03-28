<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="projekti.login" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link type="text/css" rel="stylesheet" href="login-singup.css" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.2/css/all.css" integrity="sha384-vSIIfh2YWi9wW0r9iZe7RJPrKwp6bG+s9QZMoITbCckVJqGCCRhc+ccxNcdpHuYu" crossorigin="anonymous">
</head>
<body style="height: 185px">
    <form id="form1" runat="server">
        <div class="back-to-hom">
            <i class="fas fa-arrow-left">
            <asp:Button ID="Button1" runat="server" Text="Back to home" OnClick="Button1_Click1" /></i> 
        </div>
       <div class="login-forms">

            <section class="signin">
            
                <h3>Sign Up</h3>
               
                <div>
                        <asp:TextBox ID="txtname" runat="server" ValidationGroup="sign"></asp:TextBox>
                    

                         <Label Class="inp-label" for="txtname" >Your Email</Label>
                

                </div>
                <div>
                    <asp:TextBox ID="txtusername1" runat="server"  ValidationGroup="sign"></asp:TextBox>
                     <Label Class="inp-label" for="txtusername1" >Username</Label>
                </div>
                <div>
                   
                        <asp:TextBox ID="txtpassword1" runat="server" TextMode="Password"  ValidationGroup="sign"></asp:TextBox>
                        <Label ID="Label6" Class="inp-label" for="txtpassword1" >Password</Label>
                 </div>
                    
                    
                       <asp:Button ID="btnsignup"  runat="server" Text="Sign Up" OnClick="btnsignup_Click"  CssClass="sumbit-btn" ValidationGroup="sign" />
           
                <asp:Label ID="Label1" runat="server" ForeColor="Blue"></asp:Label>

                <asp:Label ID="Label7" runat="server"  ForeColor="Red"></asp:Label>


                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Incorrect email form" ControlToValidate="txtname"  ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="sign"></asp:RegularExpressionValidator>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please fill the form" ControlToValidate="txtname" ValidationGroup="sign" ForeColor="Red"></asp:RequiredFieldValidator>
        </section>


    
        

        <section class="login">
           
                <h3>Log in</h3>
                
                  <div>
                        <asp:TextBox ID="txtusername" runat="server" ValidationGroup="login"></asp:TextBox>
                        <Label  Class="inp-label" for="txtusername" >Username</Label>
                  </div>
                  <div>
                        <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"  ValidationGroup="login"></asp:TextBox>
                        <Label  Class="inp-label" for="txtpassword" >Password</Label>
                  </div>
                   <span> Select User Type </span>
                   
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style1">
                            <asp:ListItem>User</asp:ListItem>
                            <asp:ListItem>Admin</asp:ListItem>
                        </asp:DropDownList>
                  
            <asp:Button ID="btnlogin" runat="server" Text="Login" OnClick="btnlogin_Click" CssClass="sumbit-btn" ValidationGroup="login" />
               
            <asp:Label ID="Label3" runat="server"  ForeColor="Red"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please fill the form" ControlToValidate="txtusername" ForeColor="Red" ValidationGroup="login"></asp:RequiredFieldValidator>


        </section>
  
   
</form>
   
</body>
</html>
