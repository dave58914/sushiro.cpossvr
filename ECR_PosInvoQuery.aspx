<%@ page title="" language="C#" masterpagefile="~/MainPage.master" autoeventwireup="true" inherits="ECR_PosInvoQuery, App_Web_ecr_posinvoquery.aspx.cdcab7d2" %>

<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxTabControl" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxClasses" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxRoundPanel" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPanel" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.ASPxEditors.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.ASPxGridView.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.ASPxPivotGrid.v12.1.Export, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPivotGrid.Export" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxGridView.v12.1.Export, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView.Export" tagprefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .dxgvFocusedRow .dxgv {
            background-color: #33B5E5;
            height:30px;
        }
        .dxgvDataRow .dxgv {       
            height:30px;
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
        .style8
        {
            width: 108%;
        }
        .dxgvControl,
        .dxgvDisabled
        {
	        border: 1px Solid #9F9F9F;
	        font: 12px Tahoma;
	        background-color: #F2F2F2;
	        color: Black;
	        cursor: default;
        }
        .dxgvTable
        {
        	-webkit-tap-highlight-color: rgba(0,0,0,0);
        }
        .dxgvTable
        {
        	background-color: White;
	        border-width: 0;
	        border-collapse: separate!important;
	        overflow: hidden;
	        color: Black;
        }
        .dxgvHeader
        {
	        cursor: pointer;
	        white-space: nowrap;
	        padding: 4px 6px 5px;
	        border: 1px Solid #9F9F9F;
	        background-color: #DCDCDC;
	        overflow: hidden;
	        font-weight: normal;
	        text-align: left;
        }
        .dxgvFooter
        {
	        background-color: #D7D7D7;
	        white-space: nowrap;
        }
        .dxgvPagerTopPanel,
        .dxgvPagerBottomPanel
        {
	        padding-top: 4px;
	        padding-bottom: 4px;
        }
        .style12
        {
            width: 71px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <dx:ASPxPageControl ID="ASPxPageControl1" runat="server" ActiveTabIndex="1" 
        Font-Names="王漢宗細圓體繁" Font-Size="Small" TabPosition="Left" Width="100%" 
        Height="800px">
        <TabPages>
            <dx:TabPage Name="Tab01" Text="管理" ToolTip="發票查詢">
                <ContentCollection>
                    <dx:ContentControl runat="server" SupportsDisabledAttribute="True">
                        <div align="left">
                            <asp:Panel ID="Panel2" runat="server" Width="650px">
                                <table class="style8">
                                    <tr>
                                        <td align="right" class="style12" 
                                            style="font-family: 王漢宗細圓體繁; font-size: small">
                                            機台號</td>
                                        <td align="center">
                                            <dx:ASPxComboBox ID="cbECRNO" runat="server" DataSourceID="edsPOS_ecrdat" 
                                                Font-Names="王漢宗細圓體繁" Height="28px" SelectedIndex="0" TextField="MsgId" 
                                                TextFormatString="{0}; {1}; {2}" ValueField="MsgId" Width="200px">
                                                <Columns>
                                                    <dx:ListBoxColumn Caption="機號" FieldName="ECR_NO" Name="ECR_NO" />
                                                    <dx:ListBoxColumn Caption="店號" FieldName="ECR_FLOOR" Name="ECR_FLOOR" />
                                                    <dx:ListBoxColumn Caption="店名" FieldName="NM_STORE" Name="NM_STORE" />
                                                </Columns>
                                            </dx:ASPxComboBox>
                                        </td>
                                        <td align="right" style="font-family: 王漢宗細圓體繁; font-size: small;">
                                            發票日期</td>
                                        <td align="center">
                                            <dx:ASPxDateEdit ID="deSYS_DATE" runat="server" 
                                                DisplayFormatString="yyyy-MM-dd" EditFormat="Custom" 
                                                EditFormatString="yyyy-MM-dd" Font-Names="王漢宗細圓體繁" Height="28px" Width="100px">
                                                <CalendarProperties ShowClearButton="False">
                                                    
                                                    <ControlStyle Font-Names="王漢宗細圓體繁" />
                                                    

                                                    <Style Font-Names="王漢宗細圓體繁">
                                                    </Style>
                                                    
                                                </CalendarProperties>
                                            </dx:ASPxDateEdit>
                                        </td>
                                        <td align="center">
                                            <dx:ASPxButton ID="btnQUERY0" runat="server" CssClass="button search icon" 
                                                CssPostfix="button" Font-Names="王漢宗細圓體繁" Font-Size="Small" 
                                                OnClick="btnQUERY0_Click" Text="查詢" Width="90px">
                                            </dx:ASPxButton>
                                        </td>
                                        <td align="center">
                                            <dx:ASPxButton ID="btnEXPORT" runat="server" AutoPostBack="False" 
                                                CssClass="button log icon" CssPostfix="button" Font-Names="王漢宗細圓體繁" 
                                                Font-Size="Small" OnClick="btnEXPORT_Click" Text="匯出" Width="90px">
                                            </dx:ASPxButton>
                                        </td>
                                    </tr>
                                </table>
                            </asp:Panel>
                            <div align="left">
                                <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" 
                                    Font-Names="王漢宗細圓體繁" KeyFieldName="MSGID" 
                                    OnDetailRowExpandedChanged="ASPxGridView1_DetailRowExpandedChanged" 
                                    OnHeaderFilterFillItems="ASPxGridView1_HeaderFilterFillItems" 
                                    OnHtmlDataCellPrepared="ASPxGridView1_HtmlDataCellPrepared" 
                                    OnHtmlRowCreated="ASPxGridView1_HtmlRowCreated" 
                                    OnHtmlRowPrepared="ASPxGridView1_HtmlRowPrepared" Width="100%" 
                                    Font-Size="X-Small" 
                                    OnCustomButtonCallback="ASPxGridView1_CustomButtonCallback">
                                    <TotalSummary>
                                        <dx:ASPxSummaryItem DisplayFormat="#,##0" FieldName="SALE_AMOUNT" 
                                            SummaryType="Sum" />
                                        <dx:ASPxSummaryItem DisplayFormat="#,##0" FieldName="CASH_AMT" 
                                            SummaryType="Sum" />
                                        <dx:ASPxSummaryItem DisplayFormat="#,##0" FieldName="CHECK_AMT" 
                                            SummaryType="Sum" />
                                        <dx:ASPxSummaryItem DisplayFormat="#,##0" FieldName="CREDIT_CARD_AMT" 
                                            SummaryType="Sum" />
                                        <dx:ASPxSummaryItem DisplayFormat="#,##0" FieldName="GIFT_TOKEN_AMT" 
                                            SummaryType="Sum" />
                                        <dx:ASPxSummaryItem DisplayFormat="#,##0" FieldName="BILL_AMT" 
                                            SummaryType="Sum" />
                                        <dx:ASPxSummaryItem DisplayFormat="#,##0" FieldName="CPN_AMT" 
                                            SummaryType="Sum" />
                                        <dx:ASPxSummaryItem DisplayFormat="#,##0" FieldName="CHARGE_AMT" 
                                            SummaryType="Sum" />
                                        <dx:ASPxSummaryItem DisplayFormat="#,##0" FieldName="PAY_CPNL_AMT" 
                                            SummaryType="Sum" />
                                        <dx:ASPxSummaryItem DisplayFormat="#,##0" FieldName="PAY_CASH_AMT" 
                                            SummaryType="Sum" />
                                        <dx:ASPxSummaryItem DisplayFormat="#,##0" FieldName="DIS_AMT" 
                                            SummaryType="Sum" />
                                    </TotalSummary>
                                    <Columns>
                                        <dx:GridViewDataTextColumn ShowInCustomizationForm="True" VisibleIndex="0">
                                            <DataItemTemplate>
                                                <dx:ASPxButton ID="ASPxButton1" runat="server" CssPostfix="button" 
                                                    Font-Names="王漢宗細圓體繁" Height="24px" onclick="ASPxButton1_Click" Text="作廢" 
                                                    Width="24px" ForeColor="#3333CC">
                                                    <ClientSideEvents Click="function(s, e) {
	var o = '發票（取消）作廢，確定嗎？';
	if(confirm(o))
	{
		e.processOnServer = true
	}
	else
	{
		e.processOnServer = false
	}
}" />
                                                </dx:ASPxButton>
                                            </DataItemTemplate>
                                        </dx:GridViewDataTextColumn>
                                        <dx:GridViewDataTextColumn FieldName="MsgId" ShowInCustomizationForm="True" 
                                            Visible="False" VisibleIndex="1">
                                        </dx:GridViewDataTextColumn>
                                        <dx:GridViewDataTextColumn Caption="店別" FieldName="COMCODE" 
                                            ShowInCustomizationForm="True" VisibleIndex="2">
                                            <Settings AllowAutoFilter="False" />
                                            <DataItemTemplate>
                                                <dx:ASPxLabel ID="labNO_STORE" runat="server" Font-Names="王漢宗細圓體繁" 
                                                    Text="labNO_STORE" Width="100%">
                                                </dx:ASPxLabel>
                                            </DataItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                        </dx:GridViewDataTextColumn>
                                        <dx:GridViewDataTextColumn Caption="機號" FieldName="ECR_NO" 
                                            ShowInCustomizationForm="True" VisibleIndex="3">
                                            <Settings AllowAutoFilter="False" />
                                            <HeaderStyle HorizontalAlign="Center" />
                                        </dx:GridViewDataTextColumn>
                                        <dx:GridViewDataTextColumn Caption="作帳日期" FieldName="SYS_DATE" 
                                            ShowInCustomizationForm="True" Visible="False" VisibleIndex="4" 
                                            Width="100px">
                                            <HeaderStyle HorizontalAlign="Center" />
                                        </dx:GridViewDataTextColumn>
                                        <dx:GridViewDataTextColumn Caption="作帳時間" FieldName="SYS_TIME" 
                                            ShowInCustomizationForm="True" Visible="False" VisibleIndex="5">
                                            <HeaderStyle HorizontalAlign="Center" />
                                        </dx:GridViewDataTextColumn>
                                        <dx:GridViewDataTextColumn Caption="發票日期" FieldName="TRN_DATE" 
                                            ShowInCustomizationForm="True" VisibleIndex="6">
                                            <Settings AllowAutoFilter="False" />
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <CellStyle HorizontalAlign="Center">
                                            </CellStyle>
                                        </dx:GridViewDataTextColumn>
                                        <dx:GridViewDataTextColumn Caption="序號" FieldName="TRN_COUNT" 
                                            ShowInCustomizationForm="True" VisibleIndex="7">
                                            <HeaderStyle HorizontalAlign="Center" />
                                        </dx:GridViewDataTextColumn>
                                        <dx:GridViewDataTextColumn Caption="預收交易" FieldName="KINDNO" 
                                            ShowInCustomizationForm="True" Visible="False" VisibleIndex="8">
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <CellStyle HorizontalAlign="Center">
                                            </CellStyle>
                                        </dx:GridViewDataTextColumn>
                                        <dx:GridViewDataTextColumn Caption="收銀員" FieldName="SALES_NO" 
                                            ShowInCustomizationForm="True" VisibleIndex="11">
                                            <Settings AllowHeaderFilter="True" HeaderFilterMode="CheckedList" 
                                                AllowAutoFilter="False" />
                                            <HeaderStyle HorizontalAlign="Center" />
                                        </dx:GridViewDataTextColumn>
                                        <dx:GridViewDataTextColumn FieldName="CLERK_NO" ShowInCustomizationForm="True" 
                                            Visible="False" VisibleIndex="12">
                                            <HeaderStyle HorizontalAlign="Center" />
                                        </dx:GridViewDataTextColumn>
                                        <dx:GridViewDataTextColumn FieldName="TRN_STATUS" 
                                            ShowInCustomizationForm="True" Visible="False" VisibleIndex="13">
                                            <HeaderStyle HorizontalAlign="Center" />
                                        </dx:GridViewDataTextColumn>
                                        <dx:GridViewDataTextColumn Caption="統一編號" FieldName="UNIFY_NO" 
                                            ShowInCustomizationForm="True" VisibleIndex="14">
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <CellStyle HorizontalAlign="Center">
                                            </CellStyle>
                                        </dx:GridViewDataTextColumn>
                                        <dx:GridViewDataTextColumn Caption="信用卡No" FieldName="CREDIT_CARD_NO" 
                                            ShowInCustomizationForm="True" VisibleIndex="15">
                                            <HeaderStyle HorizontalAlign="Center" />
                                        </dx:GridViewDataTextColumn>
                                        <dx:GridViewDataTextColumn Caption="現金" FieldName="CASH_AMT" 
                                            ShowInCustomizationForm="True" VisibleIndex="17">
                                            <PropertiesTextEdit DisplayFormatString="#,##0">
                                            </PropertiesTextEdit>
                                            <Settings AllowAutoFilter="False" />
                                            <HeaderStyle HorizontalAlign="Center" />
                                        </dx:GridViewDataTextColumn>
                                        <dx:GridViewDataTextColumn Caption="儲值卡" FieldName="CHECK_AMT" 
                                            ShowInCustomizationForm="True" VisibleIndex="23" Visible="False">
                                            <PropertiesTextEdit DisplayFormatString="#,##0">
                                            </PropertiesTextEdit>
                                            <Settings AllowAutoFilter="False" />
                                            <HeaderStyle HorizontalAlign="Center" />
                                        </dx:GridViewDataTextColumn>
                                        <dx:GridViewDataTextColumn Caption="信用卡" FieldName="CREDIT_CARD_AMT" 
                                            ShowInCustomizationForm="True" VisibleIndex="20">
                                            <PropertiesTextEdit DisplayFormatString="#,##0">
                                            </PropertiesTextEdit>
                                            <Settings AllowAutoFilter="False" />
                                            <HeaderStyle HorizontalAlign="Center" />
                                        </dx:GridViewDataTextColumn>
                                        <dx:GridViewDataTextColumn Caption="現金禮券" FieldName="GIFT_TOKEN_AMT" 
                                            ShowInCustomizationForm="True" VisibleIndex="19">
                                            <PropertiesTextEdit DisplayFormatString="#,##0">
                                            </PropertiesTextEdit>
                                            <Settings AllowAutoFilter="False" />
                                            <HeaderStyle HorizontalAlign="Center" />
                                        </dx:GridViewDataTextColumn>
                                        <dx:GridViewDataTextColumn Caption="折價券" FieldName="CPN_AMT" 
                                            ShowInCustomizationForm="True" VisibleIndex="24" Visible="False">
                                            <PropertiesTextEdit DisplayFormatString="#,##0">
                                            </PropertiesTextEdit>
                                            <Settings AllowAutoFilter="False" />
                                            <HeaderStyle HorizontalAlign="Center" />
                                        </dx:GridViewDataTextColumn>
                                        <dx:GridViewDataTextColumn Caption="商品禮券" FieldName="BILL_AMT" 
                                            ShowInCustomizationForm="True" VisibleIndex="21" Visible="False">
                                            <PropertiesTextEdit DisplayFormatString="#,##0">
                                            </PropertiesTextEdit>
                                            <Settings AllowAutoFilter="False" />
                                            <HeaderStyle HorizontalAlign="Center" />
                                        </dx:GridViewDataTextColumn>
                                        <dx:GridViewDataTextColumn Caption="簽帳" FieldName="CHARGE_AMT" 
                                            ShowInCustomizationForm="True" VisibleIndex="25">
                                            <PropertiesTextEdit DisplayFormatString="#,##0">
                                            </PropertiesTextEdit>
                                            <Settings AllowAutoFilter="False" />
                                            <HeaderStyle HorizontalAlign="Center" />
                                        </dx:GridViewDataTextColumn>
                                        <dx:GridViewDataTextColumn FieldName="SALE_QTY" ShowInCustomizationForm="True" 
                                            Visible="False" VisibleIndex="27">
                                            <HeaderStyle HorizontalAlign="Center" />
                                        </dx:GridViewDataTextColumn>
                                        <dx:GridViewDataTextColumn Caption="銷售金額" FieldName="SALE_AMOUNT" 
                                            ShowInCustomizationForm="True" VisibleIndex="16">
                                            <PropertiesTextEdit DisplayFormatString="#,##0">
                                            </PropertiesTextEdit>
                                            <Settings AllowAutoFilter="False" />
                                            <HeaderStyle HorizontalAlign="Center" />
                                        </dx:GridViewDataTextColumn>
                                        <dx:GridViewDataTextColumn FieldName="DIS_AMT" ShowInCustomizationForm="True" 
                                            VisibleIndex="26" Caption="折扣">
                                            <PropertiesTextEdit DisplayFormatString="#,##0">
                                            </PropertiesTextEdit>
                                            <Settings AllowAutoFilter="False" />
                                            <HeaderStyle HorizontalAlign="Center" />
                                        </dx:GridViewDataTextColumn>
                                        <dx:GridViewDataTextColumn FieldName="PAY_SUB_AMT" 
                                            ShowInCustomizationForm="True" Visible="False" VisibleIndex="28">
                                            <HeaderStyle HorizontalAlign="Center" />
                                        </dx:GridViewDataTextColumn>
                                        <dx:GridViewDataTextColumn Caption="現金禮券找零" FieldName="PAY_CASH_AMT" 
                                            ShowInCustomizationForm="True" Visible="False" VisibleIndex="18">
                                            <PropertiesTextEdit DisplayFormatString="#,##0">
                                            </PropertiesTextEdit>
                                            <HeaderStyle HorizontalAlign="Center" />
                                        </dx:GridViewDataTextColumn>
                                        <dx:GridViewDataTextColumn FieldName="CARD_FLAG" ShowInCustomizationForm="True" 
                                            Visible="False" VisibleIndex="29">
                                            <HeaderStyle HorizontalAlign="Center" />
                                        </dx:GridViewDataTextColumn>
                                        <dx:GridViewDataTextColumn FieldName="CEL_MARK" ShowInCustomizationForm="True" 
                                            Visible="False" VisibleIndex="30">
                                            <HeaderStyle HorizontalAlign="Center" />
                                        </dx:GridViewDataTextColumn>
                                        <dx:GridViewDataTextColumn Caption="購物抵用券" FieldName="PAY_CPNL_AMT" 
                                            ShowInCustomizationForm="True" VisibleIndex="22" Visible="False">
                                            <PropertiesTextEdit DisplayFormatString="#,##0">
                                            </PropertiesTextEdit>
                                            <Settings AllowAutoFilter="False" />
                                            <HeaderStyle HorizontalAlign="Center" />
                                        </dx:GridViewDataTextColumn>
                                        <dx:GridViewDataTextColumn Caption="會員No" FieldName="STORE_CARD_NO" 
                                            ShowInCustomizationForm="True" VisibleIndex="31">
                                            <HeaderStyle HorizontalAlign="Center" />
                                        </dx:GridViewDataTextColumn>
                                        <dx:GridViewDataTextColumn FieldName="RESTAURANT_NUM" 
                                            ShowInCustomizationForm="True" Visible="False" VisibleIndex="32">
                                            <HeaderStyle HorizontalAlign="Center" />
                                        </dx:GridViewDataTextColumn>
                                        <dx:GridViewDataTextColumn FieldName="BILL2_AMT" ShowInCustomizationForm="True" 
                                            Visible="False" VisibleIndex="33">
                                            <HeaderStyle HorizontalAlign="Center" />
                                        </dx:GridViewDataTextColumn>
                                        <dx:GridViewDataTextColumn FieldName="BOUNS_SUB" ShowInCustomizationForm="True" 
                                            Visible="False" VisibleIndex="34">
                                            <HeaderStyle HorizontalAlign="Center" />
                                        </dx:GridViewDataTextColumn>
                                        <dx:GridViewDataTextColumn Caption="櫃號" FieldName="VNDRNO" 
                                            ShowInCustomizationForm="True" Visible="False" VisibleIndex="35">
                                            <Settings AllowHeaderFilter="True" />
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <CellStyle HorizontalAlign="Center">
                                            </CellStyle>
                                        </dx:GridViewDataTextColumn>
                                        <dx:GridViewDataTextColumn Caption="發票(起)" FieldName="INVOICE_NO_S" 
                                            ShowInCustomizationForm="True" VisibleIndex="36">
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <CellStyle HorizontalAlign="Center">
                                            </CellStyle>
                                        </dx:GridViewDataTextColumn>
                                        <dx:GridViewDataTextColumn Caption="發票(迄)" FieldName="INVOICE_NO_E" 
                                            ShowInCustomizationForm="True" VisibleIndex="37">
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <CellStyle HorizontalAlign="Center">
                                            </CellStyle>
                                        </dx:GridViewDataTextColumn>
                                        <dx:GridViewDataTextColumn Caption="發票狀態" FieldName="INVO_TYPE" 
                                            ShowInCustomizationForm="True" VisibleIndex="9">
                                            <Settings AllowAutoFilter="False" AllowHeaderFilter="True" 
                                                HeaderFilterMode="CheckedList" />
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <CellStyle HorizontalAlign="Center">
                                            </CellStyle>
                                        </dx:GridViewDataTextColumn>
                                        <dx:GridViewDataTextColumn Caption="轉檔Key" FieldName="FA5" 
                                            ShowInCustomizationForm="True" VisibleIndex="38">
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <CellStyle HorizontalAlign="Center">
                                            </CellStyle>
                                        </dx:GridViewDataTextColumn>
                                        <dx:GridViewDataTextColumn Caption="交易類別" FieldName="FA4" 
                                            ShowInCustomizationForm="True" VisibleIndex="10">
                                            <Settings AllowAutoFilter="False" AllowHeaderFilter="True" 
                                                HeaderFilterMode="CheckedList" />
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <CellStyle HorizontalAlign="Center">
                                            </CellStyle>
                                        </dx:GridViewDataTextColumn>
                                    </Columns>
                                    <SettingsBehavior AllowFocusedRow="True" />
                                    <SettingsPager AlwaysShowPager="True" PageSize="50" Position="TopAndBottom">
                                    </SettingsPager>
                                    <Settings ShowFooter="True" VerticalScrollableHeight="50" 
                                        ShowFilterRow="True" />
                                    <SettingsDetail AllowOnlyOneMasterRowExpanded="True" ShowDetailRow="True" />
                                    <SettingsPopup>
                                        <HeaderFilter Height="300px" ResizingMode="Postponed" />
                                    </SettingsPopup>
                                    <Styles>
                                        <AlternatingRow Enabled="True">
                                        </AlternatingRow>
                                        <HeaderFilterItem Font-Names="王漢宗細圓體繁">
                                        </HeaderFilterItem>
                                    </Styles>
                                    <Templates>
                                        <DetailRow>
                                            <dx:ASPxGridView ID="ASPxGridView2" runat="server" AutoGenerateColumns="False" 
                                                DataSourceID="EntityDataSource1" Font-Names="王漢宗細圓體繁" KeyFieldName="MsgId" 
                                                Font-Size="X-Small">
                                                <TotalSummary>
                                                    <dx:ASPxSummaryItem DisplayFormat="#,##0" FieldName="qty" SummaryType="Sum" />
                                                    <dx:ASPxSummaryItem FieldName="amount" SummaryType="Sum" 
                                                        DisplayFormat="#,##0" />
                                                </TotalSummary>
                                                <Columns>
                                                    <dx:GridViewDataTextColumn FieldName="MsgId" ReadOnly="True" Visible="False" 
                                                        VisibleIndex="0">
                                                        <HeaderStyle HorizontalAlign="Center" />
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn FieldName="comcode" Visible="False" VisibleIndex="1">
                                                        <HeaderStyle HorizontalAlign="Center" />
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn FieldName="ecr_no" Visible="False" VisibleIndex="2">
                                                        <HeaderStyle HorizontalAlign="Center" />
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn FieldName="sys_date" Visible="False" 
                                                        VisibleIndex="3">
                                                        <HeaderStyle HorizontalAlign="Center" />
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn FieldName="sys_time" Visible="False" 
                                                        VisibleIndex="4">
                                                        <HeaderStyle HorizontalAlign="Center" />
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn FieldName="trn_date" Visible="False" 
                                                        VisibleIndex="5">
                                                        <HeaderStyle HorizontalAlign="Center" />
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn FieldName="trn_count" Visible="False" 
                                                        VisibleIndex="6">
                                                        <HeaderStyle HorizontalAlign="Center" />
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn Caption="交易項次" FieldName="trn_item" VisibleIndex="7">
                                                        <HeaderStyle HorizontalAlign="Center" />
                                                        <CellStyle HorizontalAlign="Center">
                                                        </CellStyle>
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn Caption="發票號碼" FieldName="invoice_no" 
                                                        VisibleIndex="8">
                                                        <HeaderStyle HorizontalAlign="Center" />
                                                        <CellStyle HorizontalAlign="Center">
                                                        </CellStyle>
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn Caption="銷貨型態" FieldName="sale_type" 
                                                        VisibleIndex="9">
                                                        <HeaderStyle HorizontalAlign="Center" />
                                                        <CellStyle HorizontalAlign="Center">
                                                        </CellStyle>
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn Caption="國際條碼" FieldName="barcode" VisibleIndex="10">
                                                        <HeaderStyle HorizontalAlign="Center" />
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn Caption="分類編號" FieldName="dept_no" VisibleIndex="11">
                                                        <HeaderStyle HorizontalAlign="Center" />
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn Caption="數量" FieldName="qty" VisibleIndex="12">
                                                        <HeaderStyle HorizontalAlign="Center" />
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn Caption="單位" FieldName="sku_unit" VisibleIndex="13">
                                                        <HeaderStyle HorizontalAlign="Center" />
                                                        <CellStyle HorizontalAlign="Center">
                                                        </CellStyle>
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn Caption="單價" FieldName="price" VisibleIndex="14">
                                                        <HeaderStyle HorizontalAlign="Center" />
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn Caption="金額" FieldName="amount" VisibleIndex="15">
                                                        <HeaderStyle HorizontalAlign="Center" />
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn Caption="折扣金額" FieldName="dis_amt" VisibleIndex="16">
                                                        <HeaderStyle HorizontalAlign="Center" />
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn Caption="+-%" FieldName="dis_rate" VisibleIndex="17">
                                                        <HeaderStyle HorizontalAlign="Center" />
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn FieldName="credit_card_no" Visible="False" 
                                                        VisibleIndex="18">
                                                        <HeaderStyle HorizontalAlign="Center" />
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn Caption="稅別" FieldName="tax_type" VisibleIndex="19">
                                                        <HeaderStyle HorizontalAlign="Center" />
                                                        <CellStyle HorizontalAlign="Center">
                                                        </CellStyle>
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn FieldName="cel_mark" Visible="False" 
                                                        VisibleIndex="20">
                                                        <HeaderStyle HorizontalAlign="Center" />
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn FieldName="store_card_no" Visible="False" 
                                                        VisibleIndex="21">
                                                        <HeaderStyle HorizontalAlign="Center" />
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn Caption="原價" FieldName="market_price" 
                                                        VisibleIndex="22">
                                                        <HeaderStyle HorizontalAlign="Center" />
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn FieldName="promo_type" Visible="False" 
                                                        VisibleIndex="23">
                                                        <HeaderStyle HorizontalAlign="Center" />
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataDateColumn FieldName="last_update_time" Visible="False" 
                                                        VisibleIndex="24">
                                                        <HeaderStyle HorizontalAlign="Center" />
                                                    </dx:GridViewDataDateColumn>
                                                    <dx:GridViewDataTextColumn FieldName="good_no" Visible="False" 
                                                        VisibleIndex="25">
                                                        <HeaderStyle HorizontalAlign="Center" />
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn FieldName="FN1" Visible="False" VisibleIndex="26">
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn FieldName="FN2" Visible="False" VisibleIndex="27">
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn FieldName="FN3" Visible="False" VisibleIndex="28">
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn FieldName="FN4" Visible="False" VisibleIndex="29">
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn FieldName="FN5" Visible="False" VisibleIndex="30">
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn FieldName="FA1" Visible="False" VisibleIndex="31">
                                                        <HeaderStyle HorizontalAlign="Center" />
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn Caption="商品名稱" FieldName="FA2" VisibleIndex="32">
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn FieldName="FA3" Visible="False" VisibleIndex="33">
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn FieldName="FA4" Visible="False" VisibleIndex="34">
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn FieldName="FA5" Visible="False" VisibleIndex="35">
                                                        <HeaderStyle HorizontalAlign="Center" />
                                                    </dx:GridViewDataTextColumn>
                                                </Columns>
                                                <SettingsBehavior AllowSort="False" />
                                                <SettingsPager AlwaysShowPager="True" PageSize="20">
                                                </SettingsPager>
                                                <Settings ShowFooter="True" />
                                            </dx:ASPxGridView>
                                        </DetailRow>
                                    </Templates>
                                </dx:ASPxGridView>
                            </div>
                            <br />
                        </div>
                    <br />
                        <asp:EntityDataSource ID="edsPOS_ecrdat" runat="server" 
                            ConnectionString="name=NEWPMSEntities" DefaultContainerName="NEWPMSEntities" 
                            EnableFlattening="False" EntitySetName="vPOS_ecrdat" 
                            OrderBy="it.ECR_FLOOR,it.ECR_NO">
                        </asp:EntityDataSource>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:NEWPMSConnectionString %>" 
                            SelectCommand="EXEC DBO.POS_收銀機發票資料查詢 @SYS_DATE, @ECR_NO,@COMNO">
                            <SelectParameters>
                                <asp:Parameter Name="SYS_DATE" />
                                <asp:Parameter Name="ECR_NO" />
                                <asp:Parameter Name="COMNO" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:NEWPMSConnectionString %>" 
                            SelectCommand="EXEC DBO.POS_收銀機發票資料查詢2LOG @SYS_DATE, @ECR_NO,@COMNO,@UID">
                            <SelectParameters>
                                <asp:Parameter Name="SYS_DATE" />
                                <asp:Parameter Name="ECR_NO" />
                                <asp:Parameter Name="COMNO" />
                                <asp:Parameter Name="UID" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:EntityDataSource ID="EntityDataSource1" runat="server" 
                            ConnectionString="name=NEWPMSEntities" DefaultContainerName="NEWPMSEntities" 
                            EnableFlattening="False" EntitySetName="tmprec" OrderBy="it.trn_item" 
                            Where="it.FA5=@MsgId">
                            <WhereParameters>
                                <asp:QueryStringParameter Name="MsgId" Type="String" />
                            </WhereParameters>
                        </asp:EntityDataSource>
                        <dx:ASPxGridViewExporter ID="ASPxGridViewExporter1" runat="server" 
                            GridViewID="ASPxGridView1">
                        </dx:ASPxGridViewExporter>
                    <br />
                    <br />
                    </dx:ContentControl>
                </ContentCollection>
            </dx:TabPage>
            <dx:TabPage Name="Tab02" Text="監控" ToolTip="即時業績">
                <ContentCollection>
                    <dx:ContentControl runat="server" SupportsDisabledAttribute="True">
                        <div align="left">
                            <dx:ASPxGridView ID="ASPxGridView3" runat="server" AutoGenerateColumns="False" 
                                DataSourceID="SqlDataSource2" Font-Names="王漢宗細圓體繁" KeyFieldName="ecrno" 
                                OnHeaderFilterFillItems="ASPxGridView3_HeaderFilterFillItems" 
                                OnHtmlRowCreated="ASPxGridView3_HtmlRowCreated" 
                                OnHtmlRowPrepared="ASPxGridView3_HtmlRowPrepared" Width="100%">
                                <TotalSummary>
                                    <dx:ASPxSummaryItem FieldName="trancount" SummaryType="Sum" 
                                        DisplayFormat="#,##0" />
                                    <dx:ASPxSummaryItem DisplayFormat="#,##0" FieldName="sale_amount" 
                                        SummaryType="Sum" />
                                    <dx:ASPxSummaryItem FieldName="cancelcnt" SummaryType="Sum" 
                                        DisplayFormat="#,##0" />
                                    <dx:ASPxSummaryItem FieldName="returncnt" SummaryType="Sum" 
                                        DisplayFormat="#,##0" />
                                </TotalSummary>
                                <Columns>
                                    <dx:GridViewDataTextColumn Caption="店別" FieldName="comcode" 
                                        ShowInCustomizationForm="True" Visible="False" VisibleIndex="0">
                                        <Settings AllowHeaderFilter="True" />
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn Caption="機號" FieldName="ecrno" 
                                        ShowInCustomizationForm="True" VisibleIndex="2">
                                        <HeaderStyle HorizontalAlign="Center" />
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn Caption="交易時間" FieldName="sys_dttm" 
                                        ShowInCustomizationForm="True" VisibleIndex="3">
                                        <HeaderStyle HorizontalAlign="Center" />
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn Caption="交易筆數" FieldName="trancount" 
                                        ShowInCustomizationForm="True" VisibleIndex="4">
                                        <HeaderStyle HorizontalAlign="Center" />
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn Caption="最後交易序號" FieldName="maxtrancount" 
                                        ShowInCustomizationForm="True" VisibleIndex="5">
                                        <HeaderStyle HorizontalAlign="Center" />
                                        <CellStyle HorizontalAlign="Center">
                                        </CellStyle>
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn Caption="銷售總額" FieldName="sale_amount" 
                                        ShowInCustomizationForm="True" VisibleIndex="6">
                                        <PropertiesTextEdit DisplayFormatString="#,##0">
                                        </PropertiesTextEdit>
                                        <HeaderStyle HorizontalAlign="Center" />
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn Caption="發票使用張數" FieldName="invocol" 
                                        ShowInCustomizationForm="True" VisibleIndex="9">
                                        <PropertiesTextEdit DisplayFormatString="{0:c2}" EncodeHtml="False">
                                        </PropertiesTextEdit>
                                        <HeaderStyle HorizontalAlign="Center" />
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn Caption="作業別" FieldName="ecroper" 
                                        ShowInCustomizationForm="True" Visible="False" VisibleIndex="10">
                                        <HeaderStyle HorizontalAlign="Center" />
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn Caption="店別" FieldName="ecrfloor" 
                                        ShowInCustomizationForm="True" VisibleIndex="1">
                                        <Settings HeaderFilterMode="CheckedList" />
                                        <HeaderStyle HorizontalAlign="Center" />
                                        <CellStyle HorizontalAlign="Center">
                                        </CellStyle>
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn Caption="廠商編號" FieldName="ecr2vndrno" 
                                        ShowInCustomizationForm="True" Visible="False" VisibleIndex="11">
                                        <PropertiesTextEdit EncodeHtml="False">
                                        </PropertiesTextEdit>
                                        <HeaderStyle HorizontalAlign="Center" />
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn Caption="廠商名稱" FieldName="ecr2vnname" 
                                        ShowInCustomizationForm="True" Visible="False" VisibleIndex="12">
                                        <HeaderStyle HorizontalAlign="Center" />
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataDateColumn Caption="開機時間" FieldName="pos_open_date" 
                                        ShowInCustomizationForm="True" Visible="False" VisibleIndex="13">
                                        <PropertiesDateEdit DisplayFormatString="F">
                                        </PropertiesDateEdit>
                                        <HeaderStyle HorizontalAlign="Center" />
                                    </dx:GridViewDataDateColumn>
                                    <dx:GridViewDataDateColumn FieldName="create_dt" ShowInCustomizationForm="True" 
                                        Visible="False" VisibleIndex="16">
                                        <PropertiesDateEdit DisplayFormatString="F">
                                        </PropertiesDateEdit>
                                        <HeaderStyle HorizontalAlign="Center" />
                                    </dx:GridViewDataDateColumn>
                                    <dx:GridViewDataTextColumn Caption="取消筆數" FieldName="cancelcnt" 
                                        ShowInCustomizationForm="True" VisibleIndex="7">
                                        <HeaderStyle HorizontalAlign="Center" />
                                        <CellStyle HorizontalAlign="Center">
                                        </CellStyle>
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn Caption="作廢筆數" FieldName="returncnt" 
                                        ShowInCustomizationForm="True" VisibleIndex="8">
                                        <HeaderStyle HorizontalAlign="Center" />
                                        <CellStyle HorizontalAlign="Center">
                                        </CellStyle>
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn Caption="pos_close_date" FieldName="pos_close_date" 
                                        ShowInCustomizationForm="True" Visible="False" VisibleIndex="15">
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn Caption="營業狀態" FieldName="pos_status" 
                                        ShowInCustomizationForm="True" VisibleIndex="14">
                                        <HeaderStyle HorizontalAlign="Center" />
                                        <CellStyle HorizontalAlign="Center">
                                        </CellStyle>
                                    </dx:GridViewDataTextColumn>
                                </Columns>
                                <SettingsBehavior AllowFocusedRow="True" />
                                <SettingsPager AlwaysShowPager="True" Position="TopAndBottom">
                                </SettingsPager>
                                <Settings ShowFooter="True" VerticalScrollableHeight="50" />
                                <SettingsPopup>
                                    <HeaderFilter Height="300px" ResizingMode="Postponed" />
                                </SettingsPopup>
                            </dx:ASPxGridView>
                            <dx:ASPxLabel ID="ASPxLabel2" runat="server" Font-Names="王漢宗細圓體繁" 
                                Font-Size="10pt" Font-Underline="False" ForeColor="#FF3300" Text="注意！已扣除作廢發票金額" 
                                Width="100%" ClientVisible="False">
                            </dx:ASPxLabel>
                            <br />
                        </div>
                    <br />
                    <br />
                    <br />
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:NEWPMSConnectionString %>" 
                            SelectCommand="exec dbo.POS_收銀機監控查詢 @STORE_NO
">
                            <SelectParameters>
                                <asp:QueryStringParameter Name="STORE_NO" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:TabPage>
        </TabPages>
    </dx:ASPxPageControl>
</asp:Content>

