<%@ Page Title="" Language="C#" MasterPageFile="~/admin2.master" AutoEventWireup="true" CodeFile="remove_product.aspx.cs" Inherits="remove_product" %>

<%@ Register src="remove_product.ascx" tagname="remove_product" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:remove_product ID="remove_product1" runat="server" />
</asp:Content>

