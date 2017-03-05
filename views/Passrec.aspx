<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Passrec.aspx.cs" Inherits="Passrec" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Deco.css" rel="stylesheet" type="text/css" />

    <style type="text/css">
      
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="Stable">
        <tr>
            <td colspan="2" bgcolor="gray">
                <h3>Password Recovery</h3>
            </td>
        </tr>
        <tr>
            <td><h3>User Name</h3></td>
            <td>
                <asp:TextBox ID="TextBox1" CssClass="Text" runat="server"></asp:TextBox>
            </td>
        </tr>
        
        <tr>
            
            <td colspan="2">
                <center>
                    <asp:Button ID="Button7" CssClass="Text" runat="server" Text="Submit" OnClick="Button7_Click" /></center>
            </td>
        </tr>

        <tr>
            
            <td colspan="2">
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>

    </table>
    <hr />
    
</asp:Content>

