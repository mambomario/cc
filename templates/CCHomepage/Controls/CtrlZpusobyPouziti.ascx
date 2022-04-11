<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CtrlZpusobyPouziti.ascx.cs"
    Inherits="CCH_Web.CCHomepage.Controls.CtrlZpusobyPouziti" %>
<section id="sectionZpusobyPouziti" style="padding-top: 50px; min-height: 500px;">
<div class="container">
    <div class="form-group">
        <h2 id="ctrl_ZpusobyPouzitiNadpis" runat="server" style="text-align: center;">
            </h2>
        <div class="row" style="text-align: center; margin-top: 50px;">
            <div class="col-md-4">
                <h3 id="ctrl_ZpusobyPouzitiNadpis1" runat="server" class="zpusobPouzitiNadpisy CoreSansFontFamily">
                   
                </h3>
                <asp:Image CssClass="ikona" ID="Image1" runat="server" ImageUrl="~/Images/icons/ozubeneKolecko.gif" />
                <p id="ctrl_ZpusobyPouzitiText1" runat="server" class="zpusobPouzitiText">
                    Prověřujte své klienty či dodavatele přímo z vašeho informačního systému. Podporujeme
                    <a href="Partners.aspx">desítky systémů.</a></p>
                <p class="viceInformaci">
                    <a id="CtrlOdkazErp" runat="server" href="/ProductDetail.aspx?name=ERP" class="text-uppercase">VÍCE INFORMACÍ</a></p>
            </div>
            <div class="col-md-4">
                <h3 id="ctrl_ZpusobyPouzitiNadpis2" runat="server" class="zpusobPouzitiNadpisy CoreSansFontFamily">
                    
                </h3>
                <asp:Image CssClass="ikona" ID="Image2" runat="server" ImageUrl="~/Images/icons/browser.gif" />
                <p id="ctrl_ZpusobyPouzitiText2" runat="server" class="zpusobPouzitiText">
                    Přihlašte se na CREDITCHECK odkudkoliv z libovolného prohlížeče a prověřujte subjekty
                    on-line.</p>
                <p class="viceInformaci">
                    <a id="CtrlOdkazWeb" runat="server" href="/ProductDetail.aspx?name=Web" class="text-uppercase">VÍCE INFORMACÍ</a></p>
            </div>
            <div class="col-md-4">
                <h3 id="ctrl_ZpusobyPouzitiNadpis3" runat="server" class="zpusobPouzitiNadpisy CoreSansFontFamily">
                   
                </h3>
                <asp:Image CssClass="ikona" ID="Image3" runat="server" ImageUrl="~/Images/icons/envelope.gif" />
                <p id="ctrl_ZpusobyPouzitiText3" runat="server" class="zpusobPouzitiText">
                    Další text</p>
                <p class="viceInformaci">
                    <a id="CtrlOdkazMon" runat="server" href="ProductDetail.aspx?name=Monitoring" class="text-uppercase">VÍCE INFORMACÍ</a></p>
            </div>
        </div>
    </div>
</div>
</section>
