<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Tour.aspx.cs" Inherits="Car" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Deco.css" rel="stylesheet" type="text/css" />
    <style type="text/css">

       
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="Stable">
        <tr>
            <td colspan="2" bgcolor="gray">
                <h3>Search Tourists Places</h3>
            </td>
        </tr>
        <tr>
            <td ><h3>Select District</h3></td>
            <td >
                <asp:DropDownList ID="DropDownList2" CssClass="Text" runat="server" AutoPostBack="True" DataSourceID="Distic" DataTextField="Distic" DataValueField="Distic">
                </asp:DropDownList>
                <asp:SqlDataSource ID="Distic" runat="server" ConnectionString="<%$ ConnectionStrings:cseConnectionString %>" SelectCommand="SELECT * FROM [Distic]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <center> <asp:Button ID="Button7" runat="server" Text="Search" CssClass="Text" OnClick="Button7_Click"  /></center>
            </td>
            
        </tr>
    </table>
    <hr />
    <div>

        <asp:Panel ID="Panel1" runat="server">
        </asp:Panel>

    </div>
</asp:Content>

