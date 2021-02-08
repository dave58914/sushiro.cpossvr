<%@ page title="" language="C#" masterpagefile="~/MainPage.master" autoeventwireup="true" inherits="OLAP_RPT1, App_Web_olap_rpt1.aspx.cdcab7d2" %>

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
            border: 3px solid #8B8B8B;
            width:100%;
            height:100%;
            border-radius: 8px 8px 8px 8px;
            box-shadow: #666 5px 5px 5px;
            position:relative;
            top: 0px;
            left: 0px;
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
                                                        <asp:Panel ID="Panel3" runat="server" Font-Names="王漢宗細圓體繁" Width="1000px">
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
                                                                    <td align="right">
                                                                        模板報表</td>
                                                                    <td align="left">
                                                                        <dx:ASPxComboBox ID="cbTYPE" runat="server" AutoPostBack="True" 
                                                                            Font-Names="王漢宗細圓體繁" Height="28px" 
                                                                            OnSelectedIndexChanged="cbTYPE_SelectedIndexChanged" TextFormatString="{0}" 
                                                                            Width="120px">
                                                                            <Items>
                                                                                <dx:ListEditItem Text="請選擇.." Value="請選擇.." />
                                                                                <dx:ListEditItem Text="營收統計報表" Value="營收統計報表" />
                                                                                <dx:ListEditItem Text="收銀機統計報表" Value="收銀機統計報表" />
                                                                                <dx:ListEditItem Text="收銀員統計報表" Value="收銀員統計報表" />
                                                                                <dx:ListEditItem Text="目標營收統計報表" Value="目標營收統計報表" />
                                                                                <dx:ListEditItem Text="時段統計報表" Value="時段統計報表" />
                                                                            </Items>
                                                                        </dx:ASPxComboBox>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </asp:Panel>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <dx:ASPxPivotGrid ID="ASPxPivotGrid1" runat="server" ClientIDMode="AutoID" 
                                                            DataSourceID="SqlDataSource1" Font-Names="王漢宗細圓體繁" 
                                                            OnAfterPerformCallback="ASPxPivotGrid1_AfterPerformCallback" Width="100%">
                                                            <Fields>
                                                                <dx:PivotGridField ID="fieldSYSDATE" Area="RowArea" AreaIndex="0" Caption="日期" 
                                                                    FieldName="SYS_DATE">
                                                                    <CellStyle Font-Names="王漢宗細圓體繁">
                                                                    </CellStyle>
                                                                    <HeaderStyle Font-Names="王漢宗細圓體繁" />
                                                                    <ValueStyle Font-Names="王漢宗細圓體繁">
                                                                    </ValueStyle>
                                                                    <ValueTotalStyle Font-Names="王漢宗細圓體繁">
                                                                    </ValueTotalStyle>
                                                                </dx:PivotGridField>
                                                                <dx:PivotGridField ID="fieldECR_FLOOR" Area="RowArea" AreaIndex="2" 
                                                                    Caption="店別" FieldName="ECR_FLOOR">
                                                                    <CellStyle Font-Names="王漢宗細圓體繁">
                                                                    </CellStyle>
                                                                    <HeaderStyle Font-Names="王漢宗細圓體繁" />
                                                                    <ValueStyle Font-Names="王漢宗細圓體繁">
                                                                    </ValueStyle>
                                                                    <ValueTotalStyle Font-Names="王漢宗細圓體繁">
                                                                    </ValueTotalStyle>
                                                                </dx:PivotGridField>
                                                                <dx:PivotGridField ID="fieldECRNO" AreaIndex="2" Caption="機號" 
                                                                    FieldName="ECR_NO">
                                                                    <CellStyle Font-Names="王漢宗細圓體繁">
                                                                    </CellStyle>
                                                                    <HeaderStyle Font-Names="王漢宗細圓體繁" />
                                                                    <ValueStyle Font-Names="王漢宗細圓體繁">
                                                                    </ValueStyle>
                                                                    <ValueTotalStyle Font-Names="王漢宗細圓體繁">
                                                                    </ValueTotalStyle>
                                                                </dx:PivotGridField>
                                                                <dx:PivotGridField ID="fieldSALEAMOUNT" Area="DataArea" AreaIndex="1" 
                                                                    Caption="銷售總額" CellFormat-FormatString="#,##0" CellFormat-FormatType="Numeric" 
                                                                    FieldName="SALE_AMOUNT" GrandTotalCellFormat-FormatString="#,##0" 
                                                                    GrandTotalCellFormat-FormatType="Numeric" TotalCellFormat-FormatString="#,##0" 
                                                                    TotalCellFormat-FormatType="Numeric" TotalValueFormat-FormatString="#,##0" 
                                                                    TotalValueFormat-FormatType="Numeric" ValueFormat-FormatString="#,##0" 
                                                                    ValueFormat-FormatType="Numeric">
                                                                    <CellStyle Font-Names="王漢宗細圓體繁">
                                                                    </CellStyle>
                                                                    <HeaderStyle Font-Names="王漢宗細圓體繁" />
                                                                    <ValueStyle Font-Names="王漢宗細圓體繁">
                                                                    </ValueStyle>
                                                                    <ValueTotalStyle Font-Names="王漢宗細圓體繁">
                                                                    </ValueTotalStyle>
                                                                </dx:PivotGridField>
                                                                <dx:PivotGridField ID="fieldCASHAMT" Area="DataArea" AreaIndex="2" Caption="現金" 
                                                                    CellFormat-FormatString="#,##0" CellFormat-FormatType="Numeric" 
                                                                    FieldName="CASH_AMT" GrandTotalCellFormat-FormatString="#,##0" 
                                                                    GrandTotalCellFormat-FormatType="Numeric" TotalCellFormat-FormatString="#,##0" 
                                                                    TotalCellFormat-FormatType="Numeric" TotalValueFormat-FormatString="#,##0" 
                                                                    TotalValueFormat-FormatType="Numeric" ValueFormat-FormatString="#,##0" 
                                                                    ValueFormat-FormatType="Numeric">
                                                                    <CellStyle Font-Names="王漢宗細圓體繁">
                                                                    </CellStyle>
                                                                    <HeaderStyle Font-Names="王漢宗細圓體繁" />
                                                                    <ValueStyle Font-Names="王漢宗細圓體繁">
                                                                    </ValueStyle>
                                                                    <ValueTotalStyle Font-Names="王漢宗細圓體繁">
                                                                    </ValueTotalStyle>
                                                                </dx:PivotGridField>
                                                                <dx:PivotGridField ID="fieldGIFTTOKENAMT" AreaIndex="4" Caption="現金禮券" 
                                                                    CellFormat-FormatString="#,##0" CellFormat-FormatType="Numeric" 
                                                                    FieldName="GIFT_TOKEN_AMT" GrandTotalCellFormat-FormatString="#,##0" 
                                                                    GrandTotalCellFormat-FormatType="Numeric" TotalCellFormat-FormatString="#,##0" 
                                                                    TotalCellFormat-FormatType="Numeric" TotalValueFormat-FormatString="#,##0" 
                                                                    TotalValueFormat-FormatType="Numeric" ValueFormat-FormatString="#,##0" 
                                                                    ValueFormat-FormatType="Numeric">
                                                                    <CellStyle Font-Names="王漢宗細圓體繁">
                                                                    </CellStyle>
                                                                    <HeaderStyle Font-Names="王漢宗細圓體繁" />
                                                                    <ValueStyle Font-Names="王漢宗細圓體繁">
                                                                    </ValueStyle>
                                                                    <ValueTotalStyle Font-Names="王漢宗細圓體繁">
                                                                    </ValueTotalStyle>
                                                                </dx:PivotGridField>
                                                                <dx:PivotGridField ID="fieldCREDITCARDAMT" Area="DataArea" AreaIndex="3" 
                                                                    Caption="信用卡" CellFormat-FormatString="#,##0" CellFormat-FormatType="Numeric" 
                                                                    FieldName="CREDIT_CARD_AMT" GrandTotalCellFormat-FormatString="#,##0" 
                                                                    GrandTotalCellFormat-FormatType="Numeric" TotalCellFormat-FormatString="#,##0" 
                                                                    TotalCellFormat-FormatType="Numeric" TotalValueFormat-FormatString="#,##0" 
                                                                    TotalValueFormat-FormatType="Numeric" ValueFormat-FormatString="#,##0" 
                                                                    ValueFormat-FormatType="Numeric">
                                                                    <CellStyle Font-Names="王漢宗細圓體繁">
                                                                    </CellStyle>
                                                                    <HeaderStyle Font-Names="王漢宗細圓體繁" />
                                                                    <ValueStyle Font-Names="王漢宗細圓體繁">
                                                                    </ValueStyle>
                                                                    <ValueTotalStyle Font-Names="王漢宗細圓體繁">
                                                                    </ValueTotalStyle>
                                                                </dx:PivotGridField>
                                                                <dx:PivotGridField ID="fieldBILLAMT" AreaIndex="6" Caption="商品禮券" 
                                                                    CellFormat-FormatString="#,##0" CellFormat-FormatType="Numeric" 
                                                                    FieldName="BILL_AMT" GrandTotalCellFormat-FormatString="#,##0" 
                                                                    GrandTotalCellFormat-FormatType="Numeric" TotalCellFormat-FormatString="#,##0" 
                                                                    TotalCellFormat-FormatType="Numeric" TotalValueFormat-FormatString="#,##0" 
                                                                    TotalValueFormat-FormatType="Numeric" ValueFormat-FormatString="#,##0" 
                                                                    ValueFormat-FormatType="Numeric" Visible="False">
                                                                    <CellStyle Font-Names="王漢宗細圓體繁">
                                                                    </CellStyle>
                                                                    <HeaderStyle Font-Names="王漢宗細圓體繁" />
                                                                    <ValueStyle Font-Names="王漢宗細圓體繁">
                                                                    </ValueStyle>
                                                                    <ValueTotalStyle Font-Names="王漢宗細圓體繁">
                                                                    </ValueTotalStyle>
                                                                </dx:PivotGridField>
                                                                <dx:PivotGridField ID="fieldPAYCPNLAMT" AreaIndex="6" Caption="購物抵用券" 
                                                                    CellFormat-FormatString="#,##0" CellFormat-FormatType="Numeric" 
                                                                    FieldName="PAY_CPNL_AMT" GrandTotalCellFormat-FormatString="#,##0" 
                                                                    GrandTotalCellFormat-FormatType="Numeric" TotalCellFormat-FormatString="#,##0" 
                                                                    TotalCellFormat-FormatType="Numeric" TotalValueFormat-FormatString="#,##0" 
                                                                    TotalValueFormat-FormatType="Numeric" ValueFormat-FormatString="#,##0" 
                                                                    ValueFormat-FormatType="Numeric" Visible="False">
                                                                    <CellStyle Font-Names="王漢宗細圓體繁">
                                                                    </CellStyle>
                                                                    <HeaderStyle Font-Names="王漢宗細圓體繁" />
                                                                    <ValueStyle Font-Names="王漢宗細圓體繁">
                                                                    </ValueStyle>
                                                                    <ValueTotalStyle Font-Names="王漢宗細圓體繁">
                                                                    </ValueTotalStyle>
                                                                </dx:PivotGridField>
                                                                <dx:PivotGridField ID="fieldCPNAMT" AreaIndex="7" Caption="折價券" 
                                                                    CellFormat-FormatString="#,##0" CellFormat-FormatType="Numeric" 
                                                                    FieldName="CPN_AMT" GrandTotalCellFormat-FormatString="#,##0" 
                                                                    GrandTotalCellFormat-FormatType="Numeric" TotalCellFormat-FormatString="#,##0" 
                                                                    TotalCellFormat-FormatType="Numeric" TotalValueFormat-FormatString="#,##0" 
                                                                    TotalValueFormat-FormatType="Numeric" ValueFormat-FormatString="#,##0" 
                                                                    ValueFormat-FormatType="Numeric" Visible="False">
                                                                    <CellStyle Font-Names="王漢宗細圓體繁">
                                                                    </CellStyle>
                                                                    <HeaderStyle Font-Names="王漢宗細圓體繁" />
                                                                    <ValueStyle Font-Names="王漢宗細圓體繁">
                                                                    </ValueStyle>
                                                                    <ValueTotalStyle Font-Names="王漢宗細圓體繁">
                                                                    </ValueTotalStyle>
                                                                </dx:PivotGridField>
                                                                <dx:PivotGridField ID="fieldCHARGEAMT" Area="DataArea" AreaIndex="4" 
                                                                    Caption="簽帳" CellFormat-FormatString="#,##0" CellFormat-FormatType="Numeric" 
                                                                    FieldName="CHARGE_AMT" GrandTotalCellFormat-FormatString="#,##0" 
                                                                    GrandTotalCellFormat-FormatType="Numeric" TotalCellFormat-FormatString="#,##0" 
                                                                    TotalCellFormat-FormatType="Numeric" TotalValueFormat-FormatString="#,##0" 
                                                                    TotalValueFormat-FormatType="Numeric" ValueFormat-FormatString="#,##0" 
                                                                    ValueFormat-FormatType="Numeric">
                                                                    <CellStyle Font-Names="王漢宗細圓體繁">
                                                                    </CellStyle>
                                                                    <HeaderStyle Font-Names="王漢宗細圓體繁" />
                                                                    <ValueStyle Font-Names="王漢宗細圓體繁">
                                                                    </ValueStyle>
                                                                    <ValueTotalStyle Font-Names="王漢宗細圓體繁">
                                                                    </ValueTotalStyle>
                                                                </dx:PivotGridField>
                                                                <dx:PivotGridField ID="fieldCHECKAMT" AreaIndex="6" Caption="儲值卡" 
                                                                    CellFormat-FormatString="#,##0" CellFormat-FormatType="Numeric" 
                                                                    FieldName="CHECK_AMT" GrandTotalCellFormat-FormatString="#,##0" 
                                                                    GrandTotalCellFormat-FormatType="Numeric" TotalCellFormat-FormatString="#,##0" 
                                                                    TotalCellFormat-FormatType="Numeric" TotalValueFormat-FormatString="#,##0" 
                                                                    TotalValueFormat-FormatType="Numeric" ValueFormat-FormatString="#,##0" 
                                                                    ValueFormat-FormatType="Numeric" Visible="False">
                                                                    <CellStyle Font-Names="王漢宗細圓體繁">
                                                                    </CellStyle>
                                                                    <HeaderStyle Font-Names="王漢宗細圓體繁" />
                                                                    <ValueStyle Font-Names="王漢宗細圓體繁">
                                                                    </ValueStyle>
                                                                    <ValueTotalStyle Font-Names="王漢宗細圓體繁">
                                                                    </ValueTotalStyle>
                                                                </dx:PivotGridField>
                                                                <dx:PivotGridField ID="fieldTRNCOUNT" Area="DataArea" AreaIndex="0" 
                                                                    Caption="客數" FieldName="TRN_COUNT">
                                                                    <CellStyle Font-Names="王漢宗細圓體繁">
                                                                    </CellStyle>
                                                                    <HeaderStyle Font-Names="王漢宗細圓體繁" />
                                                                    <ValueStyle Font-Names="王漢宗細圓體繁">
                                                                    </ValueStyle>
                                                                    <ValueTotalStyle Font-Names="王漢宗細圓體繁">
                                                                    </ValueTotalStyle>
                                                                </dx:PivotGridField>
                                                                <dx:PivotGridField ID="fieldSALENAME" AreaIndex="3" Caption="收銀員" 
                                                                    FieldName="SALE_NAME">
                                                                    <CellStyle Font-Names="王漢宗細圓體繁">
                                                                    </CellStyle>
                                                                    <HeaderStyle Font-Names="王漢宗細圓體繁" />
                                                                    <ValueStyle Font-Names="王漢宗細圓體繁">
                                                                    </ValueStyle>
                                                                    <ValueTotalStyle Font-Names="王漢宗細圓體繁">
                                                                    </ValueTotalStyle>
                                                                </dx:PivotGridField>
                                                                <dx:PivotGridField ID="fieldSYSTIME" AreaIndex="1" Caption="時段" 
                                                                    FieldName="SYS_TIME">
                                                                    <CellStyle Font-Names="王漢宗細圓體繁">
                                                                    </CellStyle>
                                                                    <HeaderStyle Font-Names="王漢宗細圓體繁" />
                                                                    <ValueStyle Font-Names="王漢宗細圓體繁">
                                                                    </ValueStyle>
                                                                    <ValueTotalStyle Font-Names="王漢宗細圓體繁">
                                                                    </ValueTotalStyle>
                                                                </dx:PivotGridField>
                                                                <dx:PivotGridField ID="fieldSYSMONTH" AreaIndex="0" Caption="月份" 
                                                                    FieldName="SYS_MONTH">
                                                                    <CellStyle Font-Names="王漢宗細圓體繁">
                                                                    </CellStyle>
                                                                    <HeaderStyle Font-Names="王漢宗細圓體繁" />
                                                                </dx:PivotGridField>
                                                                <dx:PivotGridField ID="fieldSYSWEEK" AreaIndex="1" Caption="星期" 
                                                                    FieldName="SYS_WEEK" Area="RowArea">
                                                                    <HeaderStyle Font-Names="王漢宗細圓體繁" />
                                                                </dx:PivotGridField>
                                                                <dx:PivotGridField ID="fieldBUDGETAMT" Area="DataArea" AreaIndex="5" 
                                                                    Caption="目標業績" CellFormat-FormatString="#,##0" CellFormat-FormatType="Numeric" 
                                                                    FieldName="BUDGET_AMT" GrandTotalCellFormat-FormatString="#,##0" 
                                                                    GrandTotalCellFormat-FormatType="Numeric" TotalCellFormat-FormatString="#,##0" 
                                                                    TotalCellFormat-FormatType="Numeric" TotalValueFormat-FormatString="#,##0" 
                                                                    TotalValueFormat-FormatType="Numeric" ValueFormat-FormatString="#,##0" 
                                                                    ValueFormat-FormatType="Numeric">
                                                                    <CellStyle Font-Names="王漢宗細圓體繁">
                                                                    </CellStyle>
                                                                    <HeaderStyle Font-Names="王漢宗細圓體繁" />
                                                                    <ValueStyle Font-Names="王漢宗細圓體繁">
                                                                    </ValueStyle>
                                                                    <ValueTotalStyle Font-Names="王漢宗細圓體繁">
                                                                    </ValueTotalStyle>
                                                                </dx:PivotGridField>
                                                                <dx:PivotGridField ID="fieldINCDEC" Area="DataArea" AreaIndex="6" Caption="增減" 
                                                                    CellFormat-FormatString="#,##0" CellFormat-FormatType="Numeric" 
                                                                    FieldName="INCDEC" GrandTotalCellFormat-FormatString="#,##0" 
                                                                    GrandTotalCellFormat-FormatType="Numeric" TotalCellFormat-FormatString="#,##0" 
                                                                    TotalCellFormat-FormatType="Numeric" TotalValueFormat-FormatString="#,##0" 
                                                                    TotalValueFormat-FormatType="Numeric" ValueFormat-FormatString="#,##0" 
                                                                    ValueFormat-FormatType="Numeric">
                                                                    <CellStyle Font-Names="王漢宗細圓體繁">
                                                                    </CellStyle>
                                                                    <HeaderStyle Font-Names="王漢宗細圓體繁" />
                                                                    <ValueStyle Font-Names="王漢宗細圓體繁">
                                                                    </ValueStyle>
                                                                    <ValueTotalStyle Font-Names="王漢宗細圓體繁">
                                                                    </ValueTotalStyle>
                                                                </dx:PivotGridField>
                                                                <dx:PivotGridField ID="fieldDISAMT" Area="DataArea" AreaIndex="7" Caption="折扣" 
                                                                    CellFormat-FormatString="#,##0" CellFormat-FormatType="Numeric" 
                                                                    FieldName="DIS_AMT" GrandTotalCellFormat-FormatString="#,##0" 
                                                                    GrandTotalCellFormat-FormatType="Numeric" TotalCellFormat-FormatString="#,##0" 
                                                                    TotalCellFormat-FormatType="Numeric" TotalValueFormat-FormatString="#,##0" 
                                                                    TotalValueFormat-FormatType="Numeric" ValueFormat-FormatString="#,##0" 
                                                                    ValueFormat-FormatType="Numeric">
                                                                    <CellStyle Font-Names="王漢宗細圓體繁">
                                                                    </CellStyle>
                                                                    <HeaderStyle Font-Names="王漢宗細圓體繁" />
                                                                    <ValueStyle Font-Names="王漢宗細圓體繁">
                                                                    </ValueStyle>
                                                                    <ValueTotalStyle Font-Names="王漢宗細圓體繁">
                                                                    </ValueTotalStyle>
                                                                </dx:PivotGridField>
                                                                <dx:PivotGridField ID="fieldREPTYPE0" Area="DataArea" AreaIndex="8" 
                                                                    Caption="內用" CellFormat-FormatString="#,##0" CellFormat-FormatType="Numeric" 
                                                                    FieldName="REPTYPE0" TotalCellFormat-FormatString="#,##0" 
                                                                    TotalCellFormat-FormatType="Numeric" TotalValueFormat-FormatString="#,##0" 
                                                                    TotalValueFormat-FormatType="Numeric" ValueFormat-FormatString="#,##0" 
                                                                    ValueFormat-FormatType="Numeric">
                                                                    <CellStyle Font-Names="王漢宗細圓體繁">
                                                                    </CellStyle>
                                                                    <HeaderStyle Font-Names="王漢宗細圓體繁" />
                                                                    <ValueStyle Font-Names="王漢宗細圓體繁">
                                                                    </ValueStyle>
                                                                    <ValueTotalStyle Font-Names="王漢宗細圓體繁">
                                                                    </ValueTotalStyle>
                                                                </dx:PivotGridField>
                                                                <dx:PivotGridField ID="fieldREPTYPE1" Area="DataArea" AreaIndex="9" 
                                                                    Caption="外送" CellFormat-FormatString="#,##0" CellFormat-FormatType="Numeric" 
                                                                    FieldName="REPTYPE1" TotalCellFormat-FormatString="#,##0" 
                                                                    TotalCellFormat-FormatType="Numeric" TotalValueFormat-FormatString="#,##0" 
                                                                    TotalValueFormat-FormatType="Numeric" ValueFormat-FormatString="#,##0" 
                                                                    ValueFormat-FormatType="Numeric">
                                                                    <CellStyle Font-Names="王漢宗細圓體繁">
                                                                    </CellStyle>
                                                                    <HeaderStyle Font-Names="王漢宗細圓體繁" />
                                                                    <ValueStyle Font-Names="王漢宗細圓體繁">
                                                                    </ValueStyle>
                                                                    <ValueTotalStyle Font-Names="王漢宗細圓體繁">
                                                                    </ValueTotalStyle>
                                                                </dx:PivotGridField>
                                                                <dx:PivotGridField ID="fieldREPTYPE2" Area="DataArea" AreaIndex="10" 
                                                                    Caption="外帶" CellFormat-FormatString="#,##0" CellFormat-FormatType="Numeric" 
                                                                    FieldName="REPTYPE2" TotalCellFormat-FormatString="#,##0" 
                                                                    TotalCellFormat-FormatType="Numeric" TotalValueFormat-FormatString="#,##0" 
                                                                    TotalValueFormat-FormatType="Numeric" ValueFormat-FormatString="#,##0" 
                                                                    ValueFormat-FormatType="Numeric">
                                                                    <CellStyle Font-Names="王漢宗細圓體繁">
                                                                    </CellStyle>
                                                                    <HeaderStyle Font-Names="王漢宗細圓體繁" />
                                                                    <ValueStyle Font-Names="王漢宗細圓體繁">
                                                                    </ValueStyle>
                                                                    <ValueTotalStyle Font-Names="王漢宗細圓體繁">
                                                                    </ValueTotalStyle>
                                                                </dx:PivotGridField>
                                                            </Fields>
                                                            <OptionsView ShowColumnGrandTotalHeader="False" ShowColumnTotals="False" 
                                                                ShowRowGrandTotalHeader="False" />
                                                            <OptionsCustomization AllowSortBySummary="False" 
                                                                FilterPopupWindowHeight="300px" FilterPopupWindowResizeMode="Postponed" />
                                                            <OptionsPager NumericButtonCount="50" RowsPerPage="50">
                                                            </OptionsPager>
                                                            <Styles>
                                                                <FilterAreaStyle Font-Names="王漢宗細圓體繁">
                                                                </FilterAreaStyle>
                                                                <ColumnAreaStyle Font-Names="王漢宗細圓體繁" HorizontalAlign="Center">
                                                                </ColumnAreaStyle>
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
                                                        </dx:ASPxPivotGrid>
                                                    </td>
                                                </tr>
                                            </table>
                                            <dx:ASPxLabel ID="ASPxLabel1" runat="server" Font-Names="王漢宗細圓體繁" 
                                                Font-Size="10pt" Font-Underline="False" ForeColor="#FF3300" Text="注意！已扣除作廢發票金額" 
                                                Width="100%" ClientVisible="False">
                                            </dx:ASPxLabel>
                                            <br />
                                        </div>
                                    </dx:PanelContent>
                                </PanelCollection>
                            </dx:ASPxPanel>
                            <br />
                        </div>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:NEWPMSConnectionString %>" 
                            SelectCommand="exec dbo.OLAP_RPT1 @BEGDT, @ENDDT, @STORE_NO">
                            <SelectParameters>
                                <asp:Parameter Name="BEGDT" Type="String" />
                                <asp:Parameter Name="ENDDT" Type="String" />
                                <asp:Parameter Name="STORE_NO" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <dx:ASPxPivotGridExporter ID="ASPxPivotGridExporter1" runat="server">
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

