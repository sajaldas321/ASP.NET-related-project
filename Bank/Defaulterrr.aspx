<%@ Page Title="" Language="C#" MasterPageFile="~/master.master" AutoEventWireup="true" CodeFile="Defaulterrr.aspx.cs" Inherits="Defaulterrr" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style33 {
        width: 185px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;&nbsp;&nbsp;&nbsp;
    <table >
        <tr>
            <td class="auto-style33">Click to view defaulters</td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
            </td>
        </tr>
        <tr>
            <td class="auto-style33">
    <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>
            </td>
        </tr>
    </table>
    <br />
    <br />
    <br />
    </asp:Content>

