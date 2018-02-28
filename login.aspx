<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebApplication2.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>User Application</title>
    <style type="text/css">
         form{
         max-width:500px;
     }              
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   <div class="jumbotron vertical-center"> 
<div class="container">

<!-- Default form login -->
    <form id="loginform" runat="server">
        <p class="h4 text-center mb-4">Sign in</p>

        <!-- Default input email -->
        <label for="defaultFormLoginEmailEx" class="grey-text">Your username</label>
        <!--<input type="text" name="username" id="username" class="form-control" required="required" />-->
        <asp:TextBox ID="username" runat="server" CssClass="form-control"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Username" ErrorMessage="Username is required" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />

        <!-- Default input password -->
        <label for="defaultFormLoginPasswordEx" class="grey-text">Your password</label>
        <asp:TextBox ID="pass" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="pass" Display="Dynamic" ErrorMessage="Password is required" ForeColor="Red"></asp:RequiredFieldValidator>
        <div class="text-center mt-4">
            <asp:Button runat="server" CssClass="btn btn-indigo" Text="Login" OnClick="Login_Click" />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Users]"></asp:SqlDataSource>
        </div>
    

    </form>
    </div>
       </div>
</asp:Content>
