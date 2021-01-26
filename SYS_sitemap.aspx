<%@ page title="" language="C#" masterpagefile="~/MainPage.master" autoeventwireup="true" inherits="SYS_sitemap, App_Web_sys_sitemap.aspx.cdcab7d2" %>

<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxTabControl" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxClasses" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxRoundPanel" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPanel" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.ASPxEditors.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxSiteMapControl" tagprefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <dx:ASPxSiteMapDataSource ID="ASPxSiteMapDataSource1" runat="server" 
        SiteMapFileName="~/web.sitemap" />
    <dx:ASPxSiteMapControl ID="ASPxSiteMapControl1" runat="server" 
        Categorized="True" DataSourceID="ASPxSiteMapDataSource1" EnableTheming="True" 
        Font-Names="王漢宗細圓體繁" Height="800px" 
        RepeatDirection="Horizontal" Width="100%">
        <Paddings Padding="21px" PaddingBottom="8px" />
        <Border BorderStyle="None" />
    </dx:ASPxSiteMapControl>
    <br />
    </asp:Content>

