<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CtrlDuverujAleProveruj.ascx.cs"
    Inherits="CCH_Web.CCHomepage.Controls.CtrlDuverujAleProveruj" %>
<section id="sectionDuverujAleProveruj" runat="server" style="padding-top: 100px; min-height: 450px; background-color: #F0F0F0;">
    <div class="container">
            <div class="col-md-5">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/Duveruj-Book.png" />
            </div>
            <div class="col-md-7">
                <h2 id="ctrl_DuverujAleProverujNadpis" runat="server" style="margin-top:0;">
                    </h2>
                <p id="ctrl_DuverujAleProverujPodNadpis" runat="server" style="margin:20px 0 25px 0; font-size: 15px;">
                    </p>
                    <p id="CtrlSpam" runat="server" style="font-style: italic;" ></p>
                <div class="form-group">
                    <a id="CtrlBtnGetEbook" runat="server" href="http://eepurl.com/Kl-xf" target="_blank" class="btn btn-primary btn-lg"></a>
                </div>
                
            </div>
        </div>
</section>