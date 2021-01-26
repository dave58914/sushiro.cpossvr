<%@ page title="" language="C#" autoeventwireup="true" inherits="UTL_Board, App_Web_utl_board.aspx.cdcab7d2" %>

<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxTabControl" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxClasses" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxRoundPanel" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPanel" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.ASPxEditors.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link href="App_Themes/CustomTheme/Css/Button/Button2/gh-buttons.css" rel="stylesheet"
        type="text/css" />
</head>
<body>
<form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:Panel ID="Panel1" runat="server" Width="300px">
        <table style="width:100%;">
            <tr>
                <td align="left">
                    <asp:Button ID="Button1" runat="server" CssClass="button calendar icon" 
        onclick="Button1_Click" Text="關閉" Height="28px" Width="100px" />
                </td>
                <td align="right">
                    <dx:ASPxLabel ID="ASPxLabel1" runat="server" 
                Font-Names="王漢宗細圓體繁" Text="字體大小">
                    </dx:ASPxLabel>
                </td>
                <td align="left">
                    <dx:ASPxComboBox ID="cbTextSize" runat="server" 
                Font-Names="王漢宗細圓體繁" Height="28px" AutoPostBack="True" 
                        onselectedindexchanged="cbTextSize_SelectedIndexChanged" Width="75px">
                        <Items>
                            <dx:ListEditItem Text="大" Value="大" />
                            <dx:ListEditItem Text="中" Value="中" />
                            <dx:ListEditItem Text="小" Value="小" />
                        </Items>
                    </dx:ASPxComboBox>
                </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <dx:ASPxMemo ID="ASPxMemo1" runat="server" Font-Names="王漢宗細圓體繁" Height="450px" 
                ReadOnly="True" Width="100%">
            </dx:ASPxMemo>
            <dx:ASPxPanel ID="expandFILES" runat="server" Width="100%">
                <PanelCollection>
                    <dx:PanelContent ID="PanelContent1" runat="server" SupportsDisabledAttribute="True">
                        <dx:ASPxLabel ID="expandMesg" runat="server" Text="(無附件)">
                        </dx:ASPxLabel>
                        <br />
                    </dx:PanelContent>
                </PanelCollection>
            </dx:ASPxPanel>
<br />
<br />
        </ContentTemplate>
    </asp:UpdatePanel>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:NEWPMSConnectionString %>" 
        ProviderName="<%$ ConnectionStrings:NEWPMSConnectionString.ProviderName %>">
    </asp:SqlDataSource>
</form>
</body>
</html>



