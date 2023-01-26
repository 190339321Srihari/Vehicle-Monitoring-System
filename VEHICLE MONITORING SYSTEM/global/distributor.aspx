<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="distributor.aspx.cs" Inherits="contactus" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td colspan="2">
                ADMIN&nbsp; LOGIN</td>
        </tr>
        <tr>
            <td style="width: 100px; height: 17px">
                UserId</td>
            <td style="width: 100px; height: 17px">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 100px; height: 21px">
                Password</td>
            <td style="width: 100px; height: 21px">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="2" style="height: 21px">
                <asp:Button ID="Button1" runat="server"  Text="Submit" OnClick="Button1_Click" /></td>
        </tr>
    </table>
</asp:Content>

