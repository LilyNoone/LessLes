<%@ Page Title="" Language="C#" MasterPageFile="~/layout/student.master" AutoEventWireup="true" CodeFile="s_selectie_opleidingsonderdeel.aspx.cs" Inherits="web_student_s_selectie_opleidingsonderdeel" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="page_title" Runat="Server">
Student - Selectie opleidingsonderdeel
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content_title" Runat="Server">
Selectie opleidingsonderdeel
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" Runat="Server">

        <asp:Label ID="vakken_select" runat="server">Selecteer eerst de vakken waarvoor u een vrijstelling wilt aanvragen.</asp:Label>
        <br />
        <asp:ScriptManager ID="ScriptManager" runat="server"></asp:ScriptManager>
        <asp:UpdateProgress ID="UpdateProgress" runat="server">
            <ProgressTemplate>
                <img src="../../img/ajax-loader.gif" alt="loading" />
            </ProgressTemplate>
        </asp:UpdateProgress>

        <asp:UpdatePanel id="UpdatePanel" runat="server">
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="checkVakken" EventName="SelectedIndexChanged"/>
            </Triggers>
            <ContentTemplate>
                <asp:ModalPopupExtender ID="ModalPopUpExtender" runat="server"
                    TargetControlID="btnSelectVakken"
                    PopupControlID="panSelectVakken"
                    BackgroundCssClass="pageOverlayPanel"
                    DropShadow="true"
                    OkControlID="btnOk"
                    CancelControlID="btnCancel"></asp:ModalPopupExtender>

                <asp:Button ID="btnSelectVakken" runat="server" Text="Selecteer uw opleidingsonderdeel" />

                <asp:Panel ID="panSelectVakken" runat="server" CssClass="backgroundPanelPop">
                    <h3>Selecteer je opleidingsonderdeel</h3>
                    <em>Vink <strong>alle</strong> vakken aan waarvoor je een vrijstelling wilt aanvragen.</em>
                    <asp:CheckBoxList ID="checkVakken" runat="server" AutoPostBack="true">
                    </asp:CheckBoxList>
                    <asp:Button ID="btnCancel" runat="server" Text="Annuleer" AutoPostBack="True"/>
                    <asp:Button ID="btnOk" runat="server" Text="Ok" AutoPostBack="True" 
                        onclick="btnOk_Click1"/>
                </asp:Panel>

                <h3>Vul je vrijstellingen aan</h3>
                <asp:Label runat="server" ID="lblFeedback"></asp:Label>
                <br />
                <asp:Label runat="server" ID="lblVakkenID"></asp:Label>
                <br />
                <asp:Button ID="btnBack_vakken" runat="server" class="btnBack" Text="< vorige" />
                <asp:Button ID="btnNext_vakken" runat="server" class="btnNext" Text="volgende >" />

            </ContentTemplate>
        </asp:UpdatePanel>
    
    

</asp:Content>



