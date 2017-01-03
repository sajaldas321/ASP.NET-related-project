<%@ Page Title="" Language="C#" MasterPageFile="~/master.master" AutoEventWireup="true" CodeFile="withdraw.aspx.cs" Inherits="withdraw" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style30 {
            width: 503px;
            text-align: left;
        }
        .auto-style31 {
            width: 100%;
        }
        .auto-style32 {
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <span class="auto-style32"><strong>Withdraw form</strong></span>
    <table  style="width:100%; background-color: #FFFFCC" class="auto-style31">
    <tr>
        <td class="auto-style30">Account no</td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
            <asp:Label ID="Label2" runat="server" Text="Label" Visible="False" Font-Size="Large" ForeColor="Red"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Select item from drop down"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style30">
            <asp:Literal ID="Literal2" runat="server"></asp:Literal>
        </td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style30">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
            <asp:Literal ID="Literal1" runat="server"></asp:Literal>
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>

