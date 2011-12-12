<%@ Page Title="" Language="C#" MasterPageFile="~/layout/student.master" AutoEventWireup="true" CodeFile="s_register.aspx.cs" Inherits="web_student_s_register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="page_title" Runat="Server">
    Student - gegevens invullen
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content_title" Runat="Server">
Jouw gegevens:
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" Runat="Server">
    <table>
        <tr>
            <td>Voornaam</td>
            <td>
                <asp:TextBox ID="txtVoornaam" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="txtVoornaam_validator" runat="server"
                    ControlToValidate="txtVoornaam" ErrorMessage="uw voornaam">*</asp:RequiredFieldValidator>
            </td>
        </tr>

        <tr>
            <td>Achternaam</td>
            <td>
                <asp:TextBox ID="txtAchternaam" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="txtAchternaam_validator" runat="server"
                    ControlToValidate="txtAchternaam" ErrorMessage="uw achternaam">*</asp:RequiredFieldValidator>
            </td>
        </tr>

         <tr>
            <td>Wachtwoord</td>
            <td>
                <asp:TextBox ID="txtWachtwoord" runat="server" TextMode="password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="txtWachtwoord_validator" runat="server"
                    ControlToValidate="txtWachtwoord" ErrorMessage="uw wachtwoord">*</asp:RequiredFieldValidator>
            </td>
        </tr>

        <tr>
            <td>Herhaal wachtwoord</td>
            <td>
                <asp:TextBox ID="txtHerhWachtwoord" runat="server" TextMode="password"></asp:TextBox>
                <asp:CompareValidator ID="txtHerhWachtwoord_validator" runat="server" ControlToCompare="txtWachtwoord"
                    ControlToValidate="txtHerhWachtwoord" ErrorMessage="uw wachtwoorden komen niet overeen!">*</asp:CompareValidator>
            </td>
        </tr>

         <tr>
            <td>Studenten nummer</td>
            <td>
                <asp:TextBox ID="txtStudentnr" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="txtStudentnr_validator" runat="server"
                    ControlToValidate="txtStudentnr" ErrorMessage="uw studenten nummer">*</asp:RequiredFieldValidator>
            </td>
        </tr>

        <tr>
            <td>Opleiding</td>
            <td>
               <asp:DropDownList ID="dropOpleiding" runat="server"></asp:DropDownList>
            </td>
        </tr>

        <tr>
            <td> </td>
            <td>
               <asp:ValidationSummary ID="ValidationSummery" runat="server" HeaderText="U moet volgende velden nog invullen:" />
            </td>
        </tr>

    </table>

    <div class="buttons">
        <asp:Button ID="btn_register" class="BtnNext" runat="server" Text="volgende" 
            onclick="btn_register_Click" />
    </div>



</asp:Content>

