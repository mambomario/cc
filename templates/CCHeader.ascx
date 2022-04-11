<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CCHeader.ascx.cs" Inherits="CCH_Web.Controls.CCHeader" %>
<%@ Register TagPrefix="cc" TagName="LoginBox" Src="~/Controls/CtrlLoginBox.ascx" %>
<%-- 
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container">
<div class="col-xs-12">
    <ul class="nav navbar-nav" style="width: 100%; height: 100%;">
        <li><a href="../Default.aspx" class="btn btn-header">
            <img src="/Images/CClogo-RGB.png" style="width: 200px; height: 20px; margin-right: 20px;" /></a></li>
        <li class="dropdown"><a id="drop1" href="../Products.aspx" role="button" class="btn btn-header"
                                data-toggle="dropdown" data-trigger="hover">Produkty <span class="caret"></span></a>
            <ul class="dropdown-menu" role="menu" aria-labelledby="drop1">
                <li role="presentation"><a role="menuitem" tabindex="-1" href="../Products.aspx">
                                            Přehled produktů</a></li>
                <li role="presentation" class="divider"></li>
                <li role="presentation"><a role="menuitem" tabindex="-1" href="../ProductDetail.aspx?name=ERP">
                                            Creditcheck ERP</a></li>
                <li role="presentation"><a role="menuitem" tabindex="-1" href="../ProductDetail.aspx?name=Email">
                                            Creditcheck Email</a></li>
                <li role="presentation"><a role="menuitem" tabindex="-1" href="">
                                            Produkt C</a></li>
            </ul>
        </li>
        <li><a href="../Cenik.aspx" class="btn btn-header">Ceník</a></li>
        <li><a href="../InfoSources.aspx" class="btn btn-header">Informační zdroje</a> </li>
        <li><a href="../Partners.aspx" role="button" class="btn btn-header">Partneři</a> </li>
        <li><a href="../Reference.aspx" role="button" class="btn btn-header">Reference</a> </li>
        <li><a href="http://blog.creditcheck.cz/" role="button" class="btn btn-header">Blog</a> </li>
        <li style="float: right;"><cc:LoginBox runat="server" /></li>
    </ul>
</div>
--%>
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" style="padding-top: 12px;" href="Default.aspx"><img src="Images/CClogo-RGB.gif" style="width: 200px; height: 20px;" /></a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            
          <ul class="nav navbar-nav" style="width: 600px;">
              <li class="dropdown">
              <a id="CtrlHeaderBtnProducts" href="Products.aspx" class="dropdown-toggle" data-toggle="dropdown">Produkty <span class="caret"></span></a>
              <ul class="dropdown-menu inverse-dropdown" role="menu">
                <li><a href="ProductDetail.aspx?name=ERP">Creditcheck ERP</a></li>
                <li><a href="ProductDetail.aspx?name=Monitoring">Creditcheck Monitoring</a></li>
                <li><a href="ProductDetail.aspx?name=Web">Creditcheck Web</a></li>
                <li class="divider"></li>
                <li><a href="Products.aspx">Přehled produktů</a></li>
                <li><a href="ProductDetail.aspx?name=Preverenie-ceskych-firiem">Preverenie ceskych firiem</a></li>
              </ul>
            </li>
            <li><a id="CtrlHeaderBtnCenik" href="Cenik.aspx" >Cenník</a></li>
            <li class="dropdown">
              <a id="CtrlHeaderBtnInfoSources" href="InfoSources.aspx" class="dropdown-toggle" data-toggle="dropdown">Zdroje informácií <span class="caret"></span></a>
              <ul class="dropdown-menu inverse-dropdown" role="menu">
                <li><a href="InfoSourceDetail.aspx?name=Sk-Obchodny-Vestnik">Obchodný vestník</a></li>
                <li><a href="InfoSourceDetail.aspx?name=Sk-Socialni-Poistovna">Sociálna poisťovňa</a></li>
                <li><a href="InfoSourceDetail.aspx?name=Sk-Union">Union zdravotná poisťovňa </a></li>
                <li><a href="InfoSourceDetail.aspx?name=Sk-Register-uctovnych-zavierok">Register účtovných závierok</a></li>
                <li><a href="InfoSourceDetail.aspx?name=Sk-Neplatici-DPH">Neplatiči DPH</a></li>
                <li><a href="InfoSourceDetail.aspx?name=Sk-Zoznam-platcov-DPH">Zoznam platcov dph</a></li>
                <li><a href="InfoSourceDetail.aspx?name=Sk-Dlznici-na-daniach">Dlžníci na daniach</a></li>
                <li><a href="InfoSourceDetail.aspx?name=Sk-slovenska-konsolidacni-dlznici">Slovenská konsolidačná</a></li>
                <li><a href="InfoSourceDetail.aspx?name=Sk-vseobecna-zdravotna-poistovna-dlznici">Všeobecná zdravotná poisťovňa</a></li>
                <li class="divider"></li>
                <li><a href="InfoSources.aspx">Přehled zdrojů</a></li>
              </ul>
            </li>
            <li><a id="CtrlHeaderBtnPartners" href="Partners.aspx" role="button" >Partneri</a> </li>
            <li><a id="CtrlHeaderBtnReferences" href="Reference.aspx" role="button" >Referencie</a> </li>
            <li><a href="http://blog.creditcheck.cz/" role="button">Blog</a> </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><cc:LoginBox ID="LoginBox1" runat="server" /></li>
            </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>
