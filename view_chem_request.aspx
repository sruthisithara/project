<%@ Page Title="" Language="C#" MasterPageFile="~/distributor1.master" AutoEventWireup="true" CodeFile="view_chem_request.aspx.cs" Inherits="view_chem_request" %>

<%@ Register src="view_chem_request.ascx" tagname="view_chem_request" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:view_chem_request ID="view_chem_request1" runat="server" />
</asp:Content>

