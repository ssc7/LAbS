<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="WebApplication2.admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Management Console</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="775px">
            <Columns>
                <asp:BoundField DataField="userFullName" HeaderText="userFullName" SortExpression="userFullName" />
                <asp:BoundField DataField="userEmail" HeaderText="userEmail" SortExpression="userEmail" />
                <asp:BoundField DataField="userSec" HeaderText="userSec" SortExpression="userSec" />
                <asp:BoundField DataField="userDept" HeaderText="userDept" SortExpression="userDept" />
                <asp:BoundField DataField="userPhone" HeaderText="userPhone" SortExpression="userPhone" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [userFullName], [userEmail], [userSec], [userDept], [userPhone] FROM [UserInfo]"></asp:SqlDataSource>
    </form>

</asp:Content>
