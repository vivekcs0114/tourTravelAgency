<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Userreg.aspx.cs" Inherits="Userreg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <head>
        <link href="Deco.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        
        </style>
        </head>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form>
    <table cellpadding="0" cellspacing="0" align="center" >
        <caption>
           <h3>User Registration Form</h3> </caption>
        <tr>
            <td ><h3>Name</h3> </td>
            <td >
                <asp:TextBox ID="TextBox1" runat="server" CssClass="Text" autofocus></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="enter your name" ForeColor="Red" ValidationGroup="2"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td ><h3>Mobile no.</h3></td>
            <td >
                <asp:TextBox ID="TextBox2" runat="server" CssClass="Text"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox2" ErrorMessage="enter mob no" ForeColor="Red" ValidationGroup="2"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="enter correct no." ValidationExpression="^([7-9]{1})([0-9]{9})$" ValidationGroup="2" ForeColor="Red"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td ><h3>Email-id</h3></td>
            <td >
                <asp:TextBox ID="TextBox3" runat="server" CssClass="Text"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox3" ErrorMessage="enter email id" ForeColor="Red" ValidationGroup="2"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="enter valid email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="2" ForeColor="Red"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td><h3>Address</h3></td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" CssClass="Text"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox4" ErrorMessage="enter address" ValidationGroup="2" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td><h3>Password</h3></td>
            <td>
                <asp:TextBox ID="TextBox9" CssClass="Text" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox9" ErrorMessage="enter password" ForeColor="Red" ValidationGroup="2"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td><h3>Conf Password</h3></td>
            <td>
                <asp:TextBox ID="TextBox10" CssClass="Text" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TextBox10" ErrorMessage="enter conf pass" ForeColor="Red" ValidationGroup="2"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="TextBox9" ControlToValidate="TextBox10" ErrorMessage="pass not match" ForeColor="Red" ValidationGroup="2"></asp:CompareValidator>
            </td>
        </tr>
       
        <tr>
            <td><h3>Password Hint</h3></td>
            <td >
                <asp:TextBox ID="TextBox11" CssClass="Text" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="TextBox11" ErrorMessage="enter pass hints" ForeColor="Red" ValidationGroup="2"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td><h3>Capta</h3></td>
            <td >
                <asp:TextBox ID="TextBox8" runat="server" CssClass="Text" onfocus="blur()"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox7" ControlToValidate="TextBox8" ErrorMessage=" Incorrect capta" ValidationGroup="2" ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td><h3>Enter code here</h3></td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server" CssClass="Text"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox7" ErrorMessage="enter code" ValidationGroup="2" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td></td>
            <td >
                <asp:Button ID="Button7" CssClass="Text" runat="server" Text="Submit" OnClick="Button7_Click" ValidationGroup="2" />
                &nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx">I have already register.Login</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
            <td >
                &nbsp;</td>
        </tr>
    </table>
        </form>
    <hr />
</asp:Content>

