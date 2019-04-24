<%@ Page Title="" Language="C#" MasterPageFile="~/distributor.master" AutoEventWireup="true" CodeFile="add_chemist.aspx.cs" Inherits="add_chemist" %>

<%@ Register src="add_chemist.ascx" tagname="add_chemist" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:add_chemist ID="add_chemist1" runat="server" />
</asp:Content>

