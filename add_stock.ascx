<%@ Control Language="C#" AutoEventWireup="true" CodeFile="add_stock.ascx.cs" Inherits="add_stock" %>
<html>
<head>
</head>
<body>
  <form method="post" action="">

 

 
					    	<div>
                                
						    	<span><label>Batch Id</label></span>
						    	<span><asp:TextBox ID="TextBox1" runat="server" class="sam"></asp:TextBox></span>
						    </div>
					      <div>
						    	<span><label>Product Id</label></span>
						    	<span><asp:DropDownList ID="DropDownList1" runat="server" class="sam">
                                    <asp:ListItem>select</asp:ListItem>
                                </asp:DropDownList></span>
						    </div>
						    <div>
						     	<span> 
                                     <asp:Button ID="Button2" runat="server" Text="Manufacture Date" 
                                    onclick="Button2_Click"/></span>
                                    <br />
                                    <br />
                                     <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
      BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" 
      DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" 
      ForeColor="#003399" Height="150px" Visible="False" Width="160px" 
      onselectionchanged="Calendar1_SelectionChanged">
      <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
      <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
      <OtherMonthDayStyle ForeColor="#999999" />
      <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
      <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
      <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" 
          Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
      <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
      <WeekendDayStyle BackColor="#CCCCFF" />
  </asp:Calendar>

                                    <br />
                                    <br />
						   	 
						    	<span><asp:TextBox ID="TextBox3" runat="server" class="sam" Visible="False"></asp:TextBox></span>
						    </div>
						    <div>
						    	<span> 
                                     <asp:Button ID="Button3" runat="server" Text="Expire Date" 
                                    onclick="Button3_Click" /></span>
                                    <br />
                                    <br />
                                     <asp:Calendar ID="Calendar2" runat="server" BackColor="White" 
      BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" 
      DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" 
      ForeColor="#003399" Height="150px" 
      onselectionchanged="Calendar2_SelectionChanged" Visible="False" Width="160px">
      <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
      <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
      <OtherMonthDayStyle ForeColor="#999999" />
      <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
      <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
      <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" 
          Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
      <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
      <WeekendDayStyle BackColor="#CCCCFF" />
  </asp:Calendar>

                                    <br />
                                    <br />
						   	 
						    	<span><asp:TextBox ID="TextBox4" runat="server" class="sam" placeholder="" 
                                    Visible="False"></asp:TextBox></span>
						    </div>
                            
						   <div>
						   	  <span> 
                                     <asp:Button ID="Button1" runat="server" Text="Button" 
                                   onclick="Button1_Click" /></span>
						   	 
						   </div>   
					    </form>
                        
				
    
		
</body></html>
