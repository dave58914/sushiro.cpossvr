<%@ page title="" language="C#" masterpagefile="~/MainPage.master" autoeventwireup="true" inherits="OLAP_RPT2, App_Web_olap_rpt2.aspx.cdcab7d2" %>

<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxTabControl" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxClasses" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxRoundPanel" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPanel" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.ASPxPivotGrid.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPivotGrid" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxEditors.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.ASPxPivotGrid.v12.1.Export, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPivotGrid.Export" tagprefix="dx" %>

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
                                                            OnAfterPerformCallback="ASPxPivotGrid1_AfterPerformCallback" Width="100%">
                                                            <Fields>
                                                                <dx:PivotGridField ID="fieldSYSDATE" Area="RowArea" AreaIndex="0" Caption="日期" 
                                                                    FieldName="SYS_DATE" Options-AllowSortBySummary="False">
                                                                    <CellStyle Font-Names="王漢宗細圓體繁">
                                                                    </CellStyle>
                                                                    <ValueStyle Font-Names="王漢宗細圓體繁">
                                                                    </ValueStyle>
                                                                </dx:PivotGridField>
                                                                <dx:PivotGridField ID="fieldFLOOR" Area="ColumnArea" AreaIndex="0" Caption="店別" 
                                                                    FieldName="FLOOR" Options-AllowSortBySummary="False">
                                                                    <CellStyle Font-Names="王漢宗細圓體繁">
                                                                    </CellStyle>
                                                                    <ValueStyle Font-Names="王漢宗細圓體繁">
                                                                    </ValueStyle>
                                                                </dx:PivotGridField>
                                                                <dx:PivotGridField ID="fieldECRNO" AreaIndex="2" Caption="機號" 
                                                                    FieldName="ECR_NO" Options-AllowSortBySummary="False">
                                                                    <CellStyle Font-Names="王漢宗細圓體繁">
                                                                    </CellStyle>
                                                                    <ValueStyle Font-Names="王漢宗細圓體繁">
                                                                    </ValueStyle>
                                                                </dx:PivotGridField>
                                                                <dx:PivotGridField ID="fieldVNDRNO" Area="RowArea" AreaIndex="1" Caption="商品條碼" 
                                                                    FieldName="VNDRNO" Options-AllowSortBySummary="False">
                                                                    <CellStyle Font-Names="王漢宗細圓體繁">
                                                                    </CellStyle>
                                                                    <ValueStyle Font-Names="王漢宗細圓體繁">
                                                                    </ValueStyle>
                                                                </dx:PivotGridField>
                                                                <dx:PivotGridField ID="fieldVNDRNAME" Area="RowArea" AreaIndex="2" 
                                                                    Caption="商品名稱" FieldName="VNDRNAME" Options-AllowSortBySummary="False">
                                                                    <CellStyle Font-Names="王漢宗細圓體繁">
                                                                    </CellStyle>
                                                                    <ValueStyle Font-Names="王漢宗細圓體繁">
                                                                    </ValueStyle>
                                                                </dx:PivotGridField>
                                                                <dx:PivotGridField ID="fieldAMOUNT" Area="DataArea" AreaIndex="1" Caption="金額" 
                                                                    CellFormat-FormatString="#,##0" CellFormat-FormatType="Numeric" 
                                                                    FieldName="AMOUNT" GrandTotalCellFormat-FormatString="#,##0" 
                                                                    GrandTotalCellFormat-FormatType="Numeric" Options-AllowSortBySummary="False" 
                                                                    TotalCellFormat-FormatString="#,##0" TotalCellFormat-FormatType="Numeric" 
                                                                    TotalValueFormat-FormatString="#,##0" TotalValueFormat-FormatType="Numeric" 
                                                                    ValueFormat-FormatString="#,##0" ValueFormat-FormatType="Numeric">
                                                                    <CellStyle Font-Names="王漢宗細圓體繁">
                                                                    </CellStyle>
                                                                    <HeaderStyle Font-Names="王漢宗細圓體繁" />
                                                                    <ValueStyle Font-Names="王漢宗細圓體繁">
                                                                    </ValueStyle>
                                                                </dx:PivotGridField>
                                                                <dx:PivotGridField ID="fieldTRNCOUNT" Area="DataArea" AreaIndex="2" 
                                                                    Caption="客數" FieldName="TRN_COUNT" Options-AllowSortBySummary="False">
                                                                    <CellStyle Font-Names="王漢宗細圓體繁">
                                                                    </CellStyle>
                                                                    <HeaderStyle Font-Names="王漢宗細圓體繁" />
                                                                    <ValueStyle Font-Names="王漢宗細圓體繁">
                                                                    </ValueStyle>
                                                                </dx:PivotGridField>
                                                                <dx:PivotGridField ID="fieldCLASSNAME" AreaIndex="3" Caption="商品分類" 
                                                                    FieldName="CLASS_NAME" Options-AllowSortBySummary="False">
                                                                    <CellStyle Font-Names="王漢宗細圓體繁">
                                                                    </CellStyle>
                                                                    <ValueStyle Font-Names="王漢宗細圓體繁">
                                                                    </ValueStyle>
                                                                </dx:PivotGridField>
                                                                <dx:PivotGridField ID="fieldQTY" Area="DataArea" AreaIndex="0" Caption="數量" 
                                                                    FieldName="QTY" Options-AllowSortBySummary="False">
                                                                    <CellStyle Font-Names="王漢宗細圓體繁">
                                                                    </CellStyle>
                                                                    <HeaderStyle Font-Names="王漢宗細圓體繁" />
                                                                    <ValueStyle Font-Names="王漢宗細圓體繁">
                                                                    </ValueStyle>
                                                                </dx:PivotGridField>
                                                                <dx:PivotGridField ID="fieldSYSMONTH" AreaIndex="0" Caption="月份" 
                                                                    FieldName="SYS_MONTH">
                                                                    <CellStyle Font-Names="王漢宗細圓體繁">
                                                                    </CellStyle>
                                                                </dx:PivotGridField>
                                                                <dx:PivotGridField ID="fieldSYSWEEK" AreaIndex="1" Caption="星期" 
                                                                    FieldName="SYS_WEEK">
                                                                    <CellStyle Font-Names="王漢宗細圓體繁">
                                                                    </CellStyle>
                                                                </dx:PivotGridField>
                                                                <dx:PivotGridField ID="fieldfmemo" AreaIndex="4" Caption="期間" 
                                                                    FieldName="f_memo">
                                                                    <CellStyle Font-Names="王漢宗細圓體繁">
                                                                    </CellStyle>
                                                                    <ValueStyle Font-Names="王漢宗細圓體繁">
                                                                    </ValueStyle>
                                                                </dx:PivotGridField>
                                                            </Fields>
                                                            <OptionsView ShowColumnGrandTotalHeader="False" ShowColumnTotals="False" 
                                                                ShowRowGrandTotalHeader="False" ShowGrandTotalsForSingleValues="True" />
                                                            <OptionsCustomization FilterPopupWindowHeight="300px" 
                                                                FilterPopupWindowResizeMode="Postponed" />
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
                                            </table>
                                            <dx:ASPxLabel ID="ASPxLabel1" runat="server" Font-Names="王漢宗細圓體繁" 
                                                Font-Size="10pt" Font-Underline="False" ForeColor="#FF3300" 
                                                Text="注意！已扣除作廢發票金額" ClientVisible="False">
                                            </dx:ASPxLabel>
                                            <br />
                                        </div>
                                    </dx:PanelContent>
                                </PanelCollection>
                            </dx:ASPxPanel>
                            <br />
                        </div>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:NEWPMSConnectionString %>" 
                            SelectCommand="exec dbo.OLAP_RPT2 @BEG_DT, @END_DT, @STORE_NO">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="" Name="BEG_DT" Type="String" />
                                <asp:Parameter DefaultValue="" Name="END_DT" Type="String" />
                                <asp:Parameter Name="STORE_NO" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <dx:ASPxPivotGridExporter ID="ASPxPivotGridExporter1" runat="server" 
                            ASPxPivotGridID="ASPxPivotGrid1">
                        </dx:ASPxPivotGridExporter>
                        <asp:EntityDataSource ID="edsPOS_storedat" runat="server" 
                            ConnectionString="name=NEWPMSEntities" DefaultContainerName="NEWPMSEntities" 
                            EnableFlattening="False" EntitySetName="vPOS_storedat" OrderBy="it.NO_STORE">
                        </asp:EntityDataSource>
                    <br />
                    <br />
                    <br />
                    </dx:ContentControl>
                </ContentCollection>
            </dx:TabPage>
        </TabPages>
    </dx:ASPxPageControl>
</asp:Content>

