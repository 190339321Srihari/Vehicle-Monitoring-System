<%@ Page Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="VehicleSelectionOrders.aspx.cs" Inherits="Distributor_VehicleSelectionOrders" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center">
        <table style="width: 100px; height: 100px">
            <tr>
                <td align="center" style="width: 100px" valign="top">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                        CellPadding="4" ForeColor="#333333" GridLines="None" OnPageIndexChanging="GridView1_PageIndexChanging">
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <RowStyle BackColor="#EFF3FB" />
                        <EmptyDataTemplate>
                            <strong style="color: #ff3366">There are no vehicle selection orders.</strong>
                        </EmptyDataTemplate>
                        <EditRowStyle BackColor="#2461BF" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <AlternatingRowStyle BackColor="White" />
                        
                        <Columns>
                        <asp:TemplateField HeaderText="Vehicleid">                        <ItemTemplate>
                        <asp:Label ID="vsid" runat="server" Text='<%#Eval("vsid")%>'></asp:Label>
                        </ItemTemplate>
                        </asp:TemplateField>
                       
                        <asp:TemplateField HeaderText="VehicleType">                        <ItemTemplate>
                        <asp:Label ID="vsid" runat="server" Text='<%#Eval("vehiclename")%>'></asp:Label>
                        </ItemTemplate>
                        </asp:TemplateField>
                                               
                        <asp:TemplateField HeaderText="SelectedPersonName">                        <ItemTemplate>
                        <asp:Label ID="vsid" runat="server" Text='<%#Eval("firstname")%>'></asp:Label>
                        </ItemTemplate>
                        </asp:TemplateField>
                                                
                        <asp:TemplateField HeaderText="Contactno">                        <ItemTemplate>
                        <asp:Label ID="vsid" runat="server" Text='<%#Eval("mobileno")%>'></asp:Label>
                        </ItemTemplate>
                        </asp:TemplateField>
                            <asp:HyperLinkField DataNavigateUrlFields="vsid,vehiclename" Text="details" DataNavigateUrlFormatString="http://localhost:1033/vmonitoringsystem/distributor/showpersondetails.aspx?vsid={0}&vname={1}" HeaderText="Show Details" />
                            
                            <asp:HyperLinkField DataNavigateUrlFields="vsid,vehiclename" DataNavigateUrlFormatString="http://localhost:1033/vmonitoringsystem/distributor/vehicleregistration.aspx?vsid={0}&vname={1}"
                                HeaderText="Goto Register" Text="register" />
                            
                        </Columns>
                        
                        
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

