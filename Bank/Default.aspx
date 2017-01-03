<%@ Page Title="" Language="C#" MasterPageFile="~/master.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
<asp:TreeView ID="TreeView1" runat="server" ImageSet="Simple">
    <HoverNodeStyle Font-Underline="True" ForeColor="#5555DD" />
    <Nodes>
        <asp:TreeNode Text="HOME" Value="HOME"></asp:TreeNode>
        <asp:TreeNode Text="NEW ACCOUNT" Value="NEW ACCOUNT"></asp:TreeNode>
        <asp:TreeNode Text="DEPOSIT" Value="DEPOSIT"></asp:TreeNode>
        <asp:TreeNode Text="WITHDRAW" Value="WITHDRAW"></asp:TreeNode>
        <asp:TreeNode Text="TRANSFER" Value="TRANSFER"></asp:TreeNode>
        <asp:TreeNode Text="BALANCE" Value="BALANCE"></asp:TreeNode>
        <asp:TreeNode Text="CLOSE A/C" Value="CLOSE A/C"></asp:TreeNode>
        <asp:TreeNode Text="SEARCH" Value="SEARCH"></asp:TreeNode>
    </Nodes>
    <NodeStyle Font-Names="Tahoma" Font-Size="10pt" ForeColor="Black" HorizontalPadding="0px" NodeSpacing="0px" VerticalPadding="0px" />
    <ParentNodeStyle Font-Bold="False" />
    <SelectedNodeStyle Font-Underline="True" ForeColor="#5555DD" HorizontalPadding="0px" VerticalPadding="0px" />
</asp:TreeView>
</asp:Content>

