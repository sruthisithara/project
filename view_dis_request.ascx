<%@ Control Language="C#" AutoEventWireup="true" CodeFile="view_dis_request.ascx.cs" Inherits="view_dis_request" %>

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
    <th class="h">REQUEST NO</th>
       <th class="h">AREA CODE</th>
       <th class="h">PRODUCT CODE</th>
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
        <asp:Label ID="Label1" runat="server" Text='<%#Eval("req_no")%>'></asp:Label>
                </center>          
                </td>
            
           
                <td class="s">
                 <center>
                    <asp:Label ID="Label2" runat="server" Text='<%#Eval("area_code")%>'></asp:Label>
                    </center>
                </td>
                <td class="s">
                 <center>
             <asp:Label ID="Label3" runat="server" Text='<%#Eval("product_code")%>'></asp:Label>
               </center>
                </td>
                
                <td class="s">
                 <center>
                   <a href="view_dis_request1.aspx?id=<%#DataBinder.Eval(Container.DataItem,"req_no") %>">view</a>
                   </center>
                </td>


        </tr>
        </table>
    </ItemTemplate>
    <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
</asp:DataList>



