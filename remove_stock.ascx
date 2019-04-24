<%@ Control Language="C#" AutoEventWireup="true" CodeFile="remove_stock.ascx.cs" Inherits="remove_stock" %>

<style type="text/css">
   .h
    {
        height: 40px;
        width:250px;
    }
    .s
    {
        height: 60px;
        width:250px;
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
    <th class="h">product id</th>
       <th class="h">expire dt</th>
       <th class="h">manufacture dt</th>
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
        <asp:Label ID="Label1" runat="server" Text='<%#Eval("pid")%>'></asp:Label>
                </center>          
                </td>
            
           
                <td class="s">
                 <center>
                    <asp:Label ID="Label2" runat="server" Text='<%#Eval("man_date")%>'></asp:Label>
                    </center>
                </td>
                <td class="s">
                 <center>
             <asp:Label ID="Label3" runat="server" Text='<%#Eval("expire_date")%>'></asp:Label>
               </center>
                </td>
                
                <td class="s">
                 <center>
                   <a href="remove_stock1.aspx?id=<%#DataBinder.Eval(Container.DataItem,"batch_no") %>">remove</a>
                   </center>
                </td>


        </tr>
        </table>
    </ItemTemplate>
    <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
</asp:DataList>


