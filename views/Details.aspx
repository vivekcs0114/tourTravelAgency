<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Details.aspx.cs" Inherits="Details" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Deco.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style1 {}
        .auto-style2 {}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <table class="PTable" align="center" >
        <tr>
            <td>Profile:</td>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
              <asp:Image ID="Image2" runat="server" Height="96px" Width="85px" CssClass="auto-style2" />
            </td>
            <td>
                &nbsp;</td>
            
        </tr>
        <tr>
           
            <td >
                  <asp:FileUpload ID="FileUpload1" runat="server" CssClass="auto-style1" Height="24px" Width="85px" /> 
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>Mobile no.</td>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>Email id</td>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>Address</td>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button8" runat="server" OnClick="Button8_Click" Text="Save" />
            </td>
            <td>
                <asp:Button ID="Button9" runat="server" Text="Edit" />
            </td>
        </tr>
    </table>
    
    <hr />
</asp:Content>

