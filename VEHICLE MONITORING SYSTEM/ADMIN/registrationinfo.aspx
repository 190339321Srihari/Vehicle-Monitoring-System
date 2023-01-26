<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="registrationinfo.aspx.cs" Inherits="ADMIN_userinfo" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center">
        <table style="width: 100px; height: 100px">
            <tr>
                <td align="center" style="width: 100px" valign="top">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnPageIndexChanging="GridView1_PageIndexChanging1">
                        <EmptyDataTemplate>
                            <strong style="color: #ff3366">There are no registrationinfo details.</strong>
                        </EmptyDataTemplate>
                        
                           <Columns>
                        
                        <asp:TemplateField HeaderText="VRId">
                        <ItemTemplate>
                        <asp:Label ID="vrid" runat="server" Text='<%#Eval("vrid")%>'></asp:Label>
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

