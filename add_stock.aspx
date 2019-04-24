<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="add_stock.aspx.cs" Inherits="add_stock" %>

<%@ Register src="add_stock.ascx" tagname="add_stock" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:add_stock ID="add_stock1" runat="server" />
</asp:Content>

