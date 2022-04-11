<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CtrlProveruj.ascx.cs"
    Inherits="CCH_Web.CCHomepage.Controls.CtrlProveruj" %>
<%@ Register TagPrefix="asp" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit, Version=3.0.30930.28736, Culture=neutral, PublicKeyToken=28f01b0e84b6d53e" %>
<section id="sectionProveruj" runat="server" style="padding-top: 0px; height: 450px; background: url(Images/HP_ImageWide2_noNB.jpg) 65% 0px no-repeat;">

    <style type="text/css">
        /*AutoComplete flyout */
        .completionList {
            border: solid 1px #444444;
            border-radius: 6px;
            margin: 0px;
            padding: 2px;
            /*height: 130px;*/
            min-height: 115px;
            overflow: hidden;
            background-color: #FFFFFF;
        }

        .listItem {
            color: #1C1C1C;
        }

        .itemHighlighted {
            background-color: #66afee;
        }
    </style>


    <div class="container" style="position: relative; padding-top: 0px;">
        <div class="row">
            <div class="col-sm-6">
                <h1 id="ctrl_ProverujNadpis" runat="server" class="nadpis green_text odsazeniTop30px"></h1>
                <h2 id="ctrl_ProverujText" class="nadpis2" runat="server" style="margin-bottom: 30px; margin-top: 30px;"></h2>
                <br />
                <div>
                    <asp:TextBox ID="nazev" runat="server"
                        Placeholder="Zadajte ič alebo názov subjektu" Width="290px" Height="50px" CssClass="CtrlProverujSearchInput"></asp:TextBox>
                    <asp:AutoCompleteExtender ID="AutoCompleteExtender1" runat="server" EnableCaching="True" TargetControlID="nazev"
                        CompletionSetCount="5" MinimumPrefixLength="1" CompletionInterval="1"
                        ServiceMethod="GetAutoCompleteList" FirstRowSelected="False" DelimiterCharacters=""
                        CompletionListCssClass="completionList" CompletionListHighlightedItemCssClass="itemHighlighted" CompletionListItemCssClass="listItem" />
                    <div >    
                    <asp:Button ID="btnHomepageProverit" runat="server" CssClass="btn btn-primary btn-lg" Text="Preverit"
                        Style="width: 180px;" OnClick="Prover_Click" />
                    </div>
                </div>
            </div>
            <div class="col-sm-6" style="margin-top: 8%; padding-left: 20px;">
                <div id="divVideoWrapperCZ" runat="server" visible="false">
                <img src="~Images/header_image.png"> 
                    <iframe allowfullscreen="allowFullScreen"
                        src="https://www.youtube.com/embed/g1_0D7Bdcak?ecver=1&amp;iv_load_policy=1&amp;rel=0&amp;yt:stretch=16:9&amp;autohide=1&amp;color=red&amp;width=560&amp;width=560"
                        width="550" height="305" allowtransparency="true" frameborder="0"></iframe>
                </div>
                <div id="divVideoWrapperSK" runat="server" visible="false">
                    <iframe width="550" height="305" src="https://www.youtube.com/embed/w2OLAFAgc7c" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                </div>
            </div>
        </div>

    </div>
</section>
