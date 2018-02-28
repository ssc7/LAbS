<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication2.Default1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Google Form</title>
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
    <form id="googleform" runat="server">
        <p class="h4 text-center mb-4">Google Form</p>

        <!-- Default input email -->
        <label for="fullname" class="grey-text">Your Full Name*</label>
        <!--<input type="text" name="username" id="username" class="form-control" required="required" />-->
        <asp:TextBox ID="fullname" runat="server" CssClass="form-control"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="fullname" ErrorMessage="Your Full Name is required" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />

        <label for="email" class="grey-text">Your Email*</label>
        <!--<input type="text" name="username" id="username" class="form-control" required="required" />-->
        <asp:TextBox ID="email" runat="server" TextMode="Email" CssClass="form-control"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="email" ErrorMessage="Your Email is required" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />

        <label for="phone" class="grey-text">Your Phone*</label>
        <!--<input type="text" name="username" id="username" class="form-control" required="required" />-->
        <asp:TextBox ID="phone" TextMode="Number" runat="server" CssClass="form-control"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="phone" ErrorMessage="Your Phone is required" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        
        <label for="dept" class="grey-text">Your Dept(e.g SEECS)*</label>
        <!--<input type="text" name="username" id="username" class="form-control" required="required" />-->
        <asp:TextBox ID="dept" runat="server" CssClass="form-control"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="dept" ErrorMessage="Your Department is required" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />

        <label for="sect" class="grey-text">Your Section(e.g BESE-6A)*</label>
        <!--<input type="text" name="username" id="username" class="form-control" required="required" />-->
        <asp:TextBox ID="sect" runat="server" CssClass="form-control"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="sect" ErrorMessage="Your Section is required" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />

        <div class="text-center mt-4">
            <asp:Button runat="server" CssClass="btn btn-indigo" Text="Submit" OnClick="submit_Click" />
        </div>
    

    </form>
    </div>
       </div>

</asp:Content>
