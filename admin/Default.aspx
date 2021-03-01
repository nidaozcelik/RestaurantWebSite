<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style1 {
            width: 300px;
        }
        .newStyle1 {
            text-align: center;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="auto-style1">
        <tr>
            <td>Kullanıcı Adı</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Şifre</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr class="newStyle1">
            <td colspan="2">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="text-align: center" Text="Giriş" Width="67px" />
                <br />
                <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Maroon"></asp:Label>
            </td>
        </tr>
    </table>
    <br />
</asp:Content>

