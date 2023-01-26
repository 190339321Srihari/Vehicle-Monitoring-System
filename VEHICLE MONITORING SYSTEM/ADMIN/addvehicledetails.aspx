<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="addvehicledetails.aspx.cs" Inherits="ADMIN_addnewvehicle" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center">
        <table style="width: 356px; height: 100px">
            <tr>
                <td colspan="2">
                    <strong>To Add Vehicle Details</strong></td>
            </tr>
            <tr>
                <td colspan="2">
                    <strong style="color: #ff3366">VehicleModelType</strong></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    Vehicle Type </td>
                <td style="width: 100px">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td style="width: 100px; height: 21px;">
                    Vehicle Model</td>
                <td style="width: 100px; height: 21px;">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px; height: 21px">
                    Upload Picture</td>
                <td style="width: 100px; height: 21px">
                    <asp:FileUpload ID="FileUpload1" runat="server" /></td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp; <strong style="color: #ff3366">Engine Parameters</strong></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    Engine Type
                </td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    Displacement</td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;<strong style="color: #ff3366">Fuel Efficiency</strong></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    Fuel Economy</td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    Fuel Capacity</td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    Fuel Reserve</td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    Fuel Type</td>
                <td style="width: 100px">
                    <asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem>---Select---</asp:ListItem>
                        <asp:ListItem>Petrol</asp:ListItem>
                        <asp:ListItem>Diesel</asp:ListItem>
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td colspan="2">
                    <strong style="color: #ff3366">Dimentions</strong></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    Length</td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    Height</td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    Width</td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td colspan="2">
                    <strong style="color: #ff3366">Drive Train</strong></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    Clutch</td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    Gear Box</td>
                <td style="width: 100px">
                    <asp:DropDownList ID="DropDownList3" runat="server">
                        <asp:ListItem>---Select---</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:Button ID="Button1" runat="server" Font-Bold="True" OnClick="Button1_Click"
                        Text="Submit.." /></td>
                <td style="width: 100px">
                    <asp:Button ID="Button2" runat="server" Font-Bold="True" Text="Reset.." /></td>
            </tr>
        </table>
    </div>
</asp:Content>

