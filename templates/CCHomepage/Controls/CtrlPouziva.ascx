<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CtrlPouziva.ascx.cs"
    Inherits="CCH_Web.CCHomepage.Controls.CtrlPouziva" %>
<section id="sectionPouziva" style="padding-top: 60px; min-height: 500px;">
    <div class="container" style="padding-bottom: 80px;">
        <div id="CtrlReferencePart" runat="server">
            <h1 id="ctrl_PouzivaNadpis" runat="server" style="text-align: center; margin-top: 0; margin-bottom: 70px;">
            </h1>
                <div style="margin-left:auto; margin-right: auto; margin-bottom: 60px;">
                <asp:PlaceHolder runat="server" ID="ctrl_PouzivaLogoPlaceholder"></asp:PlaceHolder>
                </div>
            <hr id="ctrlHR" runat="server" />
        </div>
        <div id="CtrlNovinkyPart" runat="server" style="margin-top: 70px;">
            <div class="col-md-4" >
                <div class="CtrlPouzivaTextBox" style="margin: 0 10% 0 0;">    
                <h3 id="ctrl_PouzivaNadpis1" runat="server" class="CtrlPouzivaNadpis">
                </h3>
                <p id="ctrl_PouzivaText1" runat="server" class="CtrlPouzivaText">
                </p>
                    <br />
                <p class="CtrlPouzivaCelyClanek"><a id="ctrl_PouzivaLink1" runat="server" href="http://blog.creditcheck.cz/2014/10/ve-sbirce-listin-je-pres-854-tisic-typu.html" target="_blank">CELÝ ČLÁNEK</a></p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="CtrlPouzivaTextBox" style="margin: 0 10% 0 10%;">
                <h3 id="ctrl_PouzivaNadpis2" runat="server" class="CtrlPouzivaNadpis">
                </h3>
                <p id="ctrl_PouzivaText2" runat="server" class="CtrlPouzivaText">
                </p>
                <br />
                <p class="CtrlPouzivaCelyClanek"><a id="ctrl_PouzivaLink2" runat="server" href="http://blog.creditcheck.cz/2014/09/nespolehlivych-platcu-dph-bude-snad-vic.html" target="_blank">CELÝ ČLÁNEK</a></p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="CtrlPouzivaTextBox" style="margin: 0 0 0 10%;">
                    <h3 id="ctrl_PouzivaNadpis3" runat="server" class="CtrlPouzivaNadpis">
                    </h3>
                    <p id="ctrl_PouzivaText3" runat="server" class="CtrlPouzivaText">
                    </p>
                    <br />
                    <p class="CtrlPouzivaCelyClanek"><a id="ctrl_PouzivaLink3" runat="server" href="http://blog.creditcheck.cz/2014/08/ktere-firmy-maji-v-cr-ucet-u-sberbank.html" target="_blank" >CELÝ ČLÁNEK</a></p>
                </div>
            </div>
        </div>
    </div>
</section>
