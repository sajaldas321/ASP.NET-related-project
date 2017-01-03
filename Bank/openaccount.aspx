<%@ Page Title="" Language="C#" MasterPageFile="~/master.master" AutoEventWireup="true" CodeFile="openaccount.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style14 {
            width: 579px;
            font-size: medium;
        }
        .auto-style16 {
            width: 45%;
        }
        .auto-style17 {
            width: 149px;
        }
        .auto-style19 {
            width: 287px;
        }
        .auto-style30 {
            font-size: medium;
        }
        .auto-style31 {
            width: 287px;
            font-size: small;
        }
        
        .auto-style33 {
            width: 579px;
            font-size: x-large;
        }
        .auto-style34 {
            height: 22px;
            width: 267px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <strong><span class="auto-style14">&nbsp;</span><span class="auto-style33">Open new account</span></strong><span class="auto-style30">&nbsp;&nbsp;&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<table  class="auto-style16" style="width:100%;background-color: #FFFFCC; font-family: Verdana, Geneva, Tahoma, sans-serif">
        <tr>
            <td class="auto-style34" >Username</td>
            <td class="auto-style17">
    <asp:TextBox ID="TextBox6" runat="server" ></asp:TextBox>
            </td>
            <td class="auto-style19">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*All fields are mandatory" ControlToValidate="TextBox6" ForeColor="Red" CssClass="auto-style32"></asp:RequiredFieldValidator>
            </td>
            <td rowspan="15">
                <asp:Literal ID="Literal1" runat="server"></asp:Literal>
            </td>
        </tr>
        <tr>
            <td class="auto-style34" >Address&nbsp;&nbsp;</td>
            <td class="auto-style17">
    <asp:TextBox ID="TextBox7" runat="server" ></asp:TextBox>
            </td>
            <td class="auto-style19">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*All fields are mandatory" ControlToValidate="TextBox7" ForeColor="Red" CssClass="auto-style32"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style34" >Phone no&nbsp;&nbsp;&nbsp;</td>
            <td class="auto-style17">
    <asp:TextBox ID="TextBox8" runat="server" ></asp:TextBox>
            </td>
            <td class="auto-style19">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style34" >Opening amount</td>
            <td class="auto-style17">
    <asp:TextBox ID="TextBox9" runat="server" ></asp:TextBox>
            </td>
            <td class="auto-style19">
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox9" ErrorMessage="*Amount should be more than 1000" ForeColor="Red" MaximumValue="5000" MinimumValue="1000" CssClass="auto-style32"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style34" >Gender&nbsp;&nbsp;&nbsp;</td>
            <td class="auto-style17">
    <asp:DropDownList ID="DropDownList2" runat="server" >
        <asp:ListItem>Female</asp:ListItem>
        <asp:ListItem>Male</asp:ListItem>
    </asp:DropDownList>
            </td>
            <td class="auto-style31">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style34" >Upload document proof</td>
            <td class="auto-style17">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
            <td class="auto-style31">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style34" >
    <asp:Button ID="Button2" runat="server" Text="Submit" OnClick="Button2_Click" />
                </td>
            <td class="auto-style17">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td class="auto-style31">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style34" >
                &nbsp;</td>
            <td class="auto-style17">
                &nbsp;</td>
            <td class="auto-style31">
                &nbsp;</td>
        </tr>
        </table>
    </p>
</asp:Content>

