<%@ page title="" language="C#" masterpagefile="~/MainPage.master" autoeventwireup="true" inherits="ECR_PosKeyMaxAmt, App_Web_ecr_poskeymaxamt.aspx.cdcab7d2" %>

<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxTabControl" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxClasses" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxRoundPanel" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPanel" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.ASPxGridView.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxEditors.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <dx:ASPxPageControl ID="ASPxPageControl1" runat="server" ActiveTabIndex="0" 
        Font-Names="王漢宗細圓體繁" Font-Size="Small" TabPosition="Left" Width="100%" 
        Height="800px">
        <TabPages>
            <dx:TabPage Name="Tab01" Text="管理">
                <ContentCollection>
                    <dx:ContentControl runat="server" SupportsDisabledAttribute="True">
                        <dx:ASPxRoundPanel ID="ASPxRoundPanel1" runat="server" Font-Names="王漢宗細圓體繁" 
                            Font-Size="12pt" HeaderText="【專櫃上限金額設定作業】" View="GroupBox" Width="100%">
                            <PanelCollection>
                                <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                                    <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" 
                                        DataSourceID="edsPOS_AMTCONTROL" Font-Names="王漢宗細圓體繁" 
                                        KeyFieldName="ECR_NO" 
                                        OnCellEditorInitialize="ASPxGridView1_CellEditorInitialize" 
                                        OnHtmlDataCellPrepared="ASPxGridView1_HtmlDataCellPrepared" 
                                        OnRowValidating="ASPxGridView1_RowValidating">
                                        <Columns>
                                            <dx:GridViewCommandColumn ShowInCustomizationForm="True" VisibleIndex="0">
                                                <EditButton Visible="True">
                                                </EditButton>
                                            </dx:GridViewCommandColumn>
                                            <dx:GridViewDataTextColumn FieldName="ECR_NO" ReadOnly="True" 
                                                ShowInCustomizationForm="True" VisibleIndex="1" Caption="機號">
                                                <HeaderStyle HorizontalAlign="Center" />
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn FieldName="ECR_OPER" ShowInCustomizationForm="True" 
                                                VisibleIndex="2" Caption="作業別">
                                                <DataItemTemplate>
                                                    <dx:ASPxLabel ID="labECR_OPER" runat="server" Font-Names="王漢宗細圓體繁" 
                                                        Text="ASPxLabel">
                                                    </dx:ASPxLabel>
                                                </DataItemTemplate>
                                                <HeaderStyle HorizontalAlign="Center" />
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn FieldName="ECR_FLOOR" ShowInCustomizationForm="True" 
                                                VisibleIndex="3" Caption="樓層">
                                                <DataItemTemplate>
                                                    <dx:ASPxLabel ID="labECR_FLOOR" runat="server" Font-Names="王漢宗細圓體繁" 
                                                        Text="ASPxLabel">
                                                    </dx:ASPxLabel>
                                                </DataItemTemplate>
                                                <HeaderStyle HorizontalAlign="Center" />
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn FieldName="ECR_MEMO" ShowInCustomizationForm="True" 
                                                VisibleIndex="4" Caption="說明">
                                                <DataItemTemplate>
                                                    <dx:ASPxLabel ID="labECR_MEMO" runat="server" Font-Names="王漢宗細圓體繁" 
                                                        Text="ASPxLabel">
                                                    </dx:ASPxLabel>
                                                </DataItemTemplate>
                                                <HeaderStyle HorizontalAlign="Center" />
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn FieldName="VNDRNO" ShowInCustomizationForm="True" 
                                                VisibleIndex="5" Caption="廠編">
                                                <DataItemTemplate>
                                                    <dx:ASPxLabel ID="labVNDRNO" runat="server" Font-Names="王漢宗細圓體繁" 
                                                        Text="ASPxLabel">
                                                    </dx:ASPxLabel>
                                                </DataItemTemplate>
                                                <HeaderStyle HorizontalAlign="Center" />
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn FieldName="VNDRNAME" ShowInCustomizationForm="True" 
                                                VisibleIndex="6" Caption="廠名">
                                                <DataItemTemplate>
                                                    <dx:ASPxLabel ID="labVNDRNAME" runat="server" Font-Names="王漢宗細圓體繁" 
                                                        Text="ASPxLabel">
                                                    </dx:ASPxLabel>
                                                </DataItemTemplate>
                                                <HeaderStyle HorizontalAlign="Center" />
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn FieldName="VNDRNO_SUB" 
                                                ShowInCustomizationForm="True" VisibleIndex="7" Caption="櫃編">
                                                <DataItemTemplate>
                                                    <dx:ASPxLabel ID="labVNDRNO_SUB" runat="server" Font-Names="王漢宗細圓體繁" 
                                                        Text="ASPxLabel">
                                                    </dx:ASPxLabel>
                                                </DataItemTemplate>
                                                <HeaderStyle HorizontalAlign="Center" />
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn FieldName="SUBNAME" ShowInCustomizationForm="True" 
                                                VisibleIndex="8" Caption="櫃名">
                                                <DataItemTemplate>
                                                    <dx:ASPxLabel ID="labSUBNAME" runat="server" Font-Names="王漢宗細圓體繁" 
                                                        Text="ASPxLabel">
                                                    </dx:ASPxLabel>
                                                </DataItemTemplate>
                                                <HeaderStyle HorizontalAlign="Center" />
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn FieldName="AMOUNT" ShowInCustomizationForm="True" 
                                                VisibleIndex="9" Caption="上限金額">
                                                <HeaderStyle HorizontalAlign="Center" />
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn FieldName="CREATE_ID" ShowInCustomizationForm="True" 
                                                VisibleIndex="10" Visible="False">
                                                <HeaderStyle HorizontalAlign="Center" />
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataDateColumn FieldName="CREATE_DT" ShowInCustomizationForm="True" 
                                                VisibleIndex="11" Visible="False">
                                                <HeaderStyle HorizontalAlign="Center" />
                                            </dx:GridViewDataDateColumn>
                                        </Columns>
                                        <SettingsPager AlwaysShowPager="True">
                                        </SettingsPager>
                                        <SettingsText CommandCancel="取消" CommandEdit="修改" CommandUpdate="更新" 
                                            Title="上限金額(值)等於０，表示該收銀機金額輸入無上限" />
                                        <Styles>
                                            <TitlePanel BackColor="#33B5E5" Font-Names="王漢宗細圓體繁" Font-Size="Small" 
                                                HorizontalAlign="Right">
                                            </TitlePanel>
                                        </Styles>
                                        <StylesEditors>
                                            <TextBox Font-Names="王漢宗細圓體繁">
                                            </TextBox>
                                        </StylesEditors>
                                    </dx:ASPxGridView>
                                    <dx:ASPxLabel ID="ASPxLabel1" runat="server" Font-Names="王漢宗細圓體繁" 
                                        Font-Size="10pt" Font-Underline="False" Height="20px" 
                                        Text="註︰上限金額(值)等於０，表示該收銀機金額輸入無上限">
                                    </dx:ASPxLabel>
                                </dx:PanelContent>
                            </PanelCollection>
                            <Border BorderStyle="Double" BorderWidth="3px" />
                        </dx:ASPxRoundPanel>
                        <asp:EntityDataSource ID="edsPOS_AMTCONTROL" runat="server" 
                            ConnectionString="name=NEWPMSEntities" DefaultContainerName="NEWPMSEntities" 
                            EnableFlattening="False" EnableUpdate="True" EntitySetName="POS_AMTCONTROL" 
                            OrderBy="it.ECR_NO">
                        </asp:EntityDataSource>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:TabPage>
        </TabPages>
    </dx:ASPxPageControl>
</asp:Content>

