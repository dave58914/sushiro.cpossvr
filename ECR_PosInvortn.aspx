<%@ page title="" language="C#" masterpagefile="~/MainPage.master" autoeventwireup="true" inherits="ECR_PosInvortn, App_Web_ecr_posinvortn.aspx.cdcab7d2" %>

<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxTabControl" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxClasses" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxRoundPanel" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPanel" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.ASPxGridView.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxEditors.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .dxgvFocusedRow .dxgv {
            background-color: #33B5E5;
        }
        .style8
        {
            width: 100%;
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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <dx:ASPxPageControl ID="ASPxPageControl1" runat="server" ActiveTabIndex="0" 
        Font-Names="王漢宗細圓體繁" Font-Size="Small" TabPosition="Left" Width="100%" 
        Height="800px">
        <TabPages>
            <dx:TabPage Name="Tab01" Text="發票作廢">
                <ContentCollection>
                    <dx:ContentControl runat="server" SupportsDisabledAttribute="True">
                        <dx:ASPxRoundPanel ID="ASPxRoundPanel1" runat="server" Font-Names="王漢宗細圓體繁" 
                            Font-Size="12pt" HeaderText="【收銀機發票作廢作業】" View="GroupBox" Width="100%" 
                            CssClass="pie_radius">
                            <PanelCollection>
                                <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                                    <dx:ASPxRoundPanel ID="ASPxRoundPanel2" runat="server" Font-Names="王漢宗細圓體繁" 
                                        Font-Size="Small" HeaderText="發票查詢" Theme="DevEx" Width="100%">
                                        <PanelCollection>
                                            <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                                                <asp:Panel ID="Panel2" runat="server" Width="700px">
                                                    <table class="style8">
                                                        <tr>
                                                            <td>
                                                                <table class="style8">
                                                                    <tr>
                                                                        <td align="right">
                                                                            發票日期</td>
                                                                        <td>
                                                                            <dx:ASPxDateEdit ID="deSYS_DATE" runat="server" DateOnError="Null" 
                                                                                DisplayFormatString="yyyy-MM-dd" EditFormat="Custom" 
                                                                                EditFormatString="yyyy-MM-dd" Font-Names="王漢宗細圓體繁" Width="100px" 
                                                                                AutoPostBack="True">
                                                                                <CalendarProperties ShowClearButton="False">
                                                                                    <ControlStyle Font-Names="王漢宗細圓體繁" />
                                                                                    <Style Font-Names="王漢宗細圓體繁">
                                                                                    </Style>
                                                                                </CalendarProperties>
                                                                            </dx:ASPxDateEdit>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                            <td>
                                                                <table class="style8">
                                                                    <tr>
                                                                        <td align="right">
                                                                            收銀機台號</td>
                                                                        <td>
                                                                            <dx:ASPxComboBox ID="cbECRNO" runat="server" DataSourceID="edsPOS_ecrdat" 
                                                                                Font-Names="王漢宗細圓體繁" SelectedIndex="0" TextField="MsgId" 
                                                                                TextFormatString="{0};{1}" Width="140px" ValueField="MsgId">
                                                                                <Columns>
                                                                                    <dx:ListBoxColumn Caption="機號" FieldName="ECR_NO" Name="ECR_NO" />
                                                                                    <dx:ListBoxColumn Caption="作業別" FieldName="ECR_OPER" Name="ECR_OPER" 
                                                                                        Visible="False" />
                                                                                    <dx:ListBoxColumn Caption="店別" FieldName="ECR_FLOOR" Name="ECR_FLOOR" />
                                                                                    <dx:ListBoxColumn Caption="廠編" FieldName="VNDRNO" Name="VNDRNO" 
                                                                                        Visible="False" />
                                                                                    <dx:ListBoxColumn Caption="廠名" FieldName="VNDRNAME" Name="VNDRNAME" 
                                                                                        Visible="False" />
                                                                                </Columns>
                                                                            </dx:ASPxComboBox>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                            <td>
                                                                <table class="style8">
                                                                    <tr>
                                                                        <td align="right">
                                                                            發票交易客數</td>
                                                                        <td>
                                                                            <dx:ASPxTextBox ID="tbTRANCOUNT" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                                Width="100px">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                            <td>
                                                                <table class="style8">
                                                                    <tr>
                                                                        <td>
                                                                            <dx:ASPxButton ID="btnQUERY" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                                OnClick="btnQUERY_Click" Text="查詢" CssClass="button" CssPostfix="button" 
                                                                                Font-Size="Small">
                                                                            </dx:ASPxButton>
                                                                        </td>
                                                                        <td>
                                                                            <dx:ASPxButton ID="btnSAVE" runat="server" Font-Names="王漢宗細圓體繁" Text="存檔" 
                                                                                OnClick="btnSAVE_Click" CssClass="button" CssPostfix="button" 
                                                                                Font-Size="Small">
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
                                                                            </dx:ASPxButton>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </asp:Panel>
                                                <asp:Panel ID="Panel1" runat="server" ScrollBars="Horizontal" Width="100%">
                                                    <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" 
                                                        DataSourceID="EntityDataSource1" Font-Names="王漢宗細圓體繁" KeyFieldName="MsgId" 
                                                        Width="1200px">
                                                        <Columns>
                                                            <dx:GridViewDataTextColumn FieldName="MsgId" ReadOnly="True" 
                                                                ShowInCustomizationForm="True" Visible="False" VisibleIndex="0">
                                                                <HeaderStyle HorizontalAlign="Center" />
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn FieldName="comcode" ShowInCustomizationForm="True" 
                                                                VisibleIndex="1" Caption="店別" Width="70px">
                                                                <HeaderStyle HorizontalAlign="Center" />
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn Caption="收銀機號" FieldName="ecr_no" 
                                                                ShowInCustomizationForm="True" VisibleIndex="2">
                                                                <HeaderStyle HorizontalAlign="Center" />
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn Caption="發票日期" FieldName="sys_date" 
                                                                ShowInCustomizationForm="True" VisibleIndex="3">
                                                                <HeaderStyle HorizontalAlign="Center" />
                                                                <CellStyle HorizontalAlign="Center">
                                                                </CellStyle>
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn Caption="發票時間" FieldName="sys_time" 
                                                                ShowInCustomizationForm="True" VisibleIndex="4">
                                                                <HeaderStyle HorizontalAlign="Center" />
                                                                <CellStyle HorizontalAlign="Center">
                                                                </CellStyle>
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn FieldName="trn_date" ShowInCustomizationForm="True" 
                                                                Visible="False" VisibleIndex="5">
                                                                <HeaderStyle HorizontalAlign="Center" />
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn Caption="交易客數" FieldName="trn_count" 
                                                                ShowInCustomizationForm="True" VisibleIndex="6">
                                                                <HeaderStyle HorizontalAlign="Center" />
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn Caption="預收交易" FieldName="kindno" 
                                                                ShowInCustomizationForm="True" VisibleIndex="7" Visible="False">
                                                                <HeaderStyle HorizontalAlign="Center" />
                                                                <CellStyle HorizontalAlign="Center">
                                                                </CellStyle>
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn Caption="收銀員編號" FieldName="sales_no" 
                                                                ShowInCustomizationForm="True" VisibleIndex="8">
                                                                <HeaderStyle HorizontalAlign="Center" />
                                                                <CellStyle HorizontalAlign="Center">
                                                                </CellStyle>
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn FieldName="clerk_no" ShowInCustomizationForm="True" 
                                                                Visible="False" VisibleIndex="9">
                                                                <HeaderStyle HorizontalAlign="Center" />
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn FieldName="trn_status" 
                                                                ShowInCustomizationForm="True" Visible="False" VisibleIndex="10">
                                                                <HeaderStyle HorizontalAlign="Center" />
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn Caption="統一編號" FieldName="unify_no" 
                                                                ShowInCustomizationForm="True" VisibleIndex="11">
                                                                <HeaderStyle HorizontalAlign="Center" />
                                                                <CellStyle HorizontalAlign="Center">
                                                                </CellStyle>
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn FieldName="credit_card_no" 
                                                                ShowInCustomizationForm="True" Visible="False" VisibleIndex="12">
                                                                <HeaderStyle HorizontalAlign="Center" />
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn Caption="現金" FieldName="cash_amt" 
                                                                ShowInCustomizationForm="True" VisibleIndex="13">
                                                                <HeaderStyle HorizontalAlign="Center" />
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn Caption="儲值卡" FieldName="check_amt" 
                                                                ShowInCustomizationForm="True" VisibleIndex="19">
                                                                <HeaderStyle HorizontalAlign="Center" />
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn Caption="信用卡" FieldName="credit_card_amt" 
                                                                ShowInCustomizationForm="True" VisibleIndex="16">
                                                                <HeaderStyle HorizontalAlign="Center" />
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn Caption="現金禮券" FieldName="gift_token_amt" 
                                                                ShowInCustomizationForm="True" VisibleIndex="15">
                                                                <HeaderStyle HorizontalAlign="Center" />
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn Caption="折價券" FieldName="cpn_amt" 
                                                                ShowInCustomizationForm="True" VisibleIndex="20">
                                                                <HeaderStyle HorizontalAlign="Center" />
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn Caption="商品禮券" FieldName="bill_amt" 
                                                                ShowInCustomizationForm="True" VisibleIndex="17">
                                                                <HeaderStyle HorizontalAlign="Center" />
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn Caption="簽帳" FieldName="charge_amt" 
                                                                ShowInCustomizationForm="True" VisibleIndex="21">
                                                                <HeaderStyle HorizontalAlign="Center" />
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn FieldName="sale_qty" ShowInCustomizationForm="True" 
                                                                Visible="False" VisibleIndex="22">
                                                                <HeaderStyle HorizontalAlign="Center" />
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn Caption="交易金額" FieldName="sale_amount" 
                                                                ShowInCustomizationForm="True" VisibleIndex="23">
                                                                <HeaderStyle HorizontalAlign="Center" />
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn FieldName="dis_amt" ShowInCustomizationForm="True" 
                                                                Visible="False" VisibleIndex="24">
                                                                <HeaderStyle HorizontalAlign="Center" />
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn FieldName="pay_sub_amt" 
                                                                ShowInCustomizationForm="True" Visible="False" VisibleIndex="25">
                                                                <HeaderStyle HorizontalAlign="Center" />
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn FieldName="pay_cash_amt" 
                                                                ShowInCustomizationForm="True" VisibleIndex="14" Caption="現金禮券找零">
                                                                <HeaderStyle HorizontalAlign="Center" />
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn FieldName="card_flag" ShowInCustomizationForm="True" 
                                                                Visible="False" VisibleIndex="26">
                                                                <HeaderStyle HorizontalAlign="Center" />
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn FieldName="cel_mark" ShowInCustomizationForm="True" 
                                                                Visible="False" VisibleIndex="27">
                                                                <HeaderStyle HorizontalAlign="Center" />
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn Caption="購物抵用券" FieldName="pay_cpnl_amt" 
                                                                ShowInCustomizationForm="True" VisibleIndex="18">
                                                                <HeaderStyle HorizontalAlign="Center" />
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn FieldName="store_card_no" 
                                                                ShowInCustomizationForm="True" Visible="False" VisibleIndex="28">
                                                                <HeaderStyle HorizontalAlign="Center" />
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataDateColumn FieldName="last_update_time" 
                                                                ShowInCustomizationForm="True" Visible="False" VisibleIndex="29">
                                                                <HeaderStyle HorizontalAlign="Center" />
                                                            </dx:GridViewDataDateColumn>
                                                            <dx:GridViewDataTextColumn FieldName="restaurant_num" 
                                                                ShowInCustomizationForm="True" Visible="False" VisibleIndex="30">
                                                                <HeaderStyle HorizontalAlign="Center" />
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn FieldName="bill2_amt" ShowInCustomizationForm="True" 
                                                                Visible="False" VisibleIndex="31">
                                                                <HeaderStyle HorizontalAlign="Center" />
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn FieldName="BOUNS_SUB" ShowInCustomizationForm="True" 
                                                                Visible="False" VisibleIndex="32">
                                                                <HeaderStyle HorizontalAlign="Center" />
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn FieldName="VNDRNO" ShowInCustomizationForm="True" 
                                                                Visible="False" VisibleIndex="33">
                                                                <HeaderStyle HorizontalAlign="Center" />
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn Caption="發票(起)" FieldName="INVOICE_NO_S" 
                                                                ShowInCustomizationForm="True" VisibleIndex="34">
                                                                <HeaderStyle HorizontalAlign="Center" />
                                                                <CellStyle HorizontalAlign="Center">
                                                                </CellStyle>
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn Caption="發票(迄)" FieldName="INVOICE_NO_E" 
                                                                ShowInCustomizationForm="True" VisibleIndex="35">
                                                                <HeaderStyle HorizontalAlign="Center" />
                                                                <CellStyle HorizontalAlign="Center">
                                                                </CellStyle>
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn FieldName="FN1" ShowInCustomizationForm="True" 
                                                                Visible="False" VisibleIndex="36">
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn FieldName="FN2" ShowInCustomizationForm="True" 
                                                                Visible="False" VisibleIndex="37">
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn FieldName="FN3" ShowInCustomizationForm="True" 
                                                                Visible="False" VisibleIndex="38">
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn FieldName="FN4" ShowInCustomizationForm="True" 
                                                                Visible="False" VisibleIndex="39">
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn FieldName="FN5" ShowInCustomizationForm="True" 
                                                                Visible="False" VisibleIndex="40">
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn FieldName="FA1" ShowInCustomizationForm="True" 
                                                                Visible="False" VisibleIndex="41">
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn FieldName="FA2" ShowInCustomizationForm="True" 
                                                                Visible="False" VisibleIndex="42">
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn FieldName="FA3" ShowInCustomizationForm="True" 
                                                                Visible="False" VisibleIndex="43">
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn FieldName="FA4" ShowInCustomizationForm="True" 
                                                                Visible="False" VisibleIndex="44">
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn FieldName="FA5" ShowInCustomizationForm="True" 
                                                                Visible="False" VisibleIndex="45">
                                                            </dx:GridViewDataTextColumn>
                                                        </Columns>
                                                        <SettingsBehavior AllowFocusedRow="True" />
                                                        <SettingsPager AlwaysShowPager="True">
                                                        </SettingsPager>
                                                        <Settings ShowPreview="True" />
                                                        <Templates>
                                                            <PreviewRow>
                                                                <dx:ASPxGridView ID="ASPxGridView2" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                    AutoGenerateColumns="False" DataSourceID="EntityDataSource2" 
                                                                    KeyFieldName="MsgId">
                                                                    <TotalSummary>
                                                                        <dx:ASPxSummaryItem FieldName="amount" SummaryType="Sum" />
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
                                                                        <dx:GridViewDataTextColumn Caption="交易項次" FieldName="trn_item" VisibleIndex="7" 
                                                                            SortIndex="0" SortOrder="Ascending">
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
                                                                        <dx:GridViewDataTextColumn FieldName="dis_amt" 
                                                                            VisibleIndex="16" Caption="折扣金額">
                                                                            <HeaderStyle HorizontalAlign="Center" />
                                                                        </dx:GridViewDataTextColumn>
                                                                        <dx:GridViewDataTextColumn FieldName="dis_rate" Visible="False" 
                                                                            VisibleIndex="17">
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
                                                                        <dx:GridViewDataTextColumn FieldName="FA1" VisibleIndex="31" Visible="False">
                                                                            <HeaderStyle HorizontalAlign="Center" />
                                                                        </dx:GridViewDataTextColumn>
                                                                        <dx:GridViewDataTextColumn FieldName="FA2" VisibleIndex="32" Caption="商品名稱">
                                                                        </dx:GridViewDataTextColumn>
                                                                        <dx:GridViewDataTextColumn FieldName="FA3" Visible="False" VisibleIndex="33">
                                                                        </dx:GridViewDataTextColumn>
                                                                        <dx:GridViewDataTextColumn FieldName="FA4" Visible="False" VisibleIndex="34">
                                                                        </dx:GridViewDataTextColumn>
                                                                        <dx:GridViewDataTextColumn FieldName="FA5" VisibleIndex="35" Visible="False">
                                                                            <HeaderStyle HorizontalAlign="Center" />
                                                                        </dx:GridViewDataTextColumn>
                                                                    </Columns>
                                                                    <SettingsPager AlwaysShowPager="True">
                                                                    </SettingsPager>
                                                                    <Settings ShowFooter="True" />
                                                                </dx:ASPxGridView>
                                                            </PreviewRow>
                                                        </Templates>
                                                    </dx:ASPxGridView>
                                                    <br />
                                                </asp:Panel>
                                                <asp:EntityDataSource ID="edsPOS_ecrdat" runat="server" 
                                                    ConnectionString="name=NEWPMSEntities" DefaultContainerName="NEWPMSEntities" 
                                                    EnableFlattening="False" EntitySetName="POS_ecrdat" EntityTypeFilter="" 
                                                    OrderBy="it.ECR_FLOOR,it.ECR_NO" Select="">
                                                </asp:EntityDataSource>
                                                <asp:EntityDataSource ID="EntityDataSource1" runat="server" 
                                                    ConnectionString="name=NEWPMSEntities" DefaultContainerName="NEWPMSEntities" 
                                                    EnableFlattening="False" EntitySetName="tmptot" Where="it.MsgId=@MsgId">
                                                    <WhereParameters>
                                                        <asp:QueryStringParameter Name="MsgId" Type="String" />
                                                    </WhereParameters>
                                                </asp:EntityDataSource>
                                                <asp:EntityDataSource ID="EntityDataSource2" runat="server" 
                                                    ConnectionString="name=NEWPMSEntities" DefaultContainerName="NEWPMSEntities" 
                                                    EnableFlattening="False" EntitySetName="tmprec" Where="it.FA5=@MsgId" 
                                                    OrderBy="">
                                                    <WhereParameters>
                                                        <asp:QueryStringParameter Name="MsgId" Type="String" />
                                                    </WhereParameters>
                                                </asp:EntityDataSource>
                                                <dx:ASPxRoundPanel ID="ASPxRoundPanel3" runat="server" Font-Names="王漢宗細圓體繁" 
                                                    Font-Size="Small" HeaderText="作廢交易記錄" Theme="RedWine" Height="242px">
                                                    <PanelCollection>
                                                        <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                                                            <dx:ASPxGridView ID="ASPxGridView3" runat="server" AutoGenerateColumns="False" 
                                                                DataSourceID="SqlDataSource1" Font-Names="王漢宗細圓體繁" KeyFieldName="MSGID" 
                                                                OnRowDeleting="ASPxGridView3_RowDeleting" 
                                                                OnHtmlRowCreated="ASPxGridView3_HtmlRowCreated" 
                                                                OnHeaderFilterFillItems="ASPxGridView3_HeaderFilterFillItems">
                                                                <TotalSummary>
                                                                    <dx:ASPxSummaryItem FieldName="SALE_AMOUNT" SummaryType="Sum" />
                                                                </TotalSummary>
                                                                <Columns>
                                                                    <dx:GridViewCommandColumn ShowInCustomizationForm="True" VisibleIndex="0">
                                                                        <DeleteButton Visible="True">
                                                                        </DeleteButton>
                                                                    </dx:GridViewCommandColumn>
                                                                    <dx:GridViewDataTextColumn FieldName="MSGID" ReadOnly="True" 
                                                                        ShowInCustomizationForm="True" VisibleIndex="1" Visible="False">
                                                                        <HeaderStyle HorizontalAlign="Center" />
                                                                    </dx:GridViewDataTextColumn>
                                                                    <dx:GridViewDataTextColumn FieldName="comcode" ShowInCustomizationForm="True" 
                                                                        VisibleIndex="2" Caption="店別" Width="70px">
                                                                        <Settings AllowHeaderFilter="True" SortMode="DisplayText" />
                                                                    </dx:GridViewDataTextColumn>
<dx:GridViewDataTextColumn FieldName="ECR_NO" ShowInCustomizationForm="True" Caption="收銀機號" VisibleIndex="3">
    <Settings AllowHeaderFilter="True" />

<HeaderStyle HorizontalAlign="Center"></HeaderStyle>
</dx:GridViewDataTextColumn>
                                                                    <dx:GridViewDataTextColumn FieldName="SYS_DATE" ShowInCustomizationForm="True" 
                                                                        VisibleIndex="4" Caption="發票日期">
                                                                    </dx:GridViewDataTextColumn>
                                                                    <dx:GridViewDataTextColumn FieldName="TRN_COUNT" ShowInCustomizationForm="True" 
                                                                        VisibleIndex="5" Caption="交易客數">
                                                                    </dx:GridViewDataTextColumn>
                                                                    <dx:GridViewDataTextColumn FieldName="SALE_AMOUNT" 
                                                                        ShowInCustomizationForm="True" VisibleIndex="6" Caption="發票金額">
                                                                        <Settings AllowHeaderFilter="False" />
                                                                        <HeaderStyle HorizontalAlign="Center" />
                                                                    </dx:GridViewDataTextColumn>
                                                                </Columns>
                                                                <SettingsBehavior AllowFocusedRow="True" ConfirmDelete="True" />
                                                                <SettingsPager AlwaysShowPager="True">
                                                                </SettingsPager>
                                                                <SettingsText CommandDelete="刪除" ConfirmDelete="確認刪除該筆資料?" />
                                                                <SettingsPopup>
                                                                    <HeaderFilter Height="300px" />
                                                                </SettingsPopup>
                                                                <Styles>
                                                                    <HeaderFilterItem Font-Names="王漢宗細圓體繁">
                                                                    </HeaderFilterItem>
                                                                </Styles>
                                                            </dx:ASPxGridView>
                                                        </dx:PanelContent>
                                                    </PanelCollection>
                                                </dx:ASPxRoundPanel>
                                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                                    ConnectionString="<%$ ConnectionStrings:NEWPMSConnectionString %>" 
                                                    SelectCommand="if DATEPART(hour, GETDATE())&lt;5 begin

	SELECT 
	(NEWID())MSGID,
	A.comcode,
	A.ECR_NO,
	A.SYS_DATE,
	A.TRN_COUNT,
	A.SALE_AMOUNT
	FROM NEWPMS.DBO.DAYTOT A, NEWPMS.DBO.SALEDEL B 
	WHERE 
	(A.SYS_DATE LIKE @SYS_DATE+'%') AND 
	(A.SYS_DATE=B.SYS_DATE) AND
	(A.ECR_NO=B.ECR_NO) AND 
	(A.TRN_COUNT=B.TRN_COUNT)
	and (A.comcode=b.comcode)
	GROUP BY A.comcode,A.ECR_NO,A.SYS_DATE,A.TRN_COUNT,A.SALE_AMOUNT
	ORDER BY A.comcode,A.ECR_NO,A.SYS_DATE,A.TRN_COUNT

END
ELSE BEGIN

	IF @SYS_DATE=CONVERT(VARCHAR(10),GETDATE(),20) BEGIN

	SELECT 
	(NEWID())MSGID,
	A.comcode,
	A.ECR_NO,
	A.SYS_DATE,
	A.TRN_COUNT,
	A.SALE_AMOUNT
	FROM NEWPMS.DBO.DAYTOT A, NEWPMS.DBO.SALEDEL B 
	WHERE 
	(A.SYS_DATE LIKE @SYS_DATE+'%') AND 
	(A.SYS_DATE=B.SYS_DATE) AND
	(A.ECR_NO=B.ECR_NO) AND 
	(A.TRN_COUNT=B.TRN_COUNT)
	and (A.comcode=b.comcode)
	GROUP BY A.comcode,A.ECR_NO,A.SYS_DATE,A.TRN_COUNT,A.SALE_AMOUNT
	ORDER BY A.comcode,A.ECR_NO,A.SYS_DATE,A.TRN_COUNT

	END
	ELSE BEGIN

	SELECT 
	(NEWID())MSGID,
	A.comcode,
	A.ECR_NO,
	A.SYS_DATE,
	A.TRN_COUNT,
	A.SALE_AMOUNT
	FROM NEWPMS.DBO.SALETOT A, NEWPMS.DBO.SALEDEL B 
	WHERE 
	(A.SYS_DATE LIKE @SYS_DATE+'%') AND 
	(A.SYS_DATE=B.SYS_DATE) AND
	(A.ECR_NO=B.ECR_NO) AND 
	(A.TRN_COUNT=B.TRN_COUNT)
	and (A.comcode=b.comcode)
	GROUP BY A.comcode,A.ECR_NO,A.SYS_DATE,A.TRN_COUNT,A.SALE_AMOUNT
	ORDER BY A.comcode,A.ECR_NO,A.SYS_DATE,A.TRN_COUNT

	END

END
" DeleteCommand="DELETE FROM NEWPMS.DBO.SALEDEL  
WHERE 
(SYS_DATE LIKE @SYS_DATE+'%')
AND (ECR_NO=@ECR_NO) 
AND (TRN_COUNT=@TRN_COUNT)
and (comcode=@comcode)
">
                                                    <DeleteParameters>
                                                        <asp:Parameter Name="SYS_DATE" />
                                                        <asp:Parameter Name="ECR_NO" />
                                                        <asp:Parameter Name="TRN_COUNT" />
                                                        <asp:Parameter Name="comcode" />
                                                    </DeleteParameters>
                                                    <SelectParameters>
                                                        <asp:ControlParameter ControlID="deSYS_DATE" Name="SYS_DATE" 
                                                            PropertyName="Text" Type="String" />
                                                    </SelectParameters>
                                                </asp:SqlDataSource>
                                            </dx:PanelContent>
                                        </PanelCollection>
                                    </dx:ASPxRoundPanel>
                                    <br />
                                </dx:PanelContent>
                            </PanelCollection>
                            <Border BorderStyle="Double" BorderWidth="3px" />
                        </dx:ASPxRoundPanel>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:TabPage>
        </TabPages>
    </dx:ASPxPageControl>
</asp:Content>

