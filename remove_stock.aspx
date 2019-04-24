<%@ Page Title="" Language="C#" MasterPageFile="~/admin2.master" AutoEventWireup="true" CodeFile="remove_stock.aspx.cs" Inherits="remove_stock" %>

<%@ Register src="remove_stock.ascx" tagname="remove_stock" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:remove_stock ID="remove_stock1" runat="server" />
</asp:Content>

