<%@ Page Title="" Language="C#" MasterPageFile="~/chemist1.master" AutoEventWireup="true" CodeFile="chem_view_allotment.aspx.cs" Inherits="chem_view_allotment" %>

<%@ Register src="chem_view_allotment.ascx" tagname="chem_view_allotment" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:chem_view_allotment ID="chem_view_allotment1" runat="server" />
</asp:Content>

