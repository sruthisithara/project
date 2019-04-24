<%@ Control Language="C#" AutoEventWireup="true" CodeFile="view_chemist.ascx.cs" Inherits="view_chemist" %>


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
    <th class="h">NAME</th>
       <th class="h">ADDRESS</th>
       <th class="h">PHONE</th>
       <th class="h">SHOP NAME</th>
        <th class="h">SHOP ADDRESS</th>
        
       </tr>
        </table>
    </HeaderTemplate>
    <ItemStyle BackColor="#c6cbcede" />
    <ItemTemplate>
        <table width="1000px">
        <tr>
        <td class="s">
        <center>
        <asp:Label ID="Label1" runat="server" Text='<%#Eval("name")%>'></asp:Label>
                </center>          
                </td>
            
           
                <td class="s">
                 <center>
                    <asp:Label ID="Label2" runat="server" Text='<%#Eval("address")%>'></asp:Label>
                    </center>
                </td>
                <td class="s">
                 <center>
             <asp:Label ID="Label3" runat="server" Text='<%#Eval("phone")%>'></asp:Label>
               </center>
                </td>
                 <td class="s">
                 <center>
             <asp:Label ID="Label4" runat="server" Text='<%#Eval("shop_name")%>'></asp:Label>
               </center>
                </td>
                 <td class="s">
                 <center>
             <asp:Label ID="Label5" runat="server" Text='<%#Eval("shop_address")%>'></asp:Label>
               </center>
                </td>
                
                


        </tr>
        </table>
    </ItemTemplate>
    <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
</asp:DataList>



