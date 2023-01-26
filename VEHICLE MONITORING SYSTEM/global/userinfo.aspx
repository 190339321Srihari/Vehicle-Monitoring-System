<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="userinfo.aspx.cs" Inherits="global_userinfo" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center">
        <table style="width: 334px; height: 105px">
            <tr>
                <td colspan="2">
                    <strong>
                        <div style="text-align: center">
                            <table>
                                <tr>
                                    <td colspan="2">
                                        Vehicle Confirmation Details</td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                        Vrid</td>
                                    <td style="width: 100px">
                                        <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" AutoPostBack="True"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                        VehicleType</td>
                                    <td style="width: 100px">
                                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                        VehicleModel</td>
                                    <td style="width: 100px">
                                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td style="width: 100px; height: 21px">
                                        Name</td>
                                    <td style="width: 100px; height: 21px">
                                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                        MobileNo</td>
                                    <td style="width: 100px">
                                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                        VehicleRegNo</td>
                                    <td style="width: 100px">
                                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                        Expdate</td>
                                    <td style="width: 100px">
                                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                        State</td>
                                    <td style="width: 100px">
                                        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                        City</td>
                                    <td style="width: 100px">
                                        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                        Addres</td>
                                    <td style="width: 100px">
                                        <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                        RDate</td>
                                    <td style="width: 100px">
                                        <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                        <asp:Button ID="Button1" runat="server"  Text="Button" Width="97px" /></td>
                                    <td style="width: 100px">
                                        <asp:Button ID="Button2" runat="server" Text="Button" Width="125px" /></td>
                                </tr>
                            </table>
                        </div>
                        USER INFORMATION</strong></td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False"  >
                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <AlternatingRowStyle BackColor="White" />
                          <Columns>
                        
                        <asp:TemplateField HeaderText="VRId">
                       
                       <ItemTemplate>
                       <asp:Label ID="Label1" runat="server" Text='<%#Eval("vrid")%>'></asp:Label>
                       </ItemTemplate>
                        </asp:TemplateField>
                        
                        <asp:TemplateField HeaderText="VehicleType">
                        <ItemTemplate>
                        <asp:Label ID="vname" runat="server" Text='<%#Eval("vehiclename")%>'></asp:Label>
                        </ItemTemplate>
                        
                        
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="VehicleModel">
                        <ItemTemplate>
                        <asp:Label ID="vm" runat="server" Text='<%#Eval("vehiclemodel")%>'></asp:Label>
                        </ItemTemplate>
                        
                        </asp:TemplateField>
                        
                        <asp:TemplateField HeaderText="Name">
                        <ItemTemplate>
                        <asp:Label ID="name" runat="server" Text='<%#Eval("name")%>'></asp:Label>
                        </ItemTemplate>
                         
                        </asp:TemplateField>
                        
                        <asp:TemplateField HeaderText="Mobileno">
                        <ItemTemplate>
                        <asp:Label ID="mbno" runat="server" Text='<%#Eval("mbno")%>'></asp:Label>
                        </ItemTemplate>
                         
                        </asp:TemplateField>
                        
                         <asp:TemplateField HeaderText="vehicleregno">
                        <ItemTemplate>
                        <asp:Label ID="vrno" runat="server" Text='<%#Eval("vrno")%>'></asp:Label>
                        </ItemTemplate>
                         <EditItemTemplate>
                        <asp:TextBox ID="vrno1" runat="server" Text='<%#Eval("vrno")%>'></asp:TextBox>
                        </EditItemTemplate>
                        </asp:TemplateField>
                        
                        <asp:TemplateField HeaderText="expdate">
                        <ItemTemplate>
                        <asp:Label ID="ecp" runat="server" Text='<%#Eval("exdate")%>'></asp:Label>
                        </ItemTemplate>
                         <EditItemTemplate>
                        <asp:TextBox ID="exp1" runat="server" Text='<%#Eval("exdate")%>'></asp:TextBox>
                        </EditItemTemplate>
                        </asp:TemplateField>
                        
                        <asp:TemplateField HeaderText="State">
                        <ItemTemplate>
                        <asp:Label ID="state" runat="server" Text='<%#Eval("state")%>'></asp:Label>
                        </ItemTemplate>
                         
                        </asp:TemplateField>
                        
                        <asp:TemplateField HeaderText="City">
                        <ItemTemplate>
                        <asp:Label ID="city" runat="server" Text='<%#Eval("city")%>'></asp:Label>
                        </ItemTemplate>
                        
                        </asp:TemplateField>
                        
                        <asp:TemplateField HeaderText="Address">
                        <ItemTemplate>
                        <asp:Label ID="add" runat="server" Text='<%#Eval("address")%>'></asp:Label>
                        </ItemTemplate>
                        
                        </asp:TemplateField>
                        
                        <asp:TemplateField HeaderText="RDate">
                        <ItemTemplate>
                        <asp:Label ID="rdate" runat="server" Text='<%#Eval("rdate")%>'></asp:Label>
                        </ItemTemplate>
                        
                        </asp:TemplateField>
                        
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

