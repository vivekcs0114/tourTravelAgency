<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <head>
        <link href="Deco.css" type="text/css" rel="stylesheet" />
    <style type="text/css">
        
            </style>
        </head>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table  align="center" class="Stable">
        <tr>
            <td colspan="2" bgcolor="gray" ><h3>Login Module </h3> </td>
            
        </tr>
        <tr>
            <td><h3>User Name</h3></td>
            <td >
                <asp:TextBox ID="TextBox1" runat="server" CssClass="Text"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="enter user name" ForeColor="#CC3300" ValidationGroup="1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td><h3>Password</h3></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" CssClass="Text"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="enter password" ForeColor="#CC3300" ValidationGroup="1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
           
            <td >
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Passrec.aspx">Forget Password</asp:HyperLink>
            </td>
           
        </tr>
        <tr>
            <td >
                <asp:Button ID="Button7" runat="server" CssClass="Text" Text="Login" OnClick="Button7_Click" ValidationGroup="1"  />
            </td>
            <td >&nbsp;<asp:Button ID="Button8" runat="server" Text="New User " OnClick="Button8_Click" CssClass="Text"/>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Panel ID="Panel1" runat="server">
                </asp:Panel>
                <asp:Label ID="Label1" runat="server" Text="Label" ForeColor="Red"></asp:Label>
            </td>
            
        </tr>
    </table>
    <hr />
</asp:Content>

