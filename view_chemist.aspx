<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="view_chemist.aspx.cs" Inherits="view_chemist" %>

<%@ Register src="view_chemist.ascx" tagname="view_chemist" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <uc1:view_chemist ID="view_chemist1" runat="server" />
    </form>
</asp:Content>

