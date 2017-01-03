<%@ Page Title="" Language="C#" MasterPageFile="~/master.master" AutoEventWireup="true" CodeFile="transfer.aspx.cs" Inherits="transfer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style30 {
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
        <asp:View ID="View1" runat="server">
            <span class="auto-style30"><strong>Transfer form</strong></span><br />
            <table style="width: 100%; background-color: #FFFFCC;"100%">
                <tr>
                    <td >Account no</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnTextChanged="DropDownList1_SelectedIndexChanged" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged1">
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                        <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Select item from drop down"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td >
                        <asp:Literal ID="Literal2" runat="server" Text="target account no"></asp:Literal>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList2" runat="server" Visible="False">
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DropDownList2" ErrorMessage="Select item from drop down"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td >
                        <asp:Literal ID="Literal3" runat="server" Text="amount"></asp:Literal>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server" Height="17px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td >
                        <asp:Literal ID="Literal4" runat="server" Text="Reason"></asp:Literal>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td >
                        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                        <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </asp:View>
    </asp:MultiView>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
</asp:Content>

