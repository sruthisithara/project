<%@ Control Language="C#" AutoEventWireup="true" CodeFile="chem_view_medicine.ascx.cs" Inherits="chem_view_medicine" %>



<style type="text/css">
    .style
    {
      
       margin-left:90px;
    }
    </style>
    <br />
    <br />
    <br />
<asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" 
    RepeatColumns="4" Width="650"
    Font-Italic="True" Font-Size="20pt" Height="373px" CssClass="style">



    <ItemTemplate>
        <table>
         <tr>
                <td>
              <center>
              <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("image")%>' Height="170px" Width="280px" />
               </center>
                </td>
                </tr>
        <tr>
        <td>
        <center>
        <asp:Label ID="Label1" runat="server" Text='<%#Eval("product_name")%>' Font-Size="Medium"></asp:Label>
             </center>          
                </td>
            </tr>
           <tr>
                <td>
               <center>
                    <asp:Label ID="Label2" runat="server" Text='<%#Eval("unit_price")%>' Font-Size="Medium"></asp:Label>
                   </center>
                </td>
                </tr>
               
                <tr>
                <td>
              <center>
                   <a href="chem_gen_req.aspx?id=<%#DataBinder.Eval(Container.DataItem,"product_code") %>">request</a>
                 </center>
                </td>
                </tr>
               
        </table>
    </ItemTemplate>
</asp:DataList>


