<%@ Page Title="" Language="C#" MasterPageFile="~/distributor.master" AutoEventWireup="true" CodeFile="gen_req.aspx.cs" Inherits="gen_req" %>

<%@ Register src="gen_request.ascx" tagname="gen_request" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:gen_request ID="gen_request1" runat="server" />
</asp:Content>

