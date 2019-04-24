<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="add_distributor.aspx.cs" Inherits="add_distributor" %>

<%@ Register src="add_distributor.ascx" tagname="add_distributor" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:add_distributor ID="add_distributor1" runat="server" />
</asp:Content>

