<%@ page title="" language="C#" masterpagefile="~/MainPage.master" autoeventwireup="true" inherits="ECR_PosHisData, App_Web_ecr_poshisdata.aspx.cdcab7d2" %>

<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxTabControl" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxClasses" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxRoundPanel" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPanel" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.ASPxGridView.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxEditors.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxLoadingPanel" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxCallback" tagprefix="dx" %>

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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <dx:ASPxPageControl ID="ASPxPageControl1" runat="server" ActiveTabIndex="0" 
        Font-Names="王漢宗細圓體繁" Font-Size="Small" TabPosition="Left" Width="100%" 
        Height="800px">
        <TabPages>
            <dx:TabPage Name="Tab01" Text="重傳">
                <ContentCollection>
                    <dx:ContentControl runat="server" SupportsDisabledAttribute="True">
                        <dx:ASPxRoundPanel ID="ASPxRoundPanel1" runat="server" Font-Names="王漢宗細圓體繁" 
                            Font-Size="12pt" HeaderText="【收銀機銷售資料重傳作業】" View="GroupBox" Width="100%" 
                            HorizontalAlign="Center" CssClass="pie_radius">
                            <PanelCollection>
                                <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                                    <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                                        <ContentTemplate>
                                            <dx:ASPxPanel ID="ASPxPanel1" runat="server" RenderMode="Table">
                                                <PanelCollection>
                                                    <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                                                        <div align="left">
                                                            <table class="style8">
                                                                <tr>
                                                                    <td>
                                                                        <dx:ASPxLabel ID="ASPxLabel1" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                            Font-Size="10pt" Font-Underline="False" ForeColor="#FF3300" Height="20px" 
                                                                            Text="註︰重傳前請先確定收銀機已開起">
                                                                        </dx:ASPxLabel>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" 
                                                                            DataSourceID="SqlDataSource1" Font-Names="王漢宗細圓體繁" Font-Size="Small" 
                                                                            KeyFieldName="MsgId" 
                                                                            OnHtmlDataCellPrepared="ASPxGridView1_HtmlDataCellPrepared" 
                                                                            OnHtmlRowCreated="ASPxGridView1_HtmlRowCreated" 
                                                                            OnHeaderFilterFillItems="ASPxGridView1_HeaderFilterFillItems">
                                                                            <Columns>
                                                                                <dx:GridViewCommandColumn ShowInCustomizationForm="True" VisibleIndex="0">
                                                                                </dx:GridViewCommandColumn>
                                                                                <dx:GridViewDataTextColumn FieldName="MsgId" ShowInCustomizationForm="True" 
                                                                                    Visible="False" VisibleIndex="1">
                                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                                </dx:GridViewDataTextColumn>
                                                                                <dx:GridViewDataTextColumn Caption="機號" FieldName="ECR_NO" 
                                                                                    ShowInCustomizationForm="True" 
                                                                                    VisibleIndex="3">
                                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                                </dx:GridViewDataTextColumn>
                                                                                <dx:GridViewDataTextColumn Caption="作業別" FieldName="ECR_OPER" 
                                                                                    ShowInCustomizationForm="True" VisibleIndex="4" Visible="False">
                                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                                </dx:GridViewDataTextColumn>
                                                                                <dx:GridViewDataTextColumn Caption="店別" FieldName="ECR_FLOOR" 
                                                                                    ShowInCustomizationForm="True" VisibleIndex="2">
                                                                                    <Settings AllowHeaderFilter="True" SortMode="DisplayText" />
                                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                                    <CellStyle HorizontalAlign="Center">
                                                                                    </CellStyle>
                                                                                </dx:GridViewDataTextColumn>
                                                                                <dx:GridViewDataTextColumn Caption="說明" FieldName="ECR_MEMO" 
                                                                                    ShowInCustomizationForm="True" VisibleIndex="5">
                                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                                </dx:GridViewDataTextColumn>
                                                                                <dx:GridViewDataTextColumn Caption="版本" FieldName="ECR_VER" 
                                                                                    ShowInCustomizationForm="True" Visible="False" VisibleIndex="12">
                                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                                </dx:GridViewDataTextColumn>
                                                                                <dx:GridViewDataTextColumn Caption="收銀機位址" FieldName="ECR_IP" 
                                                                                    ShowInCustomizationForm="True" Visible="False" VisibleIndex="13">
                                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                                </dx:GridViewDataTextColumn>
                                                                                <dx:GridViewDataTextColumn Caption="廠編" FieldName="VNDRNO" 
                                                                                    ShowInCustomizationForm="True" Visible="False" VisibleIndex="6">
                                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                                </dx:GridViewDataTextColumn>
                                                                                <dx:GridViewDataTextColumn Caption="廠名" FieldName="VNDRNAME" 
                                                                                    ShowInCustomizationForm="True" Visible="False" VisibleIndex="7">
                                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                                </dx:GridViewDataTextColumn>
                                                                                <dx:GridViewDataTextColumn Caption="櫃編" FieldName="VNDRNO_SUB" 
                                                                                    ShowInCustomizationForm="True" Visible="False" VisibleIndex="8">
                                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                                </dx:GridViewDataTextColumn>
                                                                                <dx:GridViewDataTextColumn Caption="櫃名" FieldName="SUBNAME" 
                                                                                    ShowInCustomizationForm="True" Visible="False" VisibleIndex="9">
                                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                                </dx:GridViewDataTextColumn>
                                                                                <dx:GridViewDataTextColumn Caption="公司別" FieldName="COMCODE" 
                                                                                    ShowInCustomizationForm="True" Visible="False" VisibleIndex="14">
                                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                                </dx:GridViewDataTextColumn>
                                                                                <dx:GridViewDataTextColumn Caption="主機位址" FieldName="SERVICEHOST" 
                                                                                    ShowInCustomizationForm="True" Visible="False" VisibleIndex="15">
                                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                                </dx:GridViewDataTextColumn>
                                                                                <dx:GridViewDataDateColumn Caption="開機時間" FieldName="LOGIN_DT" 
                                                                                    ShowInCustomizationForm="True" VisibleIndex="16">
                                                                                    <PropertiesDateEdit DisplayFormatString="g" EditFormat="DateTime" 
                                                                                        EditFormatString="g">
                                                                                    </PropertiesDateEdit>
                                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                                    <CellStyle HorizontalAlign="Center">
                                                                                    </CellStyle>
                                                                                </dx:GridViewDataDateColumn>
                                                                                <dx:GridViewDataDateColumn Caption="關機時間" FieldName="LOGOUT_DT" 
                                                                                    ShowInCustomizationForm="True" VisibleIndex="17">
                                                                                    <PropertiesDateEdit DisplayFormatString="g" EditFormat="DateTime" 
                                                                                        EditFormatString="g">
                                                                                    </PropertiesDateEdit>
                                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                                    <CellStyle HorizontalAlign="Center">
                                                                                    </CellStyle>
                                                                                </dx:GridViewDataDateColumn>
                                                                                <dx:GridViewDataTextColumn Caption="建檔人員" FieldName="CREATE_ID" 
                                                                                    ShowInCustomizationForm="True" Visible="False" VisibleIndex="19">
                                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                                </dx:GridViewDataTextColumn>
                                                                                <dx:GridViewDataDateColumn Caption="建檔時間" FieldName="CREATE_DT" 
                                                                                    ShowInCustomizationForm="True" Visible="False" VisibleIndex="10">
                                                                                    <PropertiesDateEdit DisplayFormatString="F" EditFormat="DateTime">
                                                                                    </PropertiesDateEdit>
                                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                                </dx:GridViewDataDateColumn>
                                                                                <dx:GridViewDataTextColumn Caption="密碼開放" FieldName="ECR_PW" 
                                                                                    ShowInCustomizationForm="True" Visible="False" VisibleIndex="11">
                                                                                    <DataItemTemplate>
                                                                                        <dx:ASPxLabel ID="labECR_PW" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                                            Text="labECR_PW" Width="100%">
                                                                                        </dx:ASPxLabel>
                                                                                    </DataItemTemplate>
                                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                                    <CellStyle HorizontalAlign="Center">
                                                                                    </CellStyle>
                                                                                </dx:GridViewDataTextColumn>
                                                                                <dx:GridViewDataTextColumn Caption="發票日期" FieldName="HISDATE" 
                                                                                    ShowInCustomizationForm="True" VisibleIndex="20">
                                                                                    <DataItemTemplate>
                                                                                        <dx:ASPxDateEdit ID="deHISDATE" runat="server" DateOnError="Null" 
                                                                                            DisplayFormatString="yyyy-MM-dd" EditFormat="Custom" 
                                                                                            EditFormatString="yyyy-MM-dd" Font-Names="王漢宗細圓體繁" Width="100px">
                                                                                            <CalendarProperties ShowClearButton="False" ShowTodayButton="False">
                                                                                                <ControlStyle Font-Names="王漢宗細圓體繁" />
                                                                                                <Style Font-Names="王漢宗細圓體繁">
                                                                                                </Style>
                                                                                            </CalendarProperties>
                                                                                        </dx:ASPxDateEdit>
                                                                                    </DataItemTemplate>
                                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                                    <CellStyle HorizontalAlign="Center">
                                                                                    </CellStyle>
                                                                                </dx:GridViewDataTextColumn>
                                                                                <dx:GridViewDataTextColumn Name="HISTRANPOS" ShowInCustomizationForm="True" 
                                                                                    VisibleIndex="21">
                                                                                    <DataItemTemplate>
                                                                                        <dx:ASPxButton ID="btnHISTRANPOS" runat="server" AutoPostBack="False" 
                                                                                            CssClass="button" CssPostfix="button" Font-Names="王漢宗細圓體繁" Font-Size="Small" 
                                                                                            onclick="btnHISTRANPOS_Click" Text="重傳">
                                                                                            <ClientSideEvents Click="function(s, e) {
if(confirm('執行該作業，確定嗎？'))
{
e.processOnServer = true
Callback.PerformCallback();
LoadingPanel.Show();
}
else
{
e.processOnServer = false
}
}
" />
                                                                                        </dx:ASPxButton>
                                                                                    </DataItemTemplate>
                                                                                </dx:GridViewDataTextColumn>
                                                                                <dx:GridViewDataTextColumn Caption="營業狀態" FieldName="POS_STATUS" 
                                                                                    ShowInCustomizationForm="True" VisibleIndex="18">
                                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                                    <CellStyle HorizontalAlign="Center">
                                                                                    </CellStyle>
                                                                                </dx:GridViewDataTextColumn>
                                                                            </Columns>
                                                                            <SettingsBehavior AllowFocusedRow="True" ConfirmDelete="True" />
                                                                            <SettingsPager AlwaysShowPager="True" PageSize="5">
                                                                            </SettingsPager>
                                                                            <Settings ShowPreview="True" />
                                                                            <SettingsText CommandCancel="取消" CommandDelete="刪除" CommandEdit="修改" 
                                                                                CommandNew="新增" CommandUpdate="更新" ConfirmDelete="確認刪除該筆資料?" />
                                                                            <SettingsPopup>
                                                                                <HeaderFilter Height="300px" />
                                                                            </SettingsPopup>
                                                                            <StylesEditors>
                                                                                <TextBox Font-Names="王漢宗細圓體繁">
                                                                                </TextBox>
                                                                            </StylesEditors>
                                                                            <Templates>
                                                                                <PreviewRow>
                                                                                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                                                                        <ContentTemplate>
                                                                                            <dx:ASPxLabel ID="labMESG" runat="server" Font-Names="王漢宗細圓體繁" Text="作業訊息" 
                                                                                                Width="100%">
                                                                                            </dx:ASPxLabel>
                                                                                        </ContentTemplate>
                                                                                    </asp:UpdatePanel>
                                                                                </PreviewRow>
                                                                            </Templates>
                                                                        </dx:ASPxGridView>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </div>
                                                        <br />
                                                    </dx:PanelContent>
                                                </PanelCollection>
                                            </dx:ASPxPanel>
                                            <br />
                                            <br />
                                            <dx:ASPxCallback ID="ASPxCallback1" runat="server" 
                                                ClientInstanceName="Callback">
                                                <ClientSideEvents CallbackComplete="function(s, e) {
LoadingPanel.Hide();	
}" />
                                            </dx:ASPxCallback>
                                            <dx:ASPxLoadingPanel ID="ASPxLoadingPanel1" runat="server" 
                                                ClientInstanceName="LoadingPanel" Font-Names="王漢宗細圓體繁" Modal="True" 
                                                Theme="Default">
                                            </dx:ASPxLoadingPanel>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </dx:PanelContent>
                            </PanelCollection>
                            <Border BorderStyle="Double" BorderWidth="3px" />
                        </dx:ASPxRoundPanel>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:NEWPMSConnectionString %>" SelectCommand="select 
MsgId, ECR_NO, ECR_OPER, ECR_FLOOR, ECR_MEMO, ECR_VER, ECR_IP, ECR_PW, VNDRNO, VNDRNAME, VNDRNO_SUB, SUBNAME, COMCODE, SERVICEHOST, LOGIN_DT, LOGOUT_DT, CREATE_ID, CREATE_DT,
(
CASE WHEN LOGOUT_DT&lt;LOGIN_DT AND CONVERT(VARCHAR(10),LOGIN_DT,20)=CONVERT(VARCHAR(10),GETDATE(),20) THEN '開機中' ELSE '已關機' END
)POS_STATUS
from POS_ecrdat
order by ECR_FLOOR,ECR_NO
"></asp:SqlDataSource>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:TabPage>
        </TabPages>
    </dx:ASPxPageControl>
</asp:Content>

