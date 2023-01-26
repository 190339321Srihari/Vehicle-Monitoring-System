<%@ Page Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="ShowPersonDetails.aspx.cs" Inherits="Distributor_ShowPersonDetails" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center">
        <table style="width: 290px; height: 100px">
            <tr>
                <td align="center" style="width: 100px" valign="top">
                    <asp:FormView ID="FormView1" runat="server" BackColor="White" BorderColor="#E7E7FF"
                        BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
                        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                        <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                        <EmptyDataTemplate>
                            <strong style="color: #ff3366">There are no details of person.</strong>
                        </EmptyDataTemplate>
                        <ItemTemplate>
                            <div style="text-align: center">
                                <table style="width: 454px; height: 100px">
                                    <tr>
                                        <td rowspan="4" style="width: 100px">
                                            <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("vehicleimage")%>' Height="150px" Width="150px" /></td>
                                        <td colspan="2">
                                            <strong>Vehicle Details :</strong></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 100px">
                                            Vehicle Id</td>
                                        <td style="width: 100px">
                                            <asp:Label ID="Label5" runat="server" Text='<%#Eval("vdid")%>'></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 100px">
                                            Vehicle Model</td>
                                        <td style="width: 100px">
                                            <asp:Label ID="Label7" runat="server" Text='<%#Eval("vehiclename")%>'></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 100px">
                                        </td>
                                        <td style="width: 100px">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" style="height: 21px">
                                            <strong>Person Details :</strong></td>
                                        <td style="width: 100px; height: 21px">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 100px">
                                            Firstname</td>
                                        <td style="width: 100px">
                                            <asp:Label ID="Label2" runat="server" Text='<%#Eval("firstname ")%>'></asp:Label></td>
                                        <td style="width: 100px">
                                            <strong>Contact No :</strong></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 100px">
                                            Lastname</td>
                                        <td style="width: 100px">
                                            <asp:Label ID="Label3" runat="server" Text='<%#Eval("lastname")%>'></asp:Label></td>
                                        <td style="width: 100px">
                                            <asp:Label ID="Label1" runat="server" Text='<%#Eval("mobileno")%>' Width="90px"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <strong>Person Address :</strong></td>
                                        <td style="width: 100px">
                                            <strong>Selection Date:</strong></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 100px; height: 20px">
                                            State</td>
                                        <td style="width: 100px; height: 20px">
                                            <asp:Label ID="Label9" runat="server" Text='<%#Eval("state")%>'></asp:Label></td>
                                        <td style="width: 100px; height: 20px">
                                            <asp:Label ID="Label8" runat="server" Text='<%#Eval("sdate")%>' Width="178px"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 100px; height: 20px">
                                            City</td>
                                        <td style="width: 100px; height: 20px">
                                            <asp:Label ID="Label10" runat="server" Text='<%#Eval("city")%>'></asp:Label></td>
                                        <td style="width: 100px; height: 20px">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 100px; height: 20px">
                                            Address</td>
                                        <td style="width: 100px; height: 20px">
                                            <asp:Label ID="Label4" runat="server" Text='<%#Eval("address")%>'></asp:Label></td>
                                        <td style="width: 100px; height: 20px">
                                            </td>
                                    </tr>
                                </table>
                            </div>
                        </ItemTemplate>
                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                    </asp:FormView>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

