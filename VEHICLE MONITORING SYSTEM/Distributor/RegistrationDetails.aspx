<%@ Page Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="RegistrationDetails.aspx.cs" Inherits="Distributor_RegistrationDetails" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center">
        <table style="width: 100px; height: 100px">
            <tr>
                <td align="center" style="width: 100px" valign="top">
                    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowEditing="GridView1_RowEditing" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowUpdating="GridView1_RowUpdating">
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <RowStyle BackColor="#EFF3FB" />
                        <EmptyDataTemplate>
                            <strong style="color: #ff3366">There are no registration Details.</strong>
                        </EmptyDataTemplate>
                        <EditRowStyle BackColor="#2461BF" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <AlternatingRowStyle BackColor="White" />
                        
                        <Columns>
                        
                        <asp:TemplateField HeaderText="Edit">
                        <ItemTemplate>
                        <asp:LinkButton ID="e1" runat="server" Text="Edit" CommandName="Edit"></asp:LinkButton>
                        </ItemTemplate>
                        <EditItemTemplate>
                        <asp:LinkButton ID="u1" runat="server" Text="Update" CommandName="Update"></asp:LinkButton>
                        <asp:LinkButton ID="c1" runat="server" Text="Cancel" CommandName="Cancel"></asp:LinkButton>                        
                        </EditItemTemplate>
                        </asp:TemplateField>
                        
                        <asp:TemplateField HeaderText="VRId">
                        <ItemTemplate>
                        <asp:Label ID="vrid" runat="server" Text='<%#Eval("vrid")%>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                        <asp:Label ID="vrid1" runat="server" Text='<%#Eval("vrid")%>'></asp:Label>
                        </EditItemTemplate>
                        </asp:TemplateField>
                        
                        <asp:TemplateField HeaderText="VehicleType">
                        <ItemTemplate>
                        <asp:Label ID="vname" runat="server" Text='<%#Eval("vehiclename")%>'></asp:Label>
                        </ItemTemplate>
                         <EditItemTemplate>
                        <asp:Label ID="vname1" runat="server" Text='<%#Eval("vehiclename")%>'></asp:Label>
                        </EditItemTemplate>
                        
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="VehicleModel">
                        <ItemTemplate>
                        <asp:Label ID="vm" runat="server" Text='<%#Eval("vehiclemodel")%>'></asp:Label>
                        </ItemTemplate>
                         <EditItemTemplate>
                        <asp:Label ID="vm1" runat="server" Text='<%#Eval("vehiclemodel")%>'></asp:Label>
                        </EditItemTemplate>
                        </asp:TemplateField>
                        
                        <asp:TemplateField HeaderText="Name">
                        <ItemTemplate>
                        <asp:Label ID="name" runat="server" Text='<%#Eval("name")%>'></asp:Label>
                        </ItemTemplate>
                         <EditItemTemplate>
                        <asp:TextBox ID="name1" runat="server" Text='<%#Eval("name")%>'></asp:TextBox>
                        </EditItemTemplate>
                        </asp:TemplateField>
                        
                        <asp:TemplateField HeaderText="Mobileno">
                        <ItemTemplate>
                        <asp:Label ID="mbno" runat="server" Text='<%#Eval("mbno")%>'></asp:Label>
                        </ItemTemplate>
                         <EditItemTemplate>
                        <asp:TextBox ID="mbno1" runat="server" Text='<%#Eval("mbno")%>'></asp:TextBox>
                        </EditItemTemplate>
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
                         <EditItemTemplate>
                        <asp:TextBox ID="state1" runat="server" Text='<%#Eval("state")%>'></asp:TextBox>
                        </EditItemTemplate>
                        </asp:TemplateField>
                        
                        <asp:TemplateField HeaderText="City">
                        <ItemTemplate>
                        <asp:Label ID="city" runat="server" Text='<%#Eval("city")%>'></asp:Label>
                        </ItemTemplate>
                         <EditItemTemplate>
                        <asp:TextBox ID="city1" runat="server" Text='<%#Eval("city")%>'></asp:TextBox>
                        </EditItemTemplate>
                        </asp:TemplateField>
                        
                        <asp:TemplateField HeaderText="Address">
                        <ItemTemplate>
                        <asp:Label ID="add" runat="server" Text='<%#Eval("address")%>'></asp:Label>
                        </ItemTemplate>
                         <EditItemTemplate>
                        <asp:TextBox ID="add1" runat="server" Text='<%#Eval("address")%>'></asp:TextBox>
                        </EditItemTemplate>
                        </asp:TemplateField>
                        
                        <asp:TemplateField HeaderText="RDate">
                        <ItemTemplate>
                        <asp:Label ID="rdate" runat="server" Text='<%#Eval("rdate")%>'></asp:Label>
                        </ItemTemplate>
                         <EditItemTemplate>
                        <asp:Label ID="rdate1" runat="server" Text='<%#Eval("rdate")%>'></asp:Label>
                        </EditItemTemplate>
                        </asp:TemplateField>
                        
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

