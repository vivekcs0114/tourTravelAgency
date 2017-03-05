<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Regconf.aspx.cs" Inherits="Regconf" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Deco.css" rel="stylesheet" type="text/css" />

    <style type="text/css">
       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table  align="center" class="Stable">
        <caption>
           <h3> User Registration Successful</h3></caption>
        <tr>
            <td>User Id</td>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>User Password</td>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2" ><asp:Button ID="Button7" runat="server" CssClass="Text"  OnClick="Button7_Click" Text="Thanks" Width="142px" Height="37px" />
            </td>
            
        </tr>
    </table>
    <hr />
</asp:Content>

