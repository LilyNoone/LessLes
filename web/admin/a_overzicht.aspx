<%@ Page Title="" Language="C#" MasterPageFile="~/layout/site.master" AutoEventWireup="true" CodeFile="a_overzicht.aspx.cs" Inherits="web_admin_a_overzicht" %>

<asp:Content ID="Content1" ContentPlaceHolderID="page_title" Runat="Server">
Admin
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content_title" Runat="Server">
Overzicht
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="content" Runat="Server">

    <asp:Repeater ID="rptRapporten" runat="server">
        <HeaderTemplate>
            <h3>Overzicht van de rapporten</h3>
            <table>
                <thead>
                    <tr>
                        <td>Student</td>
                        <td>Jaar</td>
                        <td>Status</td>
                    </tr>
                </thead>
            </table>
        </HeaderTemplate>
          
        <ItemTemplate>
            <tr>
                <td>Naam, Voornaam</td>
                <td>2010-2011</td>
                <td>ok/niet ok</td>
            </tr>
        </ItemTemplate>
        <FooterTemplate></table></FooterTemplate>
    </asp:Repeater>

    <div class="clear"></div>

    <asp:Repeater ID="rptDossiersInBehandeling" runat="server">
        <HeaderTemplate>
            <h3>Overzicht van de dossiers in behandeling</h3>
            <table>
                <thead>
                    <tr>
                        <td>Student</td>
                        <td>Jaar</td>
                        <td>Status</td>
                    </tr>
                </thead>
            </table>
        </HeaderTemplate>
          
        <ItemTemplate>
            <tr>
                <td>Naam, Voornaam</td>
                <td>Photoshop</td>
                <td>Mr. VanElderen</td>
                <td>Goedgekeurd</td>
            </tr>
        </ItemTemplate>
        <FooterTemplate></table></FooterTemplate>
    </asp:Repeater>

    <div class="clear"></div>

        <asp:Repeater ID="rptAfgerondeDossiers" runat="server">
        <HeaderTemplate>
            <h3>Overzicht van de afgeronde dossiers</h3>
            <table>
                <thead>
                    <tr>
                        <td>Student</td>
                        <td>Status</td>
                    </tr>
                </thead>
            </table>
        </HeaderTemplate>
          
        <ItemTemplate>
            <tr>
                <td>Naam, Voornaam</td>
                <td>ok/niet ok</td>
            </tr>
        </ItemTemplate>
        <FooterTemplate></table></FooterTemplate>
    </asp:Repeater>


</asp:Content>



