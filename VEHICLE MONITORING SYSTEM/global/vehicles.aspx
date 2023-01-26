<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="vehicles.aspx.cs" Inherits="global_vehicles" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center">
        <div style="text-align: center">
            <table style="width: 392px; height: 150px">
                <tr>
                    <td colspan="2" style="width: 416px">
                        <strong>
                        VEHICLE DETAILS</strong></td>
                </tr>
                <tr>
                    <td colspan="2" style="width: 416px; height: 74px;" align="center" valign="top">
                        <div style="text-align: center">
                            <table style="width: 500px; height: 1px">
                                <tr>
                                    <td style="width: 100px">
                                        VehicleType</td>
                                    <td style="width: 100px">
                                        &nbsp;<asp:DropDownList ID="DropDownList1" runat="server">
                                        </asp:DropDownList></td>
                                    <td style="width: 100px">
                                        VehicleModel</td>
                                    <td style="width: 100px">
                                        <asp:DropDownList ID="DropDownList2" runat="server">
                                        </asp:DropDownList></td>
                                    <td style="width: 100px">
                                        <asp:Button ID="Button1" runat="server" Font-Bold="True" OnClick="Button1_Click"
                                            Text="Search" /></td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        (Hero Honda,Bajaj etc)</td>
                                    <td colspan="2">
                                        (Passion,Splender,Pulsor etc)</td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                            </table>
                        </div>
                        &nbsp; &nbsp;
                        &nbsp;&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2" style="width: 416px">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="4">
                        
                            <EmptyDataTemplate>
                                <span><strong style="color: #ff3366">There are no
                                    vehicle details</strong></span>
                            </EmptyDataTemplate>
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <RowStyle BackColor="#EFF3FB" />
                            <EditRowStyle BackColor="#2461BF" />
                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <AlternatingRowStyle BackColor="White" />
                            
                            <Columns>
                            
                            <asp:TemplateField HeaderText="VehicleImage">
                            <ItemTemplate>
                            <asp:Image ID="vimage" runat="server" ImageUrl='<%#Eval("vehicleimage") %>' Width="100" Height="100" />
                            </ItemTemplate>
                            </asp:TemplateField>
                            
                             <asp:TemplateField HeaderText="VehicleType">
                            <ItemTemplate>
                            <asp:Label ID="vtype" runat="server" Text='<%#Eval("vehiclename") %>'></asp:Label>
                            </ItemTemplate>
                            </asp:TemplateField>
                            
                            <asp:TemplateField HeaderText="VehicleModel">
                            <ItemTemplate>
                            <asp:Label ID="vmodel" runat="server" Text='<%#Eval("vehiclemodel") %>'></asp:Label>
                            </ItemTemplate>
                            </asp:TemplateField>
                            
                            <asp:TemplateField HeaderText="displacement">
                            <ItemTemplate>
                            <asp:Label ID="vdispalcement" runat="server" Text='<%#Eval("displacement") %>'></asp:Label>
                            </ItemTemplate>
                            </asp:TemplateField>
                            
                            <asp:TemplateField HeaderText="FuelEconomy">
                            <ItemTemplate>
                            <asp:Label ID="vfeconomy" runat="server" Text='<%#Eval("fueleconomy") %>'></asp:Label>
                            </ItemTemplate>
                            </asp:TemplateField>
                            
                            <asp:TemplateField HeaderText="FuelType">
                            <ItemTemplate>
                            <asp:Label ID="vftype" runat="server" Text='<%#Eval("fueltype") %>'></asp:Label>
                            </ItemTemplate>
                            </asp:TemplateField>
                            
                                <asp:HyperLinkField DataNavigateUrlFields="vehiclename,vehiclemodel," DataNavigateUrlFormatString="http://localhost:1033/vmonitoringsystem/global/vehicletype.aspx?vname={0}&vmodel={1}"
                                    Text="more" />                            
                            
                            </Columns>
                            
                        </asp:GridView>
                    </td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>

