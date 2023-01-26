<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="vehicletype.aspx.cs" Inherits="ADMIN_vehicletype" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center">
        <table style="width: 286px; height: 100px">
            <tr>
                <td colspan="2" style="height: 21px">
                    <strong>New VehicleType</strong></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    Vehicle Type&nbsp; :</td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit.." /></td>
            </tr>
            <tr>
                <td colspan="2">
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <strong>Available VehicleTypes</strong></td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:GridView ID="GridView1" runat="server">
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

