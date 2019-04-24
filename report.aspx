<%@ Page Title="" Language="C#" MasterPageFile="~/chemist1.master" AutoEventWireup="true" CodeFile="report.aspx.cs" Inherits="report" %>

<%@ Register src="report.ascx" tagname="report" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:report ID="report1" runat="server" />
</asp:Content>

