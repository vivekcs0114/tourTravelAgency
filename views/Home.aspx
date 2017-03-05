<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Resource_Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Deco.css" rel="stylesheet" type="text/css" />

    <style type="text/css">
       
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3>Top Most Places In India</h3>
    <table class="Table" align="center" class="Table">
        <tr>
            <td align="center">
                <asp:Panel ID="Panel1" runat="server">
                </asp:Panel>
            </td>
            
        </tr>
     </table>
    <hr />
</asp:Content>


