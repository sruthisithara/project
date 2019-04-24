<%@ Control Language="C#" AutoEventWireup="true" CodeFile="remove_product.ascx.cs" Inherits="remove_product" %>
<style type="text/css">
   .h
    {
        height: 40px;
        width:200px;
    }
    .s
    {
        width:200px;
    }
    </style>
<asp:DataList ID="DataList1" runat="server" CellPadding="4" ForeColor="#333333" 
    Width="1000px" RepeatColumns="1">
    <AlternatingItemStyle BackColor="White" />
    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <HeaderTemplate>
    <table width="1000px">
    <tr>
    <th class="h">product name</th>
       <th class="h">unit price</th>
       <th class="h">photo</th>
       <th class="h">#####</th>
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
        <asp:Label ID="Label1" runat="server" Text='<%#Eval("product_name")%>'></asp:Label>
                </center>          
                </td>
            
           
                <td class="s">
                 <center>
                    <asp:Label ID="Label2" runat="server" Text='<%#Eval("unit_price")%>'></asp:Label>
                    </center>
                </td>
                <td class="s">
                 <center>
              <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("image")%>' Height="90px" Width="200px" />
               </center>
                </td>
                <td class="s">
                 <center>
                   <a href="remove_product1.aspx?id=<%#DataBinder.Eval(Container.DataItem,"product_code") %>">remove</a>
                   </center>
                </td>
                <td class="s">
                 <center>
                   <a href="update1.aspx?id=<%#DataBinder.Eval(Container.DataItem,"product_code") %>">update</a>
                   </center>
                </td>


        </tr>
        </table>
    </ItemTemplate>
    <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
</asp:DataList>

