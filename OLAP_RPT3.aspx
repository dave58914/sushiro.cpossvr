<%@ page title="" language="C#" masterpagefile="~/MainPage.master" autoeventwireup="true" inherits="OLAP_RPT3, App_Web_olap_rpt3.aspx.cdcab7d2" %>

<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxTabControl" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxClasses" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxRoundPanel" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPanel" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.ASPxPivotGrid.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPivotGrid" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxEditors.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.ASPxPivotGrid.v12.1.Export, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPivotGrid.Export" tagprefix="dx" %>

<%@ Register assembly="DevExpress.XtraCharts.v12.1.Web, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.XtraCharts.Web" tagprefix="dxchartsui" %>
<%@ Register assembly="DevExpress.XtraCharts.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.XtraCharts" tagprefix="cc1" %>

<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxCallback" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxCallbackPanel" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxCallbackPanel" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxCallbackPanel" tagprefix="dx" %>

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
        .style8
        {
            width: 100%;
        }
        .style12
        {
            width: 100%;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <dx:ASPxPageControl ID="ASPxPageControl1" runat="server" ActiveTabIndex="0" 
        Font-Names="王漢宗細圓體繁" Font-Size="Small" TabPosition="Left" Width="100%" 
        Height="800px">
        <TabPages>
            <dx:TabPage Name="Tab01" Text="查詢">
                <ContentCollection>
                    <dx:ContentControl runat="server" SupportsDisabledAttribute="True">
                        <div align="center">
                            <dx:ASPxPanel ID="ASPxPanel1" runat="server" RenderMode="Table">
                                <PanelCollection>
                                    <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                                        <div align="left">
                                            <table class="style12">
                                                <tr>
                                                    <td>
                                                        <asp:Panel ID="Panel3" runat="server" Font-Names="王漢宗細圓體繁" Width="775px">
                                                            <table class="style8">
                                                                <tr>
                                                                    <td align="right" style="font-family: 王漢宗細圓體繁; font-size: small">
                                                                        店別</td>
                                                                    <td align="right">
                                                                        <dx:ASPxComboBox ID="cbNO_STORE" runat="server" DataSourceID="edsPOS_storedat" 
                                                                            Font-Names="王漢宗細圓體繁" Height="28px" TextField="NM_STORE" 
                                                                            TextFormatString="{0}; {1}; {2}" ValueField="NO_STORE" Width="200px">
                                                                            <Columns>
                                                                                <dx:ListBoxColumn Caption="店號" FieldName="NO_STORE" Name="NO_STORE" />
                                                                                <dx:ListBoxColumn Caption="店名" FieldName="NM_STORE" Name="NM_STORE" />
                                                                                <dx:ListBoxColumn Caption="店鋪類型" FieldName="KEY_TEXT" Name="KEY_TEXT" />
                                                                            </Columns>
                                                                        </dx:ASPxComboBox>
                                                                    </td>
                                                                    <td align="right" style="font-family: 王漢宗細圓體繁; font-size: small">
                                                                        日期起</td>
                                                                    <td>
                                                                        <dx:ASPxDateEdit ID="deBEGDT" runat="server" DisplayFormatString="yyyy-MM-dd" 
                                                                            EditFormat="Custom" EditFormatString="yyyy-MM-dd" Font-Names="王漢宗細圓體繁" 
                                                                            Height="28px" Width="100px">
                                                                            <CalendarProperties>
                                                                                <ControlStyle Font-Names="王漢宗細圓體繁" />
                                                                                <Style Font-Names="王漢宗細圓體繁">
                                                                                </Style>
                                                                            </CalendarProperties>
                                                                        </dx:ASPxDateEdit>
                                                                    </td>
                                                                    <td align="right" style="font-family: 王漢宗細圓體繁; font-size: small">
                                                                        日期迄</td>
                                                                    <td>
                                                                        <dx:ASPxDateEdit ID="deENDDT" runat="server" DisplayFormatString="yyyy-MM-dd" 
                                                                            EditFormat="Custom" EditFormatString="yyyy-MM-dd" Font-Names="王漢宗細圓體繁" 
                                                                            Height="28px" Width="100px">
                                                                            <CalendarProperties>
                                                                                <ControlStyle Font-Names="王漢宗細圓體繁" />
                                                                                <Style Font-Names="王漢宗細圓體繁">
                                                                                </Style>
                                                                            </CalendarProperties>
                                                                        </dx:ASPxDateEdit>
                                                                    </td>
                                                                    <td>
                                                                        <dx:ASPxButton ID="btnQUERY" runat="server" CssClass="button search icon" 
                                                                            CssPostfix="button" Font-Names="王漢宗細圓體繁" Font-Size="Small" Height="28px" 
                                                                            OnClick="btnQUERY_Click" Text="查詢" Width="90px">
                                                                        </dx:ASPxButton>
                                                                    </td>
                                                                    <td>
                                                                        <dx:ASPxButton ID="btnEXPORT" runat="server" AutoPostBack="False" 
                                                                            CssClass="button log icon" CssPostfix="button" Font-Names="王漢宗細圓體繁" 
                                                                            Font-Size="Small" Height="28px" OnClick="btnEXPORT_Click" Text="匯出" 
                                                                            Width="90px">
                                                                        </dx:ASPxButton>
                                                                    </td>
                                                                    <td align="left">
                                                                        <asp:Button ID="reloadOLAP" runat="server" CssClass="button" Height="28px" 
                                                                            OnClick="reloadOLAP_Click" Text="R" ToolTip="重設OLAP狀態" />
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </asp:Panel>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <dx:ASPxPivotGrid ID="ASPxPivotGrid1" runat="server" ClientIDMode="AutoID" 
                                                            DataSourceID="SqlDataSource2" Font-Names="王漢宗細圓體繁" 
                                                            OnAfterPerformCallback="ASPxPivotGrid1_AfterPerformCallback">
                                                            <Fields>
                                                                <dx:PivotGridField ID="fieldsysdate" Area="RowArea" AreaIndex="0" Caption="日期" 
                                                                    FieldName="sys_date">
                                                                    <CellStyle Font-Names="王漢宗細圓體繁">
                                                                    </CellStyle>
                                                                    <ValueStyle Font-Names="王漢宗細圓體繁">
                                                                    </ValueStyle>
                                                                </dx:PivotGridField>
                                                                <dx:PivotGridField ID="fieldfmemo" Area="ColumnArea" AreaIndex="0" Caption="營業收入" 
                                                                    FieldName="f_memo">
                                                                    <CellStyle Font-Names="王漢宗細圓體繁">
                                                                    </CellStyle>
                                                                    <ValueStyle Font-Names="王漢宗細圓體繁">
                                                                    </ValueStyle>
                                                                </dx:PivotGridField>
                                                                <dx:PivotGridField ID="fieldAMOUNT2" Area="DataArea" AreaIndex="0" Caption="税抜売上" 
                                                                    FieldName="AMOUNT_2" CellFormat-FormatString="#,##0" 
                                                                    CellFormat-FormatType="Numeric">
                                                                    <CellStyle Font-Names="王漢宗細圓體繁">
                                                                    </CellStyle>
                                                                    <ValueStyle Font-Names="王漢宗細圓體繁">
                                                                    </ValueStyle>
                                                                </dx:PivotGridField>
                                                                <dx:PivotGridField ID="fieldAMOUNT1" Area="DataArea" AreaIndex="2" Caption="税込売上" 
                                                                    CellFormat-FormatString="#,##0" CellFormat-FormatType="Numeric" 
                                                                    FieldName="AMOUNT_1" GrandTotalCellFormat-FormatString="#,##0" 
                                                                    GrandTotalCellFormat-FormatType="Numeric" TotalCellFormat-FormatString="#,##0" 
                                                                    TotalCellFormat-FormatType="Numeric" TotalValueFormat-FormatString="#,##0" 
                                                                    TotalValueFormat-FormatType="Numeric" ValueFormat-FormatString="#,##0" 
                                                                    ValueFormat-FormatType="Numeric">
                                                                    <CellStyle Font-Names="王漢宗細圓體繁">
                                                                    </CellStyle>
                                                                    <ValueStyle Font-Names="王漢宗細圓體繁">
                                                                    </ValueStyle>
                                                                </dx:PivotGridField>
                                                                <dx:PivotGridField ID="fieldsysmonth" AreaIndex="0" Caption="月份" 
                                                                    FieldName="sys_month">
                                                                    <CellStyle Font-Names="王漢宗細圓體繁">
                                                                    </CellStyle>
                                                                    <ValueStyle Font-Names="王漢宗細圓體繁">
                                                                    </ValueStyle>
                                                                </dx:PivotGridField>
                                                                <dx:PivotGridField ID="fieldsysweek" Area="RowArea" AreaIndex="1" Caption="星期" 
                                                                    FieldName="sys_week">
                                                                    <CellStyle Font-Names="王漢宗細圓體繁">
                                                                    </CellStyle>
                                                                    <ValueStyle Font-Names="王漢宗細圓體繁">
                                                                    </ValueStyle>
                                                                </dx:PivotGridField>
                                                                <dx:PivotGridField ID="fieldcomcode" Area="RowArea" AreaIndex="2" Caption="店別" 
                                                                    FieldName="comcode">
                                                                    <CellStyle Font-Names="王漢宗細圓體繁">
                                                                    </CellStyle>
                                                                    <ValueStyle Font-Names="王漢宗細圓體繁">
                                                                    </ValueStyle>
                                                                </dx:PivotGridField>
                                                                <dx:PivotGridField ID="fieldAMOUNT31" Area="DataArea" AreaIndex="1" 
                                                                    Caption="営業税" CellFormat-FormatString="#,##0" CellFormat-FormatType="Numeric" 
                                                                    FieldName="AMOUNT_3">
                                                                    <CellStyle Font-Names="王漢宗細圓體繁">
                                                                    </CellStyle>
                                                                </dx:PivotGridField>
                                                            </Fields>
                                                            <OptionsView ShowColumnGrandTotalHeader="False" ShowColumnTotals="False" 
                                                                ShowRowGrandTotalHeader="False" />
                                                            <OptionsCustomization FilterPopupWindowHeight="300px" 
                                                                FilterPopupWindowResizeMode="Postponed" />
                                                            <OptionsChartDataSource DataProvidePriority="Columns" />
                                                            <OptionsPager NumericButtonCount="50" RowsPerPage="50">
                                                            </OptionsPager>
                                                            <Styles>
                                                                <HeaderStyle Font-Names="王漢宗細圓體繁" />
                                                                <FilterAreaStyle Font-Names="王漢宗細圓體繁">
                                                                </FilterAreaStyle>
                                                                <ColumnAreaStyle Font-Names="王漢宗細圓體繁" HorizontalAlign="Center">
                                                                </ColumnAreaStyle>
                                                                <RowAreaStyle Font-Names="王漢宗細圓體繁">
                                                                </RowAreaStyle>
                                                                <FieldValueGrandTotalStyle Font-Names="王漢宗細圓體繁">
                                                                </FieldValueGrandTotalStyle>
                                                                <TotalCellStyle Font-Names="王漢宗細圓體繁">
                                                                </TotalCellStyle>
                                                                <FilterItemStyle Font-Names="王漢宗細圓體繁">
                                                                </FilterItemStyle>
                                                            </Styles>
                                                            <StylesPager>
                                                                <CurrentPageNumber Font-Names="王漢宗細圓體繁">
                                                                </CurrentPageNumber>
                                                                <PageNumber Font-Names="王漢宗細圓體繁">
                                                                </PageNumber>
                                                                <PageSizeItem Font-Names="王漢宗細圓體繁">
                                                                </PageSizeItem>
                                                                <Summary Font-Names="王漢宗細圓體繁">
                                                                </Summary>
                                                            </StylesPager>
                                                            <StylesEditors>
                                                                <TextBox Font-Names="王漢宗細圓體繁">
                                                                </TextBox>
                                                            </StylesEditors>
                                                        </dx:ASPxPivotGrid>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <dx:ASPxLabel ID="ASPxLabel1" runat="server" Font-Names="王漢宗細圓體繁" 
                                                            Font-Size="10pt" Font-Underline="False" ForeColor="#FF3300" Text="注意！已扣除作廢發票金額" 
                                                            Width="100%" ClientVisible="False">
                                                        </dx:ASPxLabel>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </dx:PanelContent>
                                </PanelCollection>
                            </dx:ASPxPanel>
                            <br />
                        </div>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:NEWPMSConnectionString %>" 
                            OnSelected="SqlDataSource2_Selected" 
                            OnSelecting="SqlDataSource2_Selecting" SelectCommand="exec dbo.OLAP_RPT3 @BEGDT, @ENDDT, @STORE_NO
">
                            <SelectParameters>
                                <asp:Parameter Name="BEGDT" />
                                <asp:Parameter Name="ENDDT" />
                                <asp:Parameter Name="STORE_NO" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:NEWPMSConnectionString %>" 
                            OnSelected="SqlDataSource2_Selected" OnSelecting="SqlDataSource2_Selecting" SelectCommand="exec dbo.OLAP_RPT3_export @STORE_NO, @BEGDT, @ENDDT

">
                            <SelectParameters>
                                <asp:Parameter Name="STORE_NO" />
                                <asp:Parameter Name="BEGDT" />
                                <asp:Parameter Name="ENDDT" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <dx:ASPxPivotGridExporter ID="ASPxPivotGridExporter1" runat="server" 
                            ASPxPivotGridID="ASPxPivotGrid1">
                        </dx:ASPxPivotGridExporter>
                        <asp:EntityDataSource ID="edsPOS_storedat" runat="server" 
                            ConnectionString="name=NEWPMSEntities" DefaultContainerName="NEWPMSEntities" 
                            EnableFlattening="False" EntitySetName="vPOS_storedat" OrderBy="it.NO_STORE">
                        </asp:EntityDataSource>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:TabPage>
        </TabPages>
    </dx:ASPxPageControl>
</asp:Content>

