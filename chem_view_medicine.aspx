<%@ Page Title="" Language="C#" MasterPageFile="~/chemist1.master" AutoEventWireup="true" CodeFile="chem_view_medicine.aspx.cs" Inherits="chem_view_medicine" %>

<%@ Register src="chem_view_medicine.ascx" tagname="chem_view_medicine" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:chem_view_medicine ID="chem_view_medicine1" runat="server" />
</asp:Content>

