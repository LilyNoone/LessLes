<%@ Page Title="" Language="C#" MasterPageFile="~/layout/site.master" AutoEventWireup="true" CodeFile="a_overzicht_student.aspx.cs" Inherits="web_admin_a_overzicht_student" %>

<asp:Content ID="Content1" ContentPlaceHolderID="page_title" Runat="Server">
Admin
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content_title" Runat="Server">
Overzicht student: Naam Voornaam
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" Runat="Server">

    <asp:Repeater ID="rptOverzichtStudent" runat="server">
         <HeaderTemplate>
            <table>
                <tr>
                    <td>Vak</td>
                    <td>Docent</td>
                    <td>Status</td>
                    <td>Commentaar</td>
                </tr>
            </table>
        </HeaderTemplate>
          
        <ItemTemplate>
            <tr>
                <td>Photoshop</td>
                <td>Mr. VanElderen</td>
                <td>Afgekeurd</td>
                <td>Op basis van ects en portfolio.</td>
            </tr>
        </ItemTemplate>
        <FooterTemplate></table></FooterTemplate>
    </asp:Repeater>

    <div class="clear"></div>

    <asp:Label ID="lblPDFStatus" runat="server" Text="Dossier word nog niet afgeprint" />
    <br />
    <asp:Button ID="btnPDF" runat="server" Text="PDF maken" />

    <div class="clear"></div>

    <asp:Button ID="btnBack" runat="server" Text="< terug" />

</asp:Content>

