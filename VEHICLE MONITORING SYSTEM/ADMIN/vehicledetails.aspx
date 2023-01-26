<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="vehicledetails.aspx.cs" Inherits="ADMIN_vehicledetails" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center">
        <table style="width: 100px; height: 100px">
            <tr>
                <td align="center" style="width: 100px" valign="top">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="6">
                        <EmptyDataTemplate>
                            <strong style="color: #ff3366">There are no vehicle details.</strong>
                        </EmptyDataTemplate>
                        <Columns>
                        <asp:TemplateField HeaderText="Picture">
                        <ItemTemplate>
                        <asp:Image ID="i1" runat="server" ImageUrl='<%#Eval("vehicleimage") %>' Width="100" Height="100" />
                        </ItemTemplate>
                        </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

