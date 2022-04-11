<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="CCH_Web.Default" %>

<%@ Register Src="~/Controls/CCHeader.ascx" TagPrefix="cc" TagName="cHeader" %>
<%@ Register TagName="zpusobyPouziti" TagPrefix="cc" Src="~/CCHomepage/Controls/CtrlZpusobyPouziti.ascx" %>
<%@ Register TagName="reference" TagPrefix="cc" Src="~/CCHomepage/Controls/CtrlReference.ascx" %>
<%@ Register TagName="duverujBook" TagPrefix="cc" Src="~/CCHomepage/Controls/CtrlDuverujAleProveruj.ascx" %>
<%@ Register Src="CCHomepage/Controls/CtrlPouziva.ascx" TagPrefix="cc" TagName="ccPouziva" %>
<%@ Register TagName="proveruj" TagPrefix="cc" Src="~/CCHomepage/Controls/CtrlProveruj.ascx" %>
<asp:Content ID="HomeContentHeader" runat="server" ContentPlaceHolderID="CPHHeader">
    <style type="text/css">
        #ProverBtnGlobal {
            display: none;
        }

        #hlRightSideRPMManagementLink{
            display:none;
        }

        #hlRightSideMarkeetoLink{
            display:none;
        }
    </style>
</asp:Content>
<asp:Content ID="HomeContentBody" runat="server" ContentPlaceHolderID="MainContent">
    <div class="headerClearer">
    </div>
    <cc:proveruj ID="Proveruj1" runat="server" UseBaseLocalization="true" />
    <cc:zpusobyPouziti ID="ZpusobyPouziti1" runat="server" />
    <cc:reference ID="Reference1" runat="server" />
    <cc:duverujBook ID="DuverujBook1" runat="server" />
    <cc:ccPouziva ID="Pouziva1" runat="server" Visible="False" />
</asp:Content>
