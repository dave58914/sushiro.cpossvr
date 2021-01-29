<%@ page title="" language="C#" masterpagefile="~/MainPage.master" autoeventwireup="true" inherits="LOG_PosSaleConvert, App_Web_log_possaleconvert.aspx.cdcab7d2" %>

<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxTabControl" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxClasses" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxRoundPanel" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPanel" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.ASPxGridView.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxEditors.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPopupControl" tagprefix="dx" %>

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
        .style12
        {
            width: 71px;
        }
        .dxgvControl
        {
	        border: 1px Solid #9F9F9F;
	        font: 12px Tahoma;
	        background-color: #F2F2F2;
	        color: Black;
	        cursor: default;
        }
        .dxgvTable
        {
        	background-color: White;
	        border-width: 0;
	        border-collapse: separate!important;
	        overflow: hidden;
	        color: Black;
        }
        .dxgvTable
        {
        	-webkit-tap-highlight-color: rgba(0,0,0,0);
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
        .dxgvPagerBottomPanel
        {
	        padding-top: 4px;
	        padding-bottom: 4px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <dx:ASPxPageControl ID="ASPxPageControl1" runat="server" ActiveTabIndex="0" 
        Font-Names="王漢宗細圓體繁" Font-Size="Small" TabPosition="Left" Width="100%" 
        Height="800px">
        <TabPages>
            <dx:TabPage Name="Tab01" Text="管理">
                <ContentCollection>
                    <dx:ContentControl runat="server" SupportsDisabledAttribute="True">
                        <div align="center">
                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <ContentTemplate>
                                    <table>
                                        <tr>
                                            <td>
                                                <asp:Panel ID="Panel2" runat="server" Width="750px">
                                                    <div align="left">
                                                        <table>
                                                            <tr>
                                                                <td align="right" class="style12" 
                                                                    style="font-family: 王漢宗細圓體繁; font-size: small">
                                                                    機台號</td>
                                                                <td align="center">
                                                                    <dx:ASPxComboBox ID="cbECRNO" runat="server" ClientInstanceName="cb1" 
                                                                        DataSourceID="edsPOS_ecrdat" Font-Names="王漢宗細圓體繁" Height="28px" 
                                                                        SelectedIndex="0" TextField="MsgId" TextFormatString="{0}; {1}; {2}" 
                                                                        ValueField="MsgId" Width="200px">
                                                                        <Columns>
                                                                            <dx:ListBoxColumn Caption="機號" FieldName="ECR_NO" Name="ECR_NO" />
                                                                            <dx:ListBoxColumn Caption="店號" FieldName="ECR_FLOOR" Name="ECR_FLOOR" />
                                                                            <dx:ListBoxColumn Caption="店名" FieldName="NM_STORE" Name="NM_STORE" />
                                                                        </Columns>
                                                                    </dx:ASPxComboBox>
                                                                </td>
                                                                <td align="right" style="font-family: 王漢宗細圓體繁; font-size: small;">
                                                                    交易日期</td>
                                                                <td align="center">
                                                                    <dx:ASPxDateEdit ID="deSYS_DATE" runat="server" ClientInstanceName="de1" 
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
                                                                    <dx:ASPxButton ID="btnQUERY" runat="server" CssClass="button search icon" 
                                                                        CssPostfix="button" Font-Names="王漢宗細圓體繁" Font-Size="Small" 
                                                                        OnClick="btnQUERY_Click" Text="查詢" Width="90px">
                                                                    </dx:ASPxButton>
                                                                </td>
                                                                <td align="center">
                                                                    <dx:ASPxButton ID="btnDEL" runat="server" CssClass="button remove icon" 
                                                                        CssPostfix="button" Font-Names="王漢宗細圓體繁" Font-Size="Small" 
                                                                        OnClick="btnDEL_Click" Text="整批刪除" Width="100px">
                                                                        <ClientSideEvents Click="function(s, e) {
    var str = cb1.GetText();
	var strAry = str.split(';');
	var posno = strAry[0];
	var ecrnn = strAry[2];
	var sysdt = de1.GetText();
	var o = '機號: ' + posno + '\n門市: ' + ecrnn + '\n日期: ' + sysdt + '\n執行刪除，確定嗎？';
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
                                                                </td>
                                                                <td align="center">
                                                                    <dx:ASPxButton ID="btnEXPORT" runat="server" AutoPostBack="False" 
                                                                        CssClass="button log icon" CssPostfix="button" Font-Names="王漢宗細圓體繁" 
                                                                        Font-Size="Small" OnClick="btnEXPORT_Click" Text="匯出" Width="90px">
                                                                    </dx:ASPxButton>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </div>
                                                </asp:Panel>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" 
                                                    ClientInstanceName="grid" DataSourceID="edsFTU_TransactionDatalog" 
                                                    Font-Names="王漢宗細圓體繁" Font-Size="X-Small" KeyFieldName="MsgId" 
                                                    OnCellEditorInitialize="ASPxGridView1_CellEditorInitialize" 
                                                    OnDetailRowExpandedChanged="ASPxGridView1_DetailRowExpandedChanged" 
                                                    OnHtmlDataCellPrepared="ASPxGridView1_HtmlDataCellPrepared" 
                                                    OnHtmlRowCreated="ASPxGridView1_HtmlRowCreated" Width="100%">
                                                    <Columns>
                                                        <dx:GridViewCommandColumn ShowInCustomizationForm="True" VisibleIndex="0">
                                                            <DeleteButton Visible="True">
                                                            </DeleteButton>
                                                        </dx:GridViewCommandColumn>
                                                        <dx:GridViewDataTextColumn FieldName="MsgId" ReadOnly="True" 
                                                            ShowInCustomizationForm="True" Visible="False" VisibleIndex="1">
                                                        </dx:GridViewDataTextColumn>
                                                        <dx:GridViewDataTextColumn FieldName="Token" ShowInCustomizationForm="True" 
                                                            Visible="False" VisibleIndex="2">
                                                        </dx:GridViewDataTextColumn>
                                                        <dx:GridViewDataTextColumn Caption="交易序號" FieldName="TransactionNo" 
                                                            ShowInCustomizationForm="True" VisibleIndex="6">
                                                            <HeaderStyle HorizontalAlign="Center" />
                                                        </dx:GridViewDataTextColumn>
                                                        <dx:GridViewDataTextColumn FieldName="CompanyCode" 
                                                            ShowInCustomizationForm="True" Visible="False" VisibleIndex="7">
                                                        </dx:GridViewDataTextColumn>
                                                        <dx:GridViewDataTextColumn Caption="門市" FieldName="StoreCode" 
                                                            ShowInCustomizationForm="True" VisibleIndex="4">
                                                            <Settings AllowAutoFilter="False" />
                                                            <HeaderStyle HorizontalAlign="Center" />
                                                        </dx:GridViewDataTextColumn>
                                                        <dx:GridViewDataTextColumn Caption="機台號" FieldName="TerminalNo" 
                                                            ShowInCustomizationForm="True" VisibleIndex="5">
                                                            <Settings AllowAutoFilter="False" />
                                                            <HeaderStyle HorizontalAlign="Center" />
                                                        </dx:GridViewDataTextColumn>
                                                        <dx:GridViewDataTextColumn Caption="交易日期" FieldName="SystemDateTime" 
                                                            ShowInCustomizationForm="True" VisibleIndex="3">
                                                            <Settings AllowAutoFilter="False" />
                                                            <HeaderStyle HorizontalAlign="Center" />
                                                        </dx:GridViewDataTextColumn>
                                                        <dx:GridViewDataTextColumn Caption="交換檔案" FieldName="TransFile" 
                                                            ShowInCustomizationForm="True" VisibleIndex="8">
                                                            <Settings AllowAutoFilter="False" />
                                                            <HeaderStyle HorizontalAlign="Center" />
                                                        </dx:GridViewDataTextColumn>
                                                        <dx:GridViewDataTextColumn Caption="交換日期" FieldName="TransDateTime" 
                                                            ShowInCustomizationForm="True" VisibleIndex="9">
                                                            <Settings AllowAutoFilter="False" />
                                                            <HeaderStyle HorizontalAlign="Center" />
                                                        </dx:GridViewDataTextColumn>
                                                        <dx:GridViewDataTextColumn Caption="交換狀態" FieldName="TransResult" 
                                                            ShowInCustomizationForm="True" VisibleIndex="10">
                                                            <Settings AllowAutoFilter="False" />
                                                            <HeaderStyle HorizontalAlign="Center" />
                                                        </dx:GridViewDataTextColumn>
                                                        <dx:GridViewDataTextColumn Caption="轉至後台狀態" FieldName="ToNewpmsDateTime" 
                                                            ShowInCustomizationForm="True" VisibleIndex="11">
                                                            <DataItemTemplate>
                                                                <dx:ASPxHyperLink ID="lnkToNewpmsDateTime" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                    Font-Size="X-Small" Text="ASPxHyperLink" Width="100%" />
                                                            </DataItemTemplate>
                                                            <HeaderStyle HorizontalAlign="Center" />
                                                        </dx:GridViewDataTextColumn>
                                                    </Columns>
                                                    <SettingsBehavior AllowFocusedRow="True" AllowSort="False" 
                                                        ConfirmDelete="True" />
                                                    <SettingsPager AlwaysShowPager="True" PageSize="50" Position="TopAndBottom">
                                                    </SettingsPager>
                                                    <SettingsEditing EditFormColumnCount="1" />
                                                    <Settings ShowFilterRow="True" />
                                                    <SettingsDetail AllowOnlyOneMasterRowExpanded="True" ShowDetailRow="True" />
                                                    <Styles>
                                                        <AlternatingRow Enabled="True">
                                                        </AlternatingRow>
                                                        <FilterRow Font-Names="王漢宗細圓體繁" Font-Size="Small">
                                                        </FilterRow>
                                                    </Styles>
                                                    <StylesEditors>
                                                        <TextBox Font-Names="王漢宗細圓體繁">
                                                        </TextBox>
                                                    </StylesEditors>
                                                    <Templates>
                                                        <DetailRow>
                                                            <dx:ASPxGridView ID="ASPxGridView2" runat="server" AutoGenerateColumns="False" 
                                                                DataSourceID="sdsFTU_LineItem" Font-Names="王漢宗細圓體繁" Font-Size="X-Small" 
                                                                KeyFieldName="MsgId" Width="100%">
                                                                <TotalSummary>
                                                                    <dx:ASPxSummaryItem DisplayFormat="#,##0" FieldName="Quantity" 
                                                                        SummaryType="Sum" />
                                                                    <dx:ASPxSummaryItem DisplayFormat="#,##0" FieldName="TaxDivided" 
                                                                        SummaryType="Sum" />
                                                                    <dx:ASPxSummaryItem DisplayFormat="#,##0" FieldName="Amount" 
                                                                        SummaryType="Sum" />
                                                                </TotalSummary>
                                                                <Columns>
                                                                    <dx:GridViewDataTextColumn FieldName="MsgId" ReadOnly="True" Visible="False" 
                                                                        VisibleIndex="0">
                                                                    </dx:GridViewDataTextColumn>
                                                                    <dx:GridViewDataTextColumn FieldName="Token" Visible="False" VisibleIndex="1">
                                                                    </dx:GridViewDataTextColumn>
                                                                    <dx:GridViewDataTextColumn FieldName="SystemDateTime" VisibleIndex="2">
                                                                    </dx:GridViewDataTextColumn>
                                                                    <dx:GridViewDataTextColumn FieldName="StoreCode" VisibleIndex="3">
                                                                    </dx:GridViewDataTextColumn>
                                                                    <dx:GridViewDataTextColumn FieldName="TerminalNo" VisibleIndex="4">
                                                                    </dx:GridViewDataTextColumn>
                                                                    <dx:GridViewDataTextColumn FieldName="TransactionNo" VisibleIndex="5">
                                                                    </dx:GridViewDataTextColumn>
                                                                    <dx:GridViewDataTextColumn FieldName="LineItemNo" VisibleIndex="6">
                                                                    </dx:GridViewDataTextColumn>
                                                                    <dx:GridViewDataTextColumn FieldName="ItemCode" VisibleIndex="7">
                                                                    </dx:GridViewDataTextColumn>
                                                                    <dx:GridViewDataTextColumn FieldName="DepartmentCode" VisibleIndex="8">
                                                                    </dx:GridViewDataTextColumn>
                                                                    <dx:GridViewDataTextColumn FieldName="DepartmentDescription" VisibleIndex="9">
                                                                    </dx:GridViewDataTextColumn>
                                                                    <dx:GridViewDataTextColumn FieldName="Description" VisibleIndex="10">
                                                                    </dx:GridViewDataTextColumn>
                                                                    <dx:GridViewDataTextColumn FieldName="UnitPriceForPurchase" VisibleIndex="11">
                                                                        <PropertiesTextEdit DisplayFormatString="#,##0">
                                                                        </PropertiesTextEdit>
                                                                    </dx:GridViewDataTextColumn>
                                                                    <dx:GridViewDataTextColumn FieldName="Quantity" VisibleIndex="12">
                                                                        <PropertiesTextEdit DisplayFormatString="#,##0">
                                                                        </PropertiesTextEdit>
                                                                    </dx:GridViewDataTextColumn>
                                                                    <dx:GridViewDataTextColumn FieldName="TaxDivided" VisibleIndex="13">
                                                                        <PropertiesTextEdit DisplayFormatString="#,##0">
                                                                        </PropertiesTextEdit>
                                                                    </dx:GridViewDataTextColumn>
                                                                    <dx:GridViewDataTextColumn FieldName="Amount" VisibleIndex="14">
                                                                        <PropertiesTextEdit DisplayFormatString="#,##0">
                                                                        </PropertiesTextEdit>
                                                                    </dx:GridViewDataTextColumn>
                                                                    <dx:GridViewDataTextColumn FieldName="EInvoiceNo" VisibleIndex="15">
                                                                    </dx:GridViewDataTextColumn>
                                                                </Columns>
                                                                <SettingsPager AlwaysShowPager="True">
                                                                </SettingsPager>
                                                                <Settings ShowFooter="True" />
                                                            </dx:ASPxGridView>
                                                        </DetailRow>
                                                    </Templates>
                                                </dx:ASPxGridView>
                                            </td>
                                        </tr>
                                    </table>
                                    <br />
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </div>
                    <br />
                        <asp:EntityDataSource ID="edsPOS_ecrdat" runat="server" 
                            ConnectionString="name=NEWPMSEntities" DefaultContainerName="NEWPMSEntities" 
                            EnableFlattening="False" EntitySetName="vPOS_ecrdat" 
                            OrderBy="it.IDX,it.ECR_NO" EntityTypeFilter="" Select="">
                        </asp:EntityDataSource>
                        <asp:EntityDataSource ID="edsFTU_TransactionDatalog" runat="server" 
                            ConnectionString="name=NEWPMSEntities" DefaultContainerName="NEWPMSEntities" 
                            EnableFlattening="False" EntitySetName="FTU_TransactionDatalog" 
                            OrderBy="it.TransactionNo" 
                            
                            Where="it.SystemDateTime like @SystemDateTime and it.StoreCode=@StoreCode and it.TerminalNo=@TerminalNo" 
                            EnableDelete="True">
                            <WhereParameters>
                                <asp:Parameter Name="SystemDateTime" Type="String" />
                                <asp:Parameter Name="StoreCode" Type="String" />
                                <asp:Parameter Name="TerminalNo" Type="String" />
                            </WhereParameters>
                        </asp:EntityDataSource>
                        <asp:SqlDataSource ID="sdsFTU_TransactionDatalog" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:NEWPMSConnectionString %>" DeleteCommand="delete from dbo.FTU_TransactionDatalog
where 
SystemDateTime like @SystemDateTime and 
StoreCode=@StoreCode and 
TerminalNo=@TerminalNo
" SelectCommand="select * from dbo.FTU_TransactionDatalog
where 
SystemDateTime like @SystemDateTime and 
StoreCode=@StoreCode and 
TerminalNo=@TerminalNo
">
                            <DeleteParameters>
                                <asp:Parameter Name="SystemDateTime" />
                                <asp:Parameter Name="StoreCode" />
                                <asp:Parameter Name="TerminalNo" />
                            </DeleteParameters>
                            <SelectParameters>
                                <asp:Parameter Name="SystemDateTime" />
                                <asp:Parameter Name="StoreCode" />
                                <asp:Parameter Name="TerminalNo" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:SqlDataSource ID="sdsFTU_LineItem" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:NEWPMSConnectionString %>" DeleteCommand="delete from dbo.FTU_TransactionDatalog
where 
SystemDateTime like @SystemDateTime and 
StoreCode=@StoreCode and 
TerminalNo=@TerminalNo
" SelectCommand="select (NEWID())MsgId,m.Token,m.SystemDateTime,m.StoreCode,m.TerminalNo,m.TransactionNo,
d1.LineItemNo,d1.ItemCode,d1.DepartmentCode,d1.DepartmentDescription,d1.Description,d1.UnitPriceForPurchase,d1.Quantity,d1.TaxDivided,d1.Amount,d1.EInvoiceNo
from dbo.FTU_TransactionDatalog m
left join dbo.FTU_LineItem d1 on d1.Token=m.Token
where 
m.TransactionNo=@TransactionNo
and left(m.SystemDateTime,10)=@SystemDateTime
and m.StoreCode=@StoreCode
and m.TerminalNo=@TerminalNo
order by d1.LineItemNo
">
                            <DeleteParameters>
                                <asp:Parameter Name="SystemDateTime" />
                                <asp:Parameter Name="StoreCode" />
                                <asp:Parameter Name="TerminalNo" />
                            </DeleteParameters>
                            <SelectParameters>
                                <asp:Parameter Name="TransactionNo" />
                                <asp:Parameter Name="SystemDateTime" />
                                <asp:Parameter Name="StoreCode" />
                                <asp:Parameter Name="TerminalNo" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <dx:ASPxGridViewExporter ID="ASPxGridViewExporter1" runat="server" 
                            GridViewID="ASPxGridView1">
                        </dx:ASPxGridViewExporter>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:TabPage>
        </TabPages>
    </dx:ASPxPageControl>
</asp:Content>

