<%@ Page Title="" Language="C#" MasterPageFile="~/master.master" AutoEventWireup="true" CodeFile="balance.aspx.cs" Inherits="balance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        
        .auto-style31 {
            font-size: x-large;
        }
        .auto-style33 {
            height: 27px;
            width: 270px;
        }
        .auto-style35 {
            height: 27px;
            width: 536px;
        }
        .auto-style37 {
            text-align: center;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <p>
    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
        <asp:View ID="View1" runat="server">
            <strong><span class="auto-style31">Check Balance</span></strong><br />
            <table style="width: 100%; background-color: #FFFFCC;"100%">
                <tr>
                    <td class="auto-style33" >Account no</td>
                    <td class="auto-style35">
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Select item from drop down"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                </table>
                   <asp:Literal ID="Literal1" runat="server"></asp:Literal>
            <br />
            <table  border="1" align="center">
                <tr>
                    <td class="auto-style37" style="background-color: #FFFFCC">Account no</td>
                    <td class="auto-style37" style="background-color: #FFFFCC">username</td>
                    <td class="auto-style37" style="background-color: #FFFFCC">address</td>
                    <td class="auto-style37" style="background-color: #FFFFCC">phone</td>
                    <td class="auto-style37" style="background-color: #FFFFCC">initaial balance</td>
                    <td class="auto-style37" style="background-color: #FFFFCC">gender</td>
                    <td class="auto-style37" style="background-color: #FFFFCC">document proof</td>
                    <td class="auto-style37" style="background-color: #FFFFCC">Total withdrawal</td>
                    <td class="auto-style37" style="background-color: #FFFFCC">Total deposit</td>
                    <td class="auto-style37" style="background-color: #FFFFCC">Total transfer</td>
                    <td class="auto-style37" style="background-color: #FFFFCC">balance</td>
                    <td class="auto-style37" style="background-color: #FFFFCC">lodge complain</td>
                    <td class="auto-style37" style="background-color: #FFFFCC">Reason</td>
                    <td class="auto-style37" style="background-color: #FFFFCC">Submit</td>
                </tr>
                <tr>
                    <td class="auto-style37">
                        <asp:Literal ID="Literal2" runat="server"></asp:Literal>
                    </td>
                    <td class="auto-style37">
                        <asp:Literal ID="Literal3" runat="server"></asp:Literal>
                    </td>
                    <td class="auto-style37">
                        <asp:Literal ID="Literal4" runat="server"></asp:Literal>
                    </td>
                    <td class="auto-style37">
                        <asp:Literal ID="Literal5" runat="server"></asp:Literal>
                    </td>
                    <td class="auto-style37">
                        <asp:Literal ID="Literal6" runat="server"></asp:Literal>
                    </td>
                    <td class="auto-style37">
                        <asp:Literal ID="Literal7" runat="server"></asp:Literal>
                    </td>
                    <td class="auto-style37">
                        <asp:Literal ID="Literal9" runat="server"></asp:Literal>
                    </td>
                    <td class="auto-style37">
                        <asp:Literal ID="Literal12" runat="server"></asp:Literal>
                    </td>
                    <td class="auto-style37">
                        <asp:Literal ID="Literal13" runat="server"></asp:Literal>
                    </td>
                    <td class="auto-style37">
                        <asp:Literal ID="Literal14" runat="server"></asp:Literal>
                    </td>
                    <td class="auto-style37">
                        <asp:Literal ID="Literal11" runat="server"></asp:Literal>
                    </td>
                    <td class="auto-style37">
                        <asp:CheckBox ID="CheckBox1" runat="server" />
                    </td>
                    <td class="auto-style37">
                        <asp:TextBox ID="TextBox1" runat="server" Height="50px"></asp:TextBox>
                    </td>
                    <td class="auto-style37">
                        <asp:Button ID="Button2" runat="server" Text="Button" OnClick="Button2_Click" />
                    </td>
                </tr>
            </table>
            &nbsp;&nbsp;
            <asp:Literal ID="Literal10" runat="server"></asp:Literal>
            <br />
            <br />
            <br />
                    
        </asp:View>
    </asp:MultiView>
    </p>
    <p>
        &nbsp;</p>
   
</asp:Content>

