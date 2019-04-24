<%@ Control Language="C#" AutoEventWireup="true" CodeFile="chem_view_allotment.ascx.cs" Inherits="chem_view_allotment" %>


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
    <th class="h">REQUEST NO</th>
       <th class="h">PRODUCT CODE</th>
       
       <th class="h">AMOUNT</th>
       <th class="h">ALLOT DATE</th>
       <th class="h">EXPIRE DATE</th>
        
       </tr>
        </table>
    </HeaderTemplate>
    <ItemStyle BackColor="#c6cbcede" />
    <ItemTemplate>
        <table width="1000px">
        <tr>
        <td class="s">
        <center>
        <asp:Label ID="Label1" runat="server" Text='<%#Eval("req_no")%>'></asp:Label>
                </center>          
                </td>
            
           
                <td class="s">
                 <center>
                    <asp:Label ID="Label2" runat="server" Text='<%#Eval("product_code")%>'></asp:Label>
                    </center>
                </td>
                <td class="s">
                 <center>
             <asp:Label ID="Label3" runat="server" Text='<%#Eval("amount")%>'></asp:Label>
               </center>
                </td>
                <td class="s">
                 <center>
             <asp:Label ID="Label4" runat="server" Text='<%#Eval("allot_date")%>'></asp:Label>
               </center>
                </td>
                 <td class="s">
                 <center>
             <asp:Label ID="Label5" runat="server" Text='<%#Eval("expire_date")%>'></asp:Label>
               </center>
                </td>
                
               
               

        </tr>
        </table>
    </ItemTemplate>
    <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
</asp:DataList>






