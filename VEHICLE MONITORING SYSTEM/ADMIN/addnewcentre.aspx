<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="addnewcentre.aspx.cs" Inherits="ADMIN_addnewcentre" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center">
        <table style="width: 444px; height: 100px">
            <tr>
                <td colspan="3" style="height: 21px">
                    <strong>Add New CenterDetails</strong></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    Center Name</td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    State</td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    City</td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    Address</td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" /></td>
            </tr>
            <tr>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <strong>Available CentreDetails</strong></td>
            </tr>
            <tr>
                <td colspan="3" rowspan="2">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="4" Width="331px">
                        <EmptyDataTemplate>
                            &nbsp;<strong style="color: #ff3366">There are no services details.</strong>
                        </EmptyDataTemplate>
                    </asp:GridView>
                </td>
            </tr>
            <tr>
            </tr>
        </table>
    </div>
</asp:Content>

