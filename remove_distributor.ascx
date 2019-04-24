<%@ Control Language="C#" AutoEventWireup="true" CodeFile="remove_distributor.ascx.cs" Inherits="remove_distributor" %>

<style type="text/css">
   .h
    {
        height: 40px;
        width:200px;
    }
    .s
    {
         height: 60px;
        width:200px;
    }
    </style>
    <br />
    <br />
    <br />
<asp:DataList ID="DataList1" runat="server" CellPadding="4" ForeColor="#333333" 
    Width="1000px" RepeatColumns="1">
    <AlternatingItemStyle BackColor="White" />
    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <HeaderTemplate>
    <table width="1000px">
    <tr>
    <th class="h">Area Code</th>
       <th class="h">District</th>
       <th class="h">Name</th>
       <th class="h">Address</th>
        <th class="h">#####</th>
       </tr>
        </table>
    </HeaderTemplate>
    <ItemStyle BackColor="#c6cbcede" />
    <ItemTemplate>
        <table width="1000px">
        <tr>
        <td class="s">
        <center>
        <asp:Label ID="Label1" runat="server" Text='<%#Eval("area_code")%>'></asp:Label>
                </center>          
                </td>
            
           
                <td class="s">
                 <center>
                    <asp:Label ID="Label2" runat="server" Text='<%#Eval("district")%>'></asp:Label>
                    </center>
                </td>
                <td class="s">
                 <center>
                    <asp:Label ID="Label3" runat="server" Text='<%#Eval("name")%>'></asp:Label>
                    </center>
                </td>
               
               <td class="s">
                 <center>
                    <asp:Label ID="Label4" runat="server" Text='<%#Eval("address")%>'></asp:Label>
                    </center>
                </td>
                <td class="s">
                 <center>
                   <a href="remove_distributor1.aspx?id=<%#DataBinder.Eval(Container.DataItem,"area_code") %>">remove</a>
                   </center>
                </td>


        </tr>
        </table>
    </ItemTemplate>
    <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
</asp:DataList>

