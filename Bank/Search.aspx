<%@ Page Title="" Language="C#" MasterPageFile="~/master.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style31 {
            width: 100%;
        }
        .auto-style32 {
            font-size: xx-large;
            width: 231px;
            text-decoration: underline;
        }
        .auto-style34 {
            width: 196px;
            height: 28px;
        }
        .auto-style45 {
            font-size: large;
            width: 196px;
            text-decoration: underline;
        }
        .auto-style48 {
            width: 196px;
            height: 206px;
        }
        .auto-style50 {
            font-size: large;
            width: 217px;
            text-decoration: underline;
        }
        .auto-style51 {
            width: 217px;
            height: 28px;
        }
        .auto-style54 {
            width: 217px;
            height: 206px;
        }
        .auto-style55 {
            margin-top: 0px;
        }
        .auto-style56 {
            font-size: large;
            width: 735px;
            text-decoration: underline;
        }
        .auto-style58 {
            width: 735px;
            height: 206px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;" class="auto-style31">
        <tr>
            <td class="auto-style50"><strong>Search</strong></td>
            <td class="auto-style45">&nbsp;</td>
            <td class="auto-style56">&nbsp;</td>
            <td class="auto-style45">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style51">
                <asp:Panel ID="Panel6" runat="server" Height="539px" Width="374px">
                    <strong style="background-color: #FFFFFF">Search accountholder&nbsp;recently<br />
                    <asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem>Deposited</asp:ListItem>
                        <asp:ListItem>Withdrawn</asp:ListItem>
                        <asp:ListItem>Transferred</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    From<br /> <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="::" />
                    <asp:Label ID="Label2" runat="server" Visible="False"></asp:Label>
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="94px" OnSelectionChanged="Calendar1_SelectionChanged" Visible="False" Width="244px">
                        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                        <NextPrevStyle VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#808080" />
                        <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                        <SelectorStyle BackColor="#CCCCCC" />
                        <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                        <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <WeekendDayStyle BackColor="#FFFFCC" />
                    </asp:Calendar>
                    <br />
                    To&nbsp;
                    <br />
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="::" />
                    <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
                    <asp:Calendar ID="Calendar2" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" OnSelectionChanged="Calendar2_SelectionChanged" Visible="False" Width="242px">
                        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                        <NextPrevStyle VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#808080" />
                        <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                        <SelectorStyle BackColor="#CCCCCC" />
                        <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                        <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <WeekendDayStyle BackColor="#FFFFCC" />
                    </asp:Calendar>
                    <br />
                    <br />
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Submit" Width="61px" />
                    <br />
                    </strong>
                </asp:Panel>
            </td>
            
            <td class="auto-style34">
                <asp:Panel ID="Panel7" runat="server" CssClass="auto-style55" Height="523px" Width="444px">
                    <asp:Label ID="Label4" runat="server" Text="Overall  transaction detail:" Visible="False" BackColor="#FFFFCC" Font-Size="Large"></asp:Label>
                    
                    <asp:GridView ID="GridView2" runat="server" CellPadding="4" Width="100%" ShowFooter="True" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <FooterStyle BackColor="#990000" ForeColor="White" Font-Bold="True" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                        <SortedAscendingCellStyle BackColor="#FDF5AC" />
                        <SortedAscendingHeaderStyle BackColor="#4D0000" />
                        <SortedDescendingCellStyle BackColor="#FCF6C0" />
                        <SortedDescendingHeaderStyle BackColor="#820000" />
                    </asp:GridView>
                </asp:Panel>
            </td>
            
            <td >
                <asp:Panel ID="Panel8" runat="server" Height="530px">
                    <asp:Label ID="Label3" runat="server" Text="Daily transaction detail:" Visible="False" BackColor="#FFFFCC" Font-Size="Large"></asp:Label>
                    <asp:GridView ID="GridView1" runat="server" CellPadding="4" Width="100%" ShowFooter="True" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <FooterStyle BackColor="#990000" ForeColor="White" Font-Bold="True" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                        <SortedAscendingCellStyle BackColor="#FDF5AC" />
                        <SortedAscendingHeaderStyle BackColor="#4D0000" />
                        <SortedDescendingCellStyle BackColor="#FCF6C0" />
                        <SortedDescendingHeaderStyle BackColor="#820000" />
                    </asp:GridView>
                </asp:Panel>
               </td>
        </tr>
        <tr>
            <td class="auto-style54" >&nbsp;</td>
            <td class="auto-style48" >
                &nbsp;</td>
                        
            <td class="auto-style58" >
                &nbsp;</td>
                        
            <td class="auto-style48" >
                &nbsp;</td>
                        
        <tr>
            <td class="auto-style54" >&nbsp;</td>
            <td class="auto-style48" >
                &nbsp;</td>
                        
            <td class="auto-style58" >
                &nbsp;</td>
                        
            <td class="auto-style48" >
                &nbsp;</td>
                        
        <tr>
            <td class="auto-style54" >&nbsp;</td>
            <td class="auto-style48" >
                &nbsp;</td>
                        
            <td class="auto-style58" >
                &nbsp;</td>
                        
            <td class="auto-style48" >
                &nbsp;</td>
                        
        <tr>
            <td class="auto-style54" >&nbsp;</td>
            <td class="auto-style48" >
                &nbsp;</td>
                        
            <td class="auto-style58" >
                &nbsp;</td>
                        
            <td class="auto-style48" >
                &nbsp;</td>
                        
            </table>
    </asp:Content>

