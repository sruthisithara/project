<%@ Page Title="" Language="C#" MasterPageFile="~/distributor1.master" AutoEventWireup="true" CodeFile="view_medicine.aspx.cs" Inherits="view_medicine" %>

<%@ Register src="view_medicine.ascx" tagname="view_medicine" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:view_medicine ID="view_medicine1" runat="server" />
</asp:Content>

