<%@ page title="" language="C#" masterpagefile="~/MainPage.master" autoeventwireup="true" inherits="SYS_UserSetup, App_Web_sys_usersetup.aspx.cdcab7d2" %>

<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxTabControl" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxClasses" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxRoundPanel" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPanel" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.ASPxEditors.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPopupControl" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxUploadControl" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxCallback" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxMenu" tagprefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .pie_radius{
            width:100%;
            height:100%;
            border-right: #8B8B8B 3px solid; 
            border-top: #8B8B8B 3px solid; 
            border-left: #8B8B8B 3px solid; 
            border-bottom: #8B8B8B 3px solid;
            border-radius: 8px 8px 8px 8px;
            box-shadow: #666 5px 5px 5px;
            position:relative;
        }        
        .style15
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script type="text/javascript">
        function OnPopUp(ClientID) {
            tbImgName.SetText('');
            clientPopup.ShowAtElementByID(ClientID);
        }
        function uploadStart(s) {
            var sp = s.split('\\');
            var file = sp[sp.length - 1];
            tbImgName.SetText(file);
        }
    </script>
    <dx:ASPxPageControl ID="ASPxPageControl1" runat="server" ActiveTabIndex="0" 
        Font-Names="王漢宗細圓體繁" Font-Size="Small" TabPosition="Left" Width="100%" 
        Height="800px">
        <TabPages>
            <dx:TabPage Name="Tab01" Text="管理">
                <ContentCollection>
                    <dx:ContentControl runat="server" SupportsDisabledAttribute="True">
                        <div align="center">
                            <dx:ASPxRoundPanel ID="ASPxRoundPanel2" runat="server" EnableTheming="True" 
                                Font-Names="王漢宗細圓體繁" Font-Size="10pt" HeaderText="密碼設定作業" 
                                Theme="Office2010Silver" Width="200px">
                                <HeaderStyle HorizontalAlign="Left" />
                                <PanelCollection>
                                    <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                                        <dx:ASPxPanel ID="ASPxPanel1" runat="server" RenderMode="Table" Width="200px">
                                            <PanelCollection>
                                                <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                                                    <div align="left">
                                                        <table class="style15">
                                                            <tr>
                                                                <td align="left">
                                                                    <dx:ASPxHyperLink ID="ASPxHyperLink1" runat="server" CssClass="button" 
                                                                        CssPostfix="button" Cursor="pointer" Font-Names="王漢宗細圓體繁" ImageWidth="128px" 
                                                                        OnLoad="ASPxHyperLink1_Load" Text="ASPxHyperLink" ToolTip="設定我的照片" 
                                                                        ImageHeight="128px">
                                                                    </dx:ASPxHyperLink>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <dx:ASPxLabel ID="ASPxLabel1" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                        Font-Size="Small" Text="舊密碼(最多10碼)">
                                                                    </dx:ASPxLabel>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <dx:ASPxTextBox ID="ASPxTextBox1" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                        Font-Size="Small" Height="28px" MaxLength="10" Width="300px">
                                                                        <ValidationSettings ErrorText="舊密碼不可空白" ErrorTextPosition="Bottom">
                                                                            <RequiredField ErrorText="舊密碼不可空白" />
<RequiredField ErrorText="舊密碼不可空白"></RequiredField>
                                                                        </ValidationSettings>
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <dx:ASPxLabel ID="ASPxLabel2" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                        Font-Size="Small" Text="新密碼(最多10碼)">
                                                                    </dx:ASPxLabel>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <dx:ASPxTextBox ID="ASPxTextBox2" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                        Font-Size="Small" Height="28px" MaxLength="10" Width="100%">
                                                                        <ValidationSettings ErrorText="新密碼不可空白" ErrorTextPosition="Bottom">
                                                                            <RequiredField ErrorText="新密碼不可空白" />
<RequiredField ErrorText="新密碼不可空白"></RequiredField>
                                                                        </ValidationSettings>
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <dx:ASPxLabel ID="ASPxLabel3" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                        Font-Size="Small" Text="新密碼確認(最多10碼)">
                                                                    </dx:ASPxLabel>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <dx:ASPxTextBox ID="ASPxTextBox3" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                        Font-Size="Small" Height="28px" MaxLength="10" Width="100%">
                                                                        <ValidationSettings ErrorText="新密碼確認不可空白" ErrorTextPosition="Bottom">
                                                                            <RequiredField ErrorText="新密碼確認不可空白" />
<RequiredField ErrorText="新密碼確認不可空白"></RequiredField>
                                                                        </ValidationSettings>
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center">
                                                                    <dx:ASPxButton ID="ASPxButton1" runat="server" AutoPostBack="False" 
                                                                        CssClass="button big pill" 
                                                                        CssFilePath="~/App_Themes/CustomTheme/Css/Button/Button2/gh-buttons.css" 
                                                                        CssPostfix="button" Font-Names="王漢宗細圓體繁" Font-Size="Small" 
                                                                        OnClick="ASPxButton1_Click" Text="重設密碼">
                                                                        <ClientSideEvents Click="function(s, e) {
if(confirm('執行該作業，確定嗎？'))
{
e.processOnServer = true
}
else
{
e.processOnServer = false
}
}" />
<ClientSideEvents Click="function(s, e) {
if(confirm(&#39;執行該作業，確定嗎？&#39;))
{
e.processOnServer = true
}
else
{
e.processOnServer = false
}
}"></ClientSideEvents>

                                                                        <Image Url="~/App_Themes/Basic/ok.png" Width="22px">
                                                                        </Image>
                                                                    </dx:ASPxButton>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </div>
                                                </dx:PanelContent>
                                            </PanelCollection>
                                        </dx:ASPxPanel>
                                    </dx:PanelContent>
                                </PanelCollection>
                            </dx:ASPxRoundPanel>
                            <br />
                            <dx:ASPxPopupControl ID="ASPxPopupControl1" runat="server" AllowDragging="True" 
                                ClientInstanceName="clientPopup" CloseAction="CloseButton" 
                                CssClass="pie_radius" Font-Names="王漢宗細圓體繁" Font-Size="Small" HeaderText="圖片上傳" 
                                Modal="True" PopupAction="None" ShowCloseButton="False" Target="_blank" 
                                Theme="Office2010Silver">
                                <HeaderStyle HorizontalAlign="Left" />
                                <ContentCollection>
                                    <dx:PopupControlContentControl runat="server" SupportsDisabledAttribute="True">
                                        <dx:ASPxPanel ID="ASPxPanel2" runat="server" RenderMode="Table" Width="200px">
                                            <PanelCollection>
                                                <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                                                    <div align="left">
                                                        <table class="style15">
                                                            <tr>
                                                                <td>
                                                                    <dx:ASPxTextBox ID="ASPxTextBox4" runat="server" ClientInstanceName="tbImgName" 
                                                                        Font-Names="王漢宗細圓體繁" Font-Size="Small" Height="28px" 
                                                                        NullText="影像檔大小最好為寬100px高75px" ReadOnly="True" Width="400px">
                                                                        <ReadOnlyStyle BackColor="#CCCCCC">
                                                                        </ReadOnlyStyle>
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:FileUpload ID="FileUpload1" runat="server" Height="28px" Width="100%" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <dx:ASPxButton ID="btnFileUpload" runat="server" AutoPostBack="False" 
                                                                        Font-Names="王漢宗細圓體繁" Height="28px" OnClick="btnFileUpload_Click" Text="上傳" 
                                                                        Width="100px">
                                                                    </dx:ASPxButton>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center">
                                                                    <div class="button-group">
                                                                        <li>
                                                                            <dx:ASPxButton ID="ASPxButton2" runat="server" AutoPostBack="False" 
                                                                                CssClass="button big pill" 
                                                                                CssFilePath="~/App_Themes/CustomTheme/Css/Button/Button2/gh-buttons.css" 
                                                                                CssPostfix="button" Font-Names="王漢宗細圓體繁" Font-Size="Small" 
                                                                                HorizontalAlign="Center" OnClick="ASPxButton2_Click" Text="確認" Width="100px">
                                                                                <ClientSideEvents Click="function(s, e) {
	if(confirm('執行該作業，確定嗎？'))
	{
		e.processOnServer = true
	}
	else
	{
		e.processOnServer = false
	}
}" />
<ClientSideEvents Click="function(s, e) {
	if(confirm(&#39;執行該作業，確定嗎？&#39;))
	{
		e.processOnServer = true
	}
	else
	{
		e.processOnServer = false
	}
}"></ClientSideEvents>
                                                                            </dx:ASPxButton>
                                                                        </li>
                                                                        <li>
                                                                            <dx:ASPxButton ID="ASPxButton3" runat="server" AutoPostBack="False" 
                                                                                CssClass="button big pill" 
                                                                                CssFilePath="~/App_Themes/CustomTheme/Css/Button/Button2/gh-buttons.css" 
                                                                                CssPostfix="button" Font-Names="王漢宗細圓體繁" Font-Size="Small" 
                                                                                HorizontalAlign="Center" Text="離開" Width="100px">
                                                                                <ClientSideEvents Click="function(s, e) {
	clientPopup.Hide();
}" />
<ClientSideEvents Click="function(s, e) {
	clientPopup.Hide();
}"></ClientSideEvents>
                                                                            </dx:ASPxButton>
                                                                        </li>
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </div>
                                                </dx:PanelContent>
                                            </PanelCollection>
                                        </dx:ASPxPanel>
                                    </dx:PopupControlContentControl>
                                </ContentCollection>
                            </dx:ASPxPopupControl>
                        </div>
                    <br />
                    <br />
                    <br />
                    </dx:ContentControl>
                </ContentCollection>
            </dx:TabPage>
        </TabPages>
    </dx:ASPxPageControl>
</asp:Content>

