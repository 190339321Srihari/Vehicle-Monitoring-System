<%@ Page Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="VehicleRegistration.aspx.cs" Inherits="Distributor_VehicleRegistration" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center">
        <table style="width: 362px; height: 100px">
            <tr>
                <td colspan="3" style="height: 20px">
                    <strong>Vehicle Registration</strong></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    Vehicle Id</td>
                <td style="width: 100px">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="Green" Width="68px"></asp:Label></td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    Vehicletype</td>
                <td style="width: 100px">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Green"></asp:Label></td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    Vehiclename</td>
                <td style="width: 100px">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="Green"></asp:Label></td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px; height: 26px">
                    Name</td>
                <td style="width: 100px; height: 26px">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                <td style="width: 100px; height: 26px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    Mobile no</td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    Vehicle Reg no</td>
                <td align="left" style="width: 100px">
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox></td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    Ex Date</td>
                <td align="left" style="width: 100px">
                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox></td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    State</td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    Ciry</td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    Address</td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine"></asp:TextBox></td>
                <td style="width: 100px">
                </td>
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
                <td colspan="3" style="height: 21px">
                    <asp:Button ID="Button1" runat="server" Font-Bold="True" OnClick="Button1_Click"
                        Text="Submit.." Width="69px" /></td>
            </tr>
        </table>
    </div>
</asp:Content>

