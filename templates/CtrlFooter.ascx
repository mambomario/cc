<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CtrlFooter.ascx.cs"
    Inherits="CCH_Web.Controls.CtrlFooter" %>
<section id="sectionZpusobyProverovani" style="min-height: 500px; padding-top: 0px; background-color: #333;">

    <div class="container" style="margin-top: 70px;">
        <div class="row">
            <div class="col-md-3">
                <h4 id="ctrlNadpisMenu1" runat="server" class="odsazeniBottom30px footerGreenHeaders">Služby a produkty</h4>
                <div id="ctrlMenuLinks1" runat="server">
                    <a class="footerLinks" href="ProductDetail.aspx?name=ERP">CreditCheck ERP</a>
                    <a class="footerLinks" href="ProductDetail.aspx?name=Web">CreditCheck Web</a>
                    <a class="footerLinks" href="ProductDetail.aspx?name=Monitoring">CreditCheck Monitoring</a>
                    <a href="Metodika.aspx" class="footerLinks">Metodika</a>
                </div>
                <!--
                <a class="footerLinks" href="ProductDetail.aspx?name=CEE">Centrální evidence exekucí</a>
            <a class="footerLinks" href="ProductDetail.aspx?name=Monitoring_NP">Monitoring nespolehlivých plátců</a>
            -->
            </div>
            <div class="col-md-3">
                <h4 id="ctrlNadpisMenu2" runat="server" class="odsazeniBottom30px footerGreenHeaders">O nás</h4>
                <div id="ctrlMenuLinks2" runat="server">
                    <a class="footerLinks" href="../Contact.aspx">Kontakty</a>
                    <a class="footerLinks" href="../Api.aspx">API</a>
                    <a class="footerLinks" href="../Helpdesk.aspx">Helpdesk</a>
                    <a class="footerLinks" href="../AboutUs.aspx">Kto sme</a>
                </div>
                <!--
                <a class="footerLinks">Ochrana osobních údajů</a>
                <a class="footerLinks">Volná místa</a>
                <a class="footerLinks">Všeobecné obchodní podmínky</a>
                -->
            </div>
            <div class="col-md-3">
                <h4 id="ctrlNadpisMenu3" runat="server" class="odsazeniBottom30px footerGreenHeaders">Dôležité odkazy</h4>
                <div id="ctrlMenuLinks3" runat="server">
                    <a href="http://www.creditcheck.cz" class="footerLinks">CreditCheck Česko</a>
                    <a href="MapaServeru.aspx" class="footerLinks">Mapa stránok</a>
                    <a href="SlovnicekPojmu.aspx" class="footerLinks">Slovníček pojmov</a>
                </div>
                <!--
                <a class="footerLinks">Ebook Důvěřuj, ale prověřuj</a>
                <a class="footerLinks">Nové firmy</a>
                <a class="footerLinks">Dostupnost serveru</a>
                -->
            </div>
            <div class="col-md-3">
                <h4 id="ctrlNadpisMenu5" runat="server" class="odsazeniBottom30px footerGreenHeaders">Informační seznamy</h4>
                <div id="ctrlMenuLinks5" runat="server">
                    <a href="https://markeeto.cz/lp/ruske-firmy-v-CR-seznam" target="_blank" class="footerLinks">Ruské firmy v ČR</a>
                    <a href="https://markeeto.cz/lp/ukrajinske-firmy-v-CR" target="_blank" class="footerLinks">Ukrajinské firmy v ČR</a>
                    <a href="https://markeeto.cz/lp/cz-firmy-s-uctem-u-sberbank" target="_blank" class="footerLinks">Firmy s účtem u Sberbank</a>
                    <a href="https://markeeto.cz/lp/firmy-s-uctem-u-expobank" target="_blank" class="footerLinks">Firmy s účtem u Expobank</a>
                </div>
                <!--
                <a class="footerLinks">Ebook Důvěřuj, ale prověřuj</a>
                <a class="footerLinks">Nové firmy</a>
                <a class="footerLinks">Dostupnost serveru</a>
                -->
            </div>

            <div id="divSocialNetworksWrapper" class="col-md-3 fontWeightNormal" runat="server" visible="False">
                <h4 id="ctrlNadpisMenu4" runat="server" class="odsazeniBottom30px footerGreenHeaders">SLEDUJTE NÁS</h4>
                <div id="ctrlMenuLinks4" runat="server">
                    <div class="odsazeniTop30px">
                        <a class="footerLinks displayInline whiteText" href="https://cs-cz.facebook.com/creditcheck.cz" target="blank">
                            <img alt="facebook" class="socialNetworksIcon odsazeniRight15px" src="/Images/SocialNetworks/600px-Facebook_icon_2013.svg.png" />na Facebooku</a>
                    </div>
                    <div style="margin-top: 7px;">
                        <a class="footerLinks displayInline whiteText" href="https://plus.google.com/u/0/+CreditcheckCz1/posts" target="blank">
                            <img alt="google+" class="socialNetworksIcon odsazeniRight15px" src="/Images/SocialNetworks/google.gif" />na Google+</a>
                    </div>
                    <div style="margin-top: 7px;">
                        <a class="footerLinks displayInline whiteText" href="https://twitter.com/Creditcheck_CZ" target="blank">
                            <img alt="twitter" class="socialNetworksIcon odsazeniRight15px" src="/Images/SocialNetworks/twitterIcon.png" />na Twitteri</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="row" style="margin-top: 50px;">
            <div class="col-md-12">
                <img src="/Images/CClogo-RGB_white.png" style="height: 20px; width: auto; float: left; margin-right: 50px;" />
                <p class="fontWeightNormal whiteText"><span id="spanFooterCCName" runat="server">© 2010 - 2015 Credit Check, s.r.o. </span><span class="footerDelimiter">|</span> <a id="ctrlFooterMailTo" runat="server" href="mailto:info@creditcheck.sk">info@creditcheck.sk</a> <span class="footerDelimiter">|</span><span id="ctrlFooterTel" runat="server"> +421 233 456 622</span></p>
            </div>
        </div>
    </div>
</section>
