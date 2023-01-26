<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="vehicletype.aspx.cs" Inherits="global_vehicletype" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: left">
        <table style="width: 344px; height: 100px">
            <tr>
                <td style="width: 100px; height: 1px;">
                    <strong>Selected Vehicletype Information :</strong></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:FormView ID="FormView1" runat="server" CellPadding="4" ForeColor="#333333" Width="264px" OnPageIndexChanging="FormView1_PageIndexChanging">
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <EditRowStyle BackColor="#2461BF" />
                        <RowStyle BackColor="#EFF3FB" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <EmptyDataTemplate>
                            <strong style="color: #ff3366">There are no information of selected vehicle.</strong>
                        </EmptyDataTemplate>
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <ItemTemplate>
                            <div style="text-align: center">
                                <table style="width: 432px; height: 100px">
                                    <tr>
                                        <td colspan="2" style="height: 17px">
                                            <strong>Vehicle Details</strong></td>
                                        <td rowspan="1" style="width: 100px">
                                            <strong>Vehicle Picture</strong></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 100px; height: 17px">
                                            Vehicle Name :</td>
                                        <td style="width: 100px; height: 17px">
                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("vehiclename") %>' Width="106px" Font-Bold="True" ForeColor="Green"></asp:Label></td>
                                        <td rowspan="8" style="width: 100px">
                                            <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("vehicleimage")%>' Height="200px" Width="200px" /></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 100px">
                                            Vehicle Model :</td>
                                        <td style="width: 100px">
                                            <asp:Label ID="Label13" runat="server" Text='<%# Eval("vehiclemodel") %>' Font-Bold="True" ForeColor="Green"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <strong>Engine Type</strong></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 100px">
                                            Engine Type</td>
                                        <td style="width: 100px">
                                            <asp:Label ID="Label11" runat="server" Text='<%# Eval("enginetype") %>' Font-Bold="True" ForeColor="Green"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 100px">
                                            Displacement</td>
                                        <td style="width: 100px">
                                            <asp:Label ID="Label12" runat="server" Text='<%# Eval("displacement") %>' Font-Bold="True" ForeColor="Green"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <strong>Fuel Parameters</strong></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 100px">
                                            Fuel Economy</td>
                                        <td style="width: 100px">
                                            <asp:Label ID="Label7" runat="server" Text='<%# Eval("fueleconomy") %>' Font-Bold="True" ForeColor="Green"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 100px">
                                            Fuel Capacity</td>
                                        <td style="width: 100px">
                                            <asp:Label ID="Label8" runat="server" Text='<%# Eval("fuelcapacity") %>' Font-Bold="True" ForeColor="Green"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 100px">
                                            Fuel Reserve</td>
                                        <td style="width: 100px">
                                            <asp:Label ID="Label9" runat="server" Text='<%# Eval("fuelreserve") %>' Font-Bold="True" ForeColor="Green"></asp:Label></td>
                                        <td style="width: 100px">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 100px">
                                            Fuel Type</td>
                                        <td style="width: 100px">
                                            <asp:Label ID="Label10" runat="server" Text='<%# Eval("fueltype") %>' Font-Bold="True" ForeColor="Green"></asp:Label></td>
                                        <td style="width: 100px">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <strong>Dimentions</strong></td>
                                        <td style="width: 100px">
                                            <strong>Drive&nbsp; Train</strong></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 100px">
                                            Length</td>
                                        <td style="width: 100px">
                                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("lenth") %>' Font-Bold="True" ForeColor="Green"></asp:Label></td>
                                        <td style="width: 100px">
                                            <div style="text-align: center">
                                                <table>
                                                    <tr>
                                                        <td style="width: 100px">
                                                            Clutch</td>
                                                        <td style="width: 100px">
                                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("clutch") %>' Width="80px" Font-Bold="True" ForeColor="Green"></asp:Label></td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 100px">
                                            Height</td>
                                        <td style="width: 100px">
                                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("height") %>' Font-Bold="True" ForeColor="Green"></asp:Label></td>
                                        <td style="width: 100px">
                                            <table>
                                                <tr>
                                                    <td style="width: 100px">
                                                        GearBox</td>
                                                    <td style="width: 100px">
                                                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("gearbox") %>' Width="90px" Font-Bold="True" ForeColor="Green"></asp:Label></td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 100px; height: 21px">
                                            Width</td>
                                        <td style="width: 100px; height: 21px">
                                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("width") %>' Font-Bold="True" ForeColor="Green"></asp:Label></td>
                                        <td style="width: 100px; height: 21px">
                                            <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" OnClick="LinkButton1_Click">Register....</asp:LinkButton></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 100px">
                                        </td>
                                        <td style="width: 100px">
                                        </td>
                                        <td style="width: 100px">
                                        </td>
                                    </tr>
                                    
                                    
                                </table>
                            </div>
                        </ItemTemplate>
                    </asp:FormView>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

