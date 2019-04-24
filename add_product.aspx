<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="add_product.aspx.cs" Inherits="add_product" %>

<%@ Register src="add_product.ascx" tagname="add_product" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <uc1:add_product ID="add_product1" runat="server" />
    
</asp:Content>

