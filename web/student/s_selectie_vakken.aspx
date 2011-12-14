<%@ Page Title="" Language="C#" MasterPageFile="~/layout/student.master" AutoEventWireup="true" CodeFile="s_selectie_vakken.aspx.cs" Inherits="web_student_s_selectie_vakken" %>

<asp:Content ID="Content1" ContentPlaceHolderID="page_title" Runat="Server">
    <title>Selectie Vakken</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content_title" Runat="Server">
    <h1>Selectie vakken</h1>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" Runat="Server">
    <asp:CheckBoxList ID="checkVakken" runat="server">
    </asp:CheckBoxList>
    <asp:Button id="btnSave" runat="server" Text="Bewaren" onclick="btnSave_Click"/>
    <asp:Label id="lblvakkenID" runat="server"/>
    <asp:label id="lblFeeback" runat="server"/>
</asp:Content>

