<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="global_register" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: left">
        <table style="width: 307px; height: 100px">
            <tr>
                <td colspan="2">
                    <strong>Vehicle Selection Information :</strong></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    Vehicle Name</td>
                <td style="width: 100px">
                    <asp:Label ID="Label1" runat="server" BackColor="#00C0C0" Font-Bold="True" Width="110px"></asp:Label></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    Vehicle Model</td>
                <td style="width: 100px">
                    <asp:Label ID="Label2" runat="server" BackColor="#00C0C0" Font-Bold="True" Width="111px"></asp:Label></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    First Name</td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    Last Name</td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    Mobile No</td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    State</td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    City</td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    Address</td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox6" runat="server" TextMode="MultiLine"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px; height: 21px;">
                </td>
                <td style="width: 100px; height: 21px;">
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2" style="height: 21px">
                    <asp:Button ID="Button1" runat="server" Font-Bold="True" OnClick="Button1_Click"
                        Text="Submit" /></td>
            </tr>
        </table>
    </div>

</asp:Content>

