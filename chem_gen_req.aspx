<%@ Page Title="" Language="C#" MasterPageFile="~/chemist.master" AutoEventWireup="true" CodeFile="chem_gen_req.aspx.cs" Inherits="chem_gen_req" %>

<%@ Register src="chem_gen_req.ascx" tagname="chem_gen_req" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:chem_gen_req ID="chem_gen_req1" runat="server" />
</asp:Content>

