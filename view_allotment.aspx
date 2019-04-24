<%@ Page Title="" Language="C#" MasterPageFile="~/distributor1.master" AutoEventWireup="true" CodeFile="view_allotment.aspx.cs" Inherits="view_allotment" %>

<%@ Register src="view_allotment.ascx" tagname="view_allotment" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:view_allotment ID="view_allotment1" runat="server" />
</asp:Content>

