<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="projekti.contact"  MasterPageFile="~/Site.Master"  EnableEventValidation="false" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="contact-content">
        <h1>Contact</h1>
         
        <section>
            <div>
                <asp:TextBox ID="txtusername1" runat="server" required="true"></asp:TextBox>
                <Label Class="inp-label" for="txtusername1" >Username</Label>
            </div>
            <div>
               <asp:TextBox ID="txtname" runat="server" required="true"></asp:TextBox>
               <Label Class="inp-label" for="txtname" >Email</Label>
            </div>
        </section>
        <div class="contact-select">
              <span> Reason for contacting us </span>   
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style1">
                    <asp:ListItem>I want to publish my recipe in your site</asp:ListItem>
                    <asp:ListItem>I found a bug</asp:ListItem>
                    <asp:ListItem>Other..</asp:ListItem>
                </asp:DropDownList>
          </div>
        </br>
                 <asp:TextBox ID="Txt" runat="server" TextMode="MultiLine" Width="450px" Height="250px" MaxLength="100000"></asp:TextBox>
                       </br>
                       </br>
        <asp:Button ID="btnsignup"  runat="server" Text="Submit" CssClass="sumbit-btn" OnClick="btnsignup_Click" />

        <asp:Label ID="Label7" runat="server"  ForeColor="Red"></asp:Label>
    </div>


 </asp:Content>