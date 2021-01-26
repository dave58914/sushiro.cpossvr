<%@ page title="" language="C#" masterpagefile="~/MainPage.master" autoeventwireup="true" inherits="Default0, App_Web_mainpage1.aspx.cdcab7d2" %>

<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxSplitter" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxRoundPanel" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPanel" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxHeadline" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxEditors.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxTabControl" tagprefix="dx1" %>

<%@ Register assembly="DevExpress.Web.ASPxGridView.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .dxgvFocusedRow .dxgv {
            background-color: #33B5E5;
        }
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
        .pie_radius_w{
            border: 5px solid lightblue;
        width:100%;
            height:100%;
            border-radius: 0 0 20px 0;
            box-shadow: #666 -5px 5px 5px;
            position:relative;
        top: 1px;
        left: 1px;
    }
</style>
     <script type="text/javascript">
         function BoardPopUpWin(targetUrl) {
             var iMyWidth;
             var iMyHeight;
             //half the screen width minus half the new window width (plus 5 pixel borders).
             iMyWidth = (window.screen.width / 2) - 100;
             //half the screen height minus half the new window height (plus title and status bars).
             iMyHeight = (window.screen.height / 2) - 350;
             //Open the window.
             var win2 = window.open(targetUrl, "BoardPopUpWin", "status=no,height=600,width=500,resizable=yes,left=" + iMyWidth + ",top=" + iMyHeight + ",screenX=" + iMyWidth + ",screenY=" + iMyHeight + ",toolbar=no,menubar=no,scrollbars=no,location=no,directories=no");
             win2.focus();
         }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <dx:ASPxSplitter ID="ASPxSplitter1" runat="server" PaneMinSize="415px" 
        BackColor="#EEEEEE" Height="1500px" Width="100%" 
        ShowCollapseBackwardButton="True" ShowCollapseForwardButton="True">
    <panes>
        <dx:SplitterPane>
            <ContentCollection>
                <dx:SplitterContentControl runat="server" SupportsDisabledAttribute="True">
                    <dx:ASPxRoundPanel ID="ASPxRoundPanel1" runat="server" BackColor="White" 
                        Font-Bold="True" Font-Names="王漢宗細圓體繁" Font-Size="Medium" HeaderText="公告欄" 
                        Width="100%" CssClass="pie_radius_w" Height="450px">
                        <HeaderStyle BackColor="#ADD8E6" Height="35px" HorizontalAlign="Left" 
                            VerticalAlign="Middle">
                        <BorderLeft BorderStyle="None" />
                        <BorderRight BorderStyle="None" />
                        <BorderBottom BorderStyle="None" />
<BorderLeft BorderStyle="None"></BorderLeft>

<BorderRight BorderStyle="None"></BorderRight>

<BorderBottom BorderStyle="None"></BorderBottom>
                        </HeaderStyle>
                        <TopLeftCorner Height="1px" 
                            Url="~/Images/ASPxRoundPanel/886356262/TopLeftCorner.png" Width="1px">
                        </TopLeftCorner>
                        <NoHeaderTopLeftCorner Height="1px" 
                            Url="~/Images/ASPxRoundPanel/886356262/NoHeaderTopLeftCorner.png" 
                            Width="1px">
                        </NoHeaderTopLeftCorner>
                        <TopRightCorner Height="1px" 
                            Url="~/Images/ASPxRoundPanel/886356262/TopRightCorner.png" Width="1px">
                        </TopRightCorner>
                        <NoHeaderTopRightCorner Height="1px" 
                            Url="~/Images/ASPxRoundPanel/886356262/NoHeaderTopRightCorner.png" 
                            Width="1px">
                        </NoHeaderTopRightCorner>
                        <BottomRightCorner Height="1px" 
                            Url="~/Images/ASPxRoundPanel/886356262/BottomRightCorner.png" Width="1px">
                        </BottomRightCorner>
                        <BottomLeftCorner Height="1px" 
                            Url="~/Images/ASPxRoundPanel/886356262/BottomLeftCorner.png" Width="1px">
                        </BottomLeftCorner>
                        <HeaderLeftEdge>
                            <BackgroundImage HorizontalPosition="left" 
                                ImageUrl="~/Images/ASPxRoundPanel/886356262/HeaderLeftEdge.png" 
                                Repeat="NoRepeat" VerticalPosition="bottom" />
<BackgroundImage ImageUrl="~/Images/ASPxRoundPanel/886356262/HeaderLeftEdge.png" Repeat="NoRepeat" HorizontalPosition="left" VerticalPosition="bottom"></BackgroundImage>
                        </HeaderLeftEdge>
                        <HeaderContent>
                            <BackgroundImage HorizontalPosition="left" 
                                ImageUrl="~/Images/ASPxRoundPanel/886356262/HeaderContent.png" Repeat="RepeatX" 
                                VerticalPosition="bottom" />
<BackgroundImage ImageUrl="~/Images/ASPxRoundPanel/886356262/HeaderContent.png" Repeat="RepeatX" HorizontalPosition="left" VerticalPosition="bottom"></BackgroundImage>
                        </HeaderContent>
                        <HeaderRightEdge>
                            <BackgroundImage HorizontalPosition="right" 
                                ImageUrl="~/Images/ASPxRoundPanel/886356262/HeaderRightEdge.png" 
                                Repeat="NoRepeat" VerticalPosition="bottom" />
<BackgroundImage ImageUrl="~/Images/ASPxRoundPanel/886356262/HeaderRightEdge.png" Repeat="NoRepeat" HorizontalPosition="right" VerticalPosition="bottom"></BackgroundImage>
                        </HeaderRightEdge>
                        <PanelCollection>
                            <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                                <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                                    <ContentTemplate>
                                        <dx:ASPxPanel ID="ASPxPanel1" runat="server" Height="400px" Width="100%">
                                            <PanelCollection>
                                                <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                                                    <dx:ASPxComboBox ID="cbBoard1" runat="server" Font-Bold="False" 
                                                        Font-Names="王漢宗細圓體繁" Font-Size="Small" Height="28px" SelectedIndex="0" 
                                                        Width="100%" AutoPostBack="True">
                                                        <Items>
                                                            <dx:ListEditItem Selected="True" Text="總公司公告" Value="總公司公告" />
                                                            <dx:ListEditItem Text="門市公告" Value="門市公告" />
                                                        </Items>
                                                        <BorderBottom BorderWidth="5px" />
                                                    </dx:ASPxComboBox>
                                                    <dx:ASPxPanel ID="plBoard1" runat="server" Height="375px" ScrollBars="Vertical" 
                                                        Width="100%">
                                                        <PanelCollection>
                                                            <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                                                            </dx:PanelContent>
                                                        </PanelCollection>
                                                    </dx:ASPxPanel>
                                                </dx:PanelContent>
                                            </PanelCollection>
                                        </dx:ASPxPanel>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                                <dx:ASPxLabel ID="ASPxLabel1" runat="server" ForeColor="#FF3300" 
                                    Text="訊息顯示以公告有效天數為主" Width="100%">
                                </dx:ASPxLabel>
                            </dx:PanelContent>
                        </PanelCollection>
                        <Border BorderColor="#8B8B8B" BorderStyle="Solid" BorderWidth="0px" />

<Border BorderColor="#8B8B8B" BorderStyle="Solid" BorderWidth="0px"></Border>
                    </dx:ASPxRoundPanel>
                    <br/>
                    <dx:ASPxRoundPanel ID="ASPxRoundPanel2" runat="server" BackColor="White" 
                        CssClass="pie_radius_w" Font-Bold="True" Font-Names="王漢宗細圓體繁" 
                        Font-Size="Medium" HeaderText="營業速報" Width="100%" Height="350px">
                        <HeaderStyle BackColor="LightBlue" Height="35px" HorizontalAlign="Left" 
                            VerticalAlign="Middle">
                        <BorderLeft BorderStyle="None" />
                        <BorderRight BorderStyle="None" />
                        <BorderBottom BorderStyle="None" />
<BorderLeft BorderStyle="None"></BorderLeft>

<BorderRight BorderStyle="None"></BorderRight>

<BorderBottom BorderStyle="None"></BorderBottom>
                        </HeaderStyle>
                        <TopLeftCorner Height="1px" 
                            Url="~/Images/ASPxRoundPanel/886552870/TopLeftCorner.png" Width="1px">
                        </TopLeftCorner>
                        <NoHeaderTopLeftCorner Height="1px" 
                            Url="~/Images/ASPxRoundPanel/886552870/NoHeaderTopLeftCorner.png" Width="1px">
                        </NoHeaderTopLeftCorner>
                        <TopRightCorner Height="1px" 
                            Url="~/Images/ASPxRoundPanel/886552870/TopRightCorner.png" Width="1px">
                        </TopRightCorner>
                        <NoHeaderTopRightCorner Height="1px" 
                            Url="~/Images/ASPxRoundPanel/886552870/NoHeaderTopRightCorner.png" Width="1px">
                        </NoHeaderTopRightCorner>
                        <BottomRightCorner Height="1px" 
                            Url="~/Images/ASPxRoundPanel/886552870/BottomRightCorner.png" Width="1px">
                        </BottomRightCorner>
                        <BottomLeftCorner Height="1px" 
                            Url="~/Images/ASPxRoundPanel/886552870/BottomLeftCorner.png" Width="1px">
                        </BottomLeftCorner>
                        <HeaderLeftEdge>
                            <BackgroundImage HorizontalPosition="left" 
                                ImageUrl="~/Images/ASPxRoundPanel/886552870/HeaderLeftEdge.png" 
                                Repeat="NoRepeat" VerticalPosition="bottom" />
<BackgroundImage ImageUrl="~/Images/ASPxRoundPanel/886552870/HeaderLeftEdge.png" Repeat="NoRepeat" HorizontalPosition="left" VerticalPosition="bottom"></BackgroundImage>
                        </HeaderLeftEdge>
                        <HeaderContent>
                            <BackgroundImage HorizontalPosition="left" 
                                ImageUrl="~/Images/ASPxRoundPanel/886552870/HeaderContent.png" Repeat="RepeatX" 
                                VerticalPosition="bottom" />
<BackgroundImage ImageUrl="~/Images/ASPxRoundPanel/886552870/HeaderContent.png" Repeat="RepeatX" HorizontalPosition="left" VerticalPosition="bottom"></BackgroundImage>
                        </HeaderContent>
                        <HeaderRightEdge>
                            <BackgroundImage HorizontalPosition="right" 
                                ImageUrl="~/Images/ASPxRoundPanel/886552870/HeaderRightEdge.png" 
                                Repeat="NoRepeat" VerticalPosition="bottom" />
<BackgroundImage ImageUrl="~/Images/ASPxRoundPanel/886552870/HeaderRightEdge.png" Repeat="NoRepeat" HorizontalPosition="right" VerticalPosition="bottom"></BackgroundImage>
                        </HeaderRightEdge>
                        <PanelCollection>
                            <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                    <ContentTemplate>
                                        <dx:ASPxPanel ID="ASPxPanel4" runat="server" Width="100%" Height="60px">
                                            <PanelCollection>
                                                <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                                                    <dx:ASPxComboBox ID="cbQRY" runat="server" AutoPostBack="True" 
                                                        DataSourceID="edsPOS_storedat" Font-Names="王漢宗細圓體繁" Font-Size="Small" 
                                                        Height="28px" OnSelectedIndexChanged="cbQRY_SelectedIndexChanged" 
                                                        TextField="NM_STORE" TextFormatString="{0}; {1}; {2}" ToolTip="請選擇查詢門市" 
                                                        ValueField="NO_STORE" Width="100%">
                                                        <Columns>
                                                            <dx:ListBoxColumn Caption="店號" FieldName="NO_STORE" Name="NO_STORE" />
                                                            <dx:ListBoxColumn Caption="店名" FieldName="NM_STORE" Name="NM_STORE" />
                                                            <dx:ListBoxColumn Caption="店舖類型" FieldName="KEY_TEXT" Name="KEY_TEXT" />
                                                        </Columns>
                                                        <BorderBottom BorderWidth="5px" />
                                                        <BorderBottom BorderWidth="5px" />
                                                    </dx:ASPxComboBox>
                                                    <dx:ASPxButton ID="btnQRY" runat="server" CssClass="button search icon" 
                                                        CssPostfix="button" Font-Names="王漢宗細圓體繁" Font-Size="Small" 
                                                        OnClick="btnQRY_Click" Text="更新至最新數據" Width="100%">
                                                    </dx:ASPxButton>
                                                    <br />
                                                </dx:PanelContent>
                                            </PanelCollection>
                                        </dx:ASPxPanel>
                                        <dx:ASPxPanel ID="ASPxPanel2" runat="server" Height="400px" 
                                            ScrollBars="Vertical" Width="100%">
                                            <PanelCollection>
                                                <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                                                    <table style="width: 100%;">
                                                        <tr>
                                                            <td>
                                                                <dx:ASPxLabel ID="ASPxLabel6" runat="server" Font-Bold="True" 
                                                                    Font-Names="王漢宗細圓體繁" Text="製表日期時間">
                                                                </dx:ASPxLabel>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <dx:ASPxGridView ID="gvQRY1" runat="server" AutoGenerateColumns="False" 
                                                                    DataSourceID="sdsQRY1" Font-Names="王漢宗細圓體繁" Width="100%" 
                                                                    OnHtmlDataCellPrepared="gvQRY1_HtmlDataCellPrepared">
                                                                    <Columns>
                                                                        <dx:GridViewDataTextColumn FieldName="NM_STORE" ShowInCustomizationForm="True" 
                                                                            VisibleIndex="0" Caption="門市" Width="50px">
                                                                            <HeaderStyle HorizontalAlign="Center" />
                                                                        </dx:GridViewDataTextColumn>
                                                                        <dx:GridViewDataTextColumn Caption="項次" FieldName="sno" 
                                                                            ShowInCustomizationForm="True" VisibleIndex="1" Width="28px">
                                                                            <DataItemTemplate>
                                                                                <dx:ASPxLabel ID="snoQRY1" runat="server" Font-Names="王漢宗細圓體繁" Text="snoQRY1" 
                                                                                    Width="100%">
                                                                                </dx:ASPxLabel>
                                                                            </DataItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Center" />
                                                                        </dx:GridViewDataTextColumn>
                                                                        <dx:GridViewDataTextColumn Caption="支付別" FieldName="pay" 
                                                                            ShowInCustomizationForm="True" Visible="False" VisibleIndex="2">
                                                                            <HeaderStyle HorizontalAlign="Center" />
                                                                        </dx:GridViewDataTextColumn>
                                                                        <dx:GridViewDataTextColumn Caption="支付別" FieldName="pay_name" 
                                                                            ShowInCustomizationForm="True" VisibleIndex="3" Width="115px">
                                                                            <HeaderStyle HorizontalAlign="Center" />
                                                                        </dx:GridViewDataTextColumn>
                                                                        <dx:GridViewDataTextColumn Caption="金額" FieldName="amount" 
                                                                            ShowInCustomizationForm="True" VisibleIndex="4">
                                                                            <HeaderStyle HorizontalAlign="Center" />
                                                                        </dx:GridViewDataTextColumn>
                                                                    </Columns>
                                                                    <SettingsBehavior AllowSort="False" />
                                                                    <SettingsPager PageSize="20" Position="Top">
                                                                    </SettingsPager>
                                                                    <Settings ShowTitlePanel="True" />
                                                                    <Templates>
                                                                        <TitlePanel>
                                                                            <asp:Panel ID="Panel2" runat="server" HorizontalAlign="Left" Width="100%">
                                                                                <dx:ASPxLabel ID="ASPxLabel3" runat="server" Font-Bold="True" 
                                                                                    Font-Names="王漢宗細圓體繁" Text="支付別速報">
                                                                                </dx:ASPxLabel>
                                                                            </asp:Panel>
                                                                        </TitlePanel>
                                                                    </Templates>
                                                                </dx:ASPxGridView>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <dx:ASPxGridView ID="gvQRY2" runat="server" AutoGenerateColumns="False" 
                                                                    DataSourceID="sdsQRY2" Font-Names="王漢宗細圓體繁" 
                                                                    OnHtmlDataCellPrepared="gvQRY2_HtmlDataCellPrepared" Width="100%">
                                                                    <TotalSummary>
                                                                        <dx:ASPxSummaryItem DisplayFormat="{0:c2}" FieldName="amount" ShowInColumn="金額" 
                                                                            SummaryType="Sum" />
                                                                        <dx:ASPxSummaryItem FieldName="trancount" SummaryType="Sum" />
                                                                    </TotalSummary>
                                                                    <Columns>
                                                                        <dx:GridViewDataTextColumn FieldName="NM_STORE" ShowInCustomizationForm="True" 
                                                                            VisibleIndex="0" Caption="門市" Width="50px">
                                                                            <HeaderStyle HorizontalAlign="Center" />
                                                                        </dx:GridViewDataTextColumn>
                                                                        <dx:GridViewDataTextColumn Caption="項次" FieldName="sno" 
                                                                            ShowInCustomizationForm="True" VisibleIndex="1" Width="28px">
                                                                            <DataItemTemplate>
                                                                                <dx:ASPxLabel ID="snoQRY2" runat="server" Font-Names="王漢宗細圓體繁" Text="snoQRY2" 
                                                                                    Width="100%">
                                                                                </dx:ASPxLabel>
                                                                            </DataItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Center" />
                                                                        </dx:GridViewDataTextColumn>
                                                                        <dx:GridViewDataTextColumn Caption="時段" FieldName="pay" 
                                                                            ShowInCustomizationForm="True" Visible="False" VisibleIndex="2">
                                                                            <HeaderStyle HorizontalAlign="Center" />
                                                                        </dx:GridViewDataTextColumn>
                                                                        <dx:GridViewDataTextColumn Caption="時段" FieldName="pay_name" 
                                                                            ShowInCustomizationForm="True" VisibleIndex="3">
                                                                            <HeaderStyle HorizontalAlign="Center" />
                                                                        </dx:GridViewDataTextColumn>
                                                                        <dx:GridViewDataTextColumn Caption="金額" FieldName="amount" 
                                                                            ShowInCustomizationForm="True" VisibleIndex="4">
                                                                            <HeaderStyle HorizontalAlign="Center" />
                                                                        </dx:GridViewDataTextColumn>
                                                                        <dx:GridViewDataTextColumn Caption="客數" FieldName="trancount" 
                                                                            ShowInCustomizationForm="True" VisibleIndex="5" Width="36px">
                                                                            <HeaderStyle HorizontalAlign="Center" />
                                                                        </dx:GridViewDataTextColumn>
                                                                    </Columns>
                                                                    <SettingsBehavior AllowSort="False" />
                                                                    <SettingsPager PageSize="20" Position="Top">
                                                                    </SettingsPager>
                                                                    <Settings ShowTitlePanel="True" ShowFooter="True" />
                                                                    <Templates>
                                                                        <TitlePanel>
                                                                            <asp:Panel ID="Panel3" runat="server" HorizontalAlign="Left" Width="100%">
                                                                                <dx:ASPxLabel ID="ASPxLabel9" runat="server" Font-Bold="True" 
                                                                                    Font-Names="王漢宗細圓體繁" Text="時段速報">
                                                                                </dx:ASPxLabel>
                                                                            </asp:Panel>
                                                                        </TitlePanel>
                                                                    </Templates>
                                                                </dx:ASPxGridView>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <dx:ASPxGridView ID="gvQRY3" runat="server" AutoGenerateColumns="False" 
                                                                    DataSourceID="sdsQRY3" Font-Names="王漢宗細圓體繁" 
                                                                    OnHeaderFilterFillItems="gvQRY3_HeaderFilterFillItems" Width="100%">
                                                                    <TotalSummary>
                                                                        <dx:ASPxSummaryItem DisplayFormat="{0:c2}" FieldName="amount" 
                                                                            SummaryType="Sum" />
                                                                        <dx:ASPxSummaryItem FieldName="qty" SummaryType="Sum" />
                                                                    </TotalSummary>
                                                                    <Columns>
                                                                        <dx:GridViewDataTextColumn Caption="門市" FieldName="NM_STORE" 
                                                                            ShowInCustomizationForm="True" VisibleIndex="0">
                                                                            <Settings AllowHeaderFilter="False" AllowSort="False" />
                                                                            <HeaderStyle HorizontalAlign="Center" />
                                                                        </dx:GridViewDataTextColumn>
                                                                        <dx:GridViewDataTextColumn Caption="項次" FieldName="sno" 
                                                                            ShowInCustomizationForm="True" Visible="False" VisibleIndex="1">
                                                                            <Settings AllowHeaderFilter="False" AllowSort="False" />
                                                                            <DataItemTemplate>
                                                                                <dx:ASPxLabel ID="snoQRY3" runat="server" Font-Names="王漢宗細圓體繁" Text="snoQRY3" 
                                                                                    Width="100%">
                                                                                </dx:ASPxLabel>
                                                                            </DataItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Center" />
                                                                        </dx:GridViewDataTextColumn>
                                                                        <dx:GridViewDataTextColumn Caption="商品編號" FieldName="pay" 
                                                                            ShowInCustomizationForm="True" VisibleIndex="2">
                                                                            <Settings AllowHeaderFilter="True" AllowSort="True" />
                                                                            <HeaderStyle HorizontalAlign="Center" />
                                                                        </dx:GridViewDataTextColumn>
                                                                        <dx:GridViewDataTextColumn Caption="商品名稱" FieldName="pay_name" 
                                                                            ShowInCustomizationForm="True" VisibleIndex="3">
                                                                            <Settings AllowHeaderFilter="False" AllowSort="True" />
                                                                            <HeaderStyle HorizontalAlign="Center" />
                                                                        </dx:GridViewDataTextColumn>
                                                                        <dx:GridViewDataTextColumn Caption="金額" FieldName="amount" 
                                                                            ShowInCustomizationForm="True" VisibleIndex="4">
                                                                            <Settings AllowHeaderFilter="False" AllowSort="True" />
                                                                            <HeaderStyle HorizontalAlign="Center" />
                                                                        </dx:GridViewDataTextColumn>
                                                                        <dx:GridViewDataTextColumn Caption="數量" FieldName="qty" 
                                                                            ShowInCustomizationForm="True" VisibleIndex="5">
                                                                            <Settings AllowHeaderFilter="False" AllowSort="True" />
                                                                            <HeaderStyle HorizontalAlign="Center" />
                                                                        </dx:GridViewDataTextColumn>
                                                                    </Columns>
                                                                    <SettingsBehavior AllowSort="False" />
                                                                    <SettingsPager PageSize="20" Position="Top">
                                                                    </SettingsPager>
                                                                    <Settings ShowFooter="True" ShowTitlePanel="True" />
                                                                    <SettingsPopup>
                                                                        <HeaderFilter Height="400px" ResizingMode="Postponed" Width="250px" />
                                                                    </SettingsPopup>
                                                                    <Templates>
                                                                        <TitlePanel>
                                                                            <asp:Panel ID="Panel4" runat="server" HorizontalAlign="Left" Width="100%">
                                                                                <dx:ASPxLabel ID="ASPxLabel10" runat="server" Font-Bold="True" 
                                                                                    Font-Names="王漢宗細圓體繁" Text="商品銷售速報">
                                                                                </dx:ASPxLabel>
                                                                            </asp:Panel>
                                                                        </TitlePanel>
                                                                    </Templates>
                                                                </dx:ASPxGridView>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </dx:PanelContent>
                                            </PanelCollection>
                                        </dx:ASPxPanel>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                                <dx:ASPxLabel ID="ASPxLabel2" runat="server" ForeColor="#FF3300" 
                                    Text="每5分鐘系統自動更新" Width="100%">
                                </dx:ASPxLabel>
                                <br />
                            </dx:PanelContent>
                        </PanelCollection>
                        <Border BorderColor="#8B8B8B" BorderStyle="Solid" BorderWidth="0px" />

<Border BorderColor="#8B8B8B" BorderStyle="Solid" BorderWidth="0px"></Border>
                    </dx:ASPxRoundPanel>
                    <br/>
                    <dx:ASPxRoundPanel ID="ASPxRoundPanel3" runat="server" BackColor="White" 
                        CssClass="pie_radius_w" Font-Bold="True" Font-Names="王漢宗細圓體繁" 
                        Font-Size="Medium" HeaderText="店內請修系統" Height="350px" Width="100%">
                        <HeaderStyle BackColor="LightBlue" Height="35px" HorizontalAlign="Left" 
                            VerticalAlign="Middle">
                        <BorderLeft BorderStyle="None" />
                        <BorderRight BorderStyle="None" />
                        <BorderBottom BorderStyle="None" />
                        </HeaderStyle>
                        <TopLeftCorner Height="1px" 
                            Url="~/Images/ASPxRoundPanel/886487334/TopLeftCorner.png" Width="1px">
                        </TopLeftCorner>
                        <NoHeaderTopLeftCorner Height="1px" 
                            Url="~/Images/ASPxRoundPanel/886487334/NoHeaderTopLeftCorner.png" Width="1px">
                        </NoHeaderTopLeftCorner>
                        <TopRightCorner Height="1px" 
                            Url="~/Images/ASPxRoundPanel/886487334/TopRightCorner.png" Width="1px">
                        </TopRightCorner>
                        <NoHeaderTopRightCorner Height="1px" 
                            Url="~/Images/ASPxRoundPanel/886487334/NoHeaderTopRightCorner.png" Width="1px">
                        </NoHeaderTopRightCorner>
                        <BottomRightCorner Height="1px" 
                            Url="~/Images/ASPxRoundPanel/886487334/BottomRightCorner.png" Width="1px">
                        </BottomRightCorner>
                        <BottomLeftCorner Height="1px" 
                            Url="~/Images/ASPxRoundPanel/886487334/BottomLeftCorner.png" Width="1px">
                        </BottomLeftCorner>
                        <HeaderLeftEdge>
                            <BackgroundImage HorizontalPosition="left" 
                                ImageUrl="~/Images/ASPxRoundPanel/886487334/HeaderLeftEdge.png" 
                                Repeat="NoRepeat" VerticalPosition="bottom" />
                        </HeaderLeftEdge>
                        <HeaderContent>
                            <BackgroundImage HorizontalPosition="left" 
                                ImageUrl="~/Images/ASPxRoundPanel/886487334/HeaderContent.png" Repeat="RepeatX" 
                                VerticalPosition="bottom" />
                        </HeaderContent>
                        <HeaderRightEdge>
                            <BackgroundImage HorizontalPosition="right" 
                                ImageUrl="~/Images/ASPxRoundPanel/886487334/HeaderRightEdge.png" 
                                Repeat="NoRepeat" VerticalPosition="bottom" />
                        </HeaderRightEdge>
                        <PanelCollection>
                            <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                    <ContentTemplate>
                                        <dx:ASPxPanel ID="ASPxPanel3" runat="server" Height="300px" Width="375px">
                                            <PanelCollection>
                                                <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                                                    <table style="width: 100%;">
                                                        <tr>
                                                            <td>
                                                                <dx:ASPxButton ID="btnREPAIR" runat="server" CssClass="button settings icon" 
                                                                    CssPostfix="button" Font-Names="王漢宗細圓體繁" Font-Size="Small" Text="我要請修" 
                                                                    Width="100%">
                                                                </dx:ASPxButton>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                    <asp:Image ID="Image8" runat="server" ImageUrl="~/App_Themes/Basic/process.jpg" 
                                                        Width="100%" />
                                                    <br />
                                                    <br />
                                                </dx:PanelContent>
                                            </PanelCollection>
                                        </dx:ASPxPanel>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                            </dx:PanelContent>
                        </PanelCollection>
                        <Border BorderColor="#8B8B8B" BorderStyle="Solid" BorderWidth="0px" />
                    </dx:ASPxRoundPanel>
                    <br />
                    <br />
                </dx:SplitterContentControl>
            </ContentCollection>
        </dx:SplitterPane>
        <dx:SplitterPane Size="100%">
            <ContentCollection>
                <dx:SplitterContentControl runat="server" SupportsDisabledAttribute="True">
                    <br />
                </dx:SplitterContentControl>
            </ContentCollection>
        </dx:SplitterPane>
    </panes>
</dx:ASPxSplitter>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:NEWPMSConnectionString %>" 
        ProviderName="<%$ ConnectionStrings:NEWPMSConnectionString.ProviderName %>">
    </asp:SqlDataSource>

                        <asp:EntityDataSource runat="server" 
        DefaultContainerName="NEWPMSEntities" ConnectionString="name=NEWPMSEntities" 
        EnableFlattening="False" EntitySetName="vPOS_storedat" OrderBy="it.NO_STORE" 
        ID="edsPOS_storedat" Where="">
    </asp:EntityDataSource>

                        <asp:SqlDataSource ID="sdsQRY1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:NEWPMSConnectionString %>" 
        SelectCommand="exec dbo.POS_營業速報匯總表 @COMNO">
                            <SelectParameters>
                                <asp:Parameter Name="COMNO" />
                            </SelectParameters>
    </asp:SqlDataSource>

                        <asp:SqlDataSource ID="sdsQRY2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:NEWPMSConnectionString %>" 
        SelectCommand="exec dbo.POS_營業速報時段表 @COMNO">
                            <SelectParameters>
                                <asp:Parameter Name="COMNO" />
                            </SelectParameters>
    </asp:SqlDataSource>

                        <asp:SqlDataSource ID="sdsQRY3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:NEWPMSConnectionString %>" 
        SelectCommand="exec dbo.POS_營業速報明細表 @COMNO">
                            <SelectParameters>
                                <asp:Parameter Name="COMNO" />
                            </SelectParameters>
    </asp:SqlDataSource>

                        <asp:SqlDataSource ID="sdsPayQRY3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:NEWPMSConnectionString %>">
    </asp:SqlDataSource>

                        <br />
    <br />

                        </asp:Content>

