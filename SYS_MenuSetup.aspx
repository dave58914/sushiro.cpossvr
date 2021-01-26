<%@ page title="" language="C#" masterpagefile="~/MainPage.master" autoeventwireup="true" inherits="SYS_MenuSetup, App_Web_sys_menusetup.aspx.cdcab7d2" %>

<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxTabControl" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxClasses" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.ASPxGridView.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxEditors.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxRoundPanel" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPanel" tagprefix="dx" %>

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
            border: 3px solid #8B8B8B;
            width:100%;
            height:100%;
            border-radius: 8px 8px 8px 8px;
            box-shadow: #666 5px 5px 5px;
            position:relative;
            top: 0px;
            left: 0px;
        }        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <dx:ASPxPageControl ID="ASPxPageControl1" runat="server" ActiveTabIndex="1" 
        Height="800px" TabPosition="Left" Width="100%" Font-Names="王漢宗細圓體繁">
    <TabPages>
        <dx:TabPage Name="Tab01" Text="選單">
            <ContentCollection>
                <dx:ContentControl runat="server" SupportsDisabledAttribute="True">
                    <asp:Panel ID="Panel1" runat="server" Width="100%">
                        <div align="center">
                            <table style="width:100%;">
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="center" valign="top">
                                        <dx:ASPxRoundPanel ID="ASPxRoundPanel3" runat="server" Font-Names="王漢宗細圓體繁" 
                                            HeaderText="第一層【門市店】" Theme="DevEx">
                                            <PanelCollection>
                                                <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                                                    <dx:ASPxGridView ID="ASPxGridView2" runat="server" AutoGenerateColumns="False" 
                                                        DataSourceID="edsL1" Font-Names="王漢宗細圓體繁" 
                                                        KeyFieldName="MsgId" 
                                                        OnCellEditorInitialize="ASPxGridView2_CellEditorInitialize" 
                                                        OnCommandButtonInitialize="ASPxGridView2_CommandButtonInitialize" 
                                                        OnDetailRowExpandedChanged="ASPxGridView2_DetailRowExpandedChanged" 
                                                        OnHtmlDataCellPrepared="ASPxGridView2_HtmlDataCellPrepared" 
                                                        OnHtmlRowCreated="ASPxGridView2_HtmlRowCreated" 
                                                        OnHtmlRowPrepared="ASPxGridView2_HtmlRowPrepared" 
                                                        OnRowUpdating="ASPxGridView2_RowUpdating" Width="100%">
                                                        <Columns>
                                                            <dx:GridViewCommandColumn ShowInCustomizationForm="True" VisibleIndex="0">
                                                                <EditButton Visible="True">
                                                                </EditButton>
                                                            </dx:GridViewCommandColumn>
                                                            <dx:GridViewDataTextColumn FieldName="MsgId" ReadOnly="True" 
                                                                ShowInCustomizationForm="True" Visible="False" VisibleIndex="1">
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn Caption="選單" FieldName="MENU_ID" ReadOnly="True" 
                                                                ShowInCustomizationForm="True" VisibleIndex="2">
                                                                <HeaderStyle HorizontalAlign="Center" />
                                                                <CellStyle Font-Names="王漢宗細圓體繁">
                                                                </CellStyle>
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn Caption="程式名稱" FieldName="MENU_URL" 
                                                                ShowInCustomizationForm="True" VisibleIndex="3">
                                                                <Settings AllowSort="False" />
                                                                <EditItemTemplate>
                                                                    <dx:ASPxComboBox ID="ASPxComboBox2" runat="server" 
                                                                        DataSourceID="EntityDataSource3" Font-Names="王漢宗細圓體繁" 
                                                                        Text='<%# Bind("MENU_URL") %>' TextField="PROC_NAME" TextFormatString="{0}" 
                                                                        Width="100%">
                                                                        <Columns>
                                                                            <dx:ListBoxColumn Caption="程式" FieldName="PROC_NAME" Name="PROC_NAME" />
                                                                            <dx:ListBoxColumn Caption="說明" FieldName="PROC_TEXT" Name="PROC_TEXT" />
                                                                            <dx:ListBoxColumn Caption="系統代號" FieldName="SYS_GROUP" Name="SYS_GROUP" />
                                                                        </Columns>
                                                                    </dx:ASPxComboBox>
                                                                </EditItemTemplate>
                                                                <HeaderStyle HorizontalAlign="Center" />
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn Caption="作業說明" FieldName="MENU_TEXT" ReadOnly="True" 
                                                                ShowInCustomizationForm="True" VisibleIndex="4">
                                                                <Settings AllowSort="False" />
                                                                <HeaderStyle HorizontalAlign="Center" />
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn FieldName="MENU_LEVEL" 
                                                                ShowInCustomizationForm="True" Visible="False" VisibleIndex="5">
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataComboBoxColumn Caption="作廢別" FieldName="MENU_VOID" 
                                                                ShowInCustomizationForm="True" VisibleIndex="6">
                                                                <PropertiesComboBox DataSourceID="edsSYS_VOIDTYPE" TextField="CODE_TEXT" 
                                                                    TextFormatString="{0}" ValueField="CODE_ID">
                                                                    <Columns>
                                                                        <dx:ListBoxColumn Caption="說明" FieldName="CODE_TEXT" Name="CODE_TEXT" />
                                                                        <dx:ListBoxColumn Caption="值" FieldName="CODE_ID" Name="CODE_ID" />
                                                                    </Columns>
                                                                </PropertiesComboBox>
                                                                <Settings AllowSort="False" />
                                                                <DataItemTemplate>
                                                                    <dx:ASPxLabel ID="labL1MENU_VOID" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                        Text="labL1MENU_VOID" Width="100%">
                                                                    </dx:ASPxLabel>
                                                                </DataItemTemplate>
                                                                <HeaderStyle HorizontalAlign="Center" />
                                                                <CellStyle Font-Names="王漢宗細圓體繁" HorizontalAlign="Center">
                                                                </CellStyle>
                                                            </dx:GridViewDataComboBoxColumn>
                                                        </Columns>
                                                        <SettingsBehavior AllowFocusedRow="True" />
                                                        <SettingsPager AlwaysShowPager="True" PageSize="11">
                                                        </SettingsPager>
                                                        <SettingsEditing EditFormColumnCount="1" />
                                                        <SettingsText CommandCancel="取消" CommandEdit="修改" CommandUpdate="更新" />
                                                        <SettingsDetail AllowOnlyOneMasterRowExpanded="True" ShowDetailRow="True" />
                                                        <Styles>
                                                            <AlternatingRow Enabled="True">
                                                            </AlternatingRow>
                                                        </Styles>
                                                        <StylesEditors>
                                                            <TextBox Font-Names="王漢宗細圓體繁">
                                                            </TextBox>
                                                        </StylesEditors>
                                                        <Templates>
                                                            <DetailRow>
                                                                <dx:ASPxRoundPanel ID="ASPxRoundPanel4" runat="server" EnableTheming="True" 
                                                                    Font-Names="王漢宗細圓體繁" HeaderText="第二層【門市店】" Theme="DevEx" 
                                                                    Width="100%">
                                                                    <PanelCollection>
                                                                        <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                                                                            <dx:ASPxGridView ID="ASPxGridView3" runat="server" AutoGenerateColumns="False" 
                                                                                DataSourceID="edsL2" Font-Names="王漢宗細圓體繁" 
                                                                                KeyFieldName="MsgId" 
                                                                                OnCellEditorInitialize="ASPxGridView3_CellEditorInitialize" 
                                                                                OnCommandButtonInitialize="ASPxGridView3_CommandButtonInitialize" 
                                                                                OnDetailRowExpandedChanged="ASPxGridView3_DetailRowExpandedChanged" 
                                                                                OnHtmlDataCellPrepared="ASPxGridView3_HtmlDataCellPrepared" 
                                                                                OnHtmlRowCreated="ASPxGridView3_HtmlRowCreated" 
                                                                                OnHtmlRowPrepared="ASPxGridView3_HtmlRowPrepared" 
                                                                                OnRowUpdating="ASPxGridView3_RowUpdating" Width="100%">
                                                                                <Columns>
                                                                                    <dx:GridViewCommandColumn ShowInCustomizationForm="True" VisibleIndex="0">
                                                                                        <EditButton Visible="True">
                                                                                        </EditButton>
                                                                                    </dx:GridViewCommandColumn>
                                                                                    <dx:GridViewDataTextColumn FieldName="MsgId" ReadOnly="True" 
                                                                                        ShowInCustomizationForm="True" Visible="False" VisibleIndex="1">
                                                                                    </dx:GridViewDataTextColumn>
                                                                                    <dx:GridViewDataTextColumn Caption="選單" FieldName="MENU_ID" ReadOnly="True" 
                                                                                        ShowInCustomizationForm="True" VisibleIndex="2">
                                                                                        <HeaderStyle HorizontalAlign="Center" />
                                                                                        <CellStyle Font-Names="王漢宗細圓體繁">
                                                                                        </CellStyle>
                                                                                    </dx:GridViewDataTextColumn>
                                                                                    <dx:GridViewDataTextColumn Caption="程式名稱" FieldName="MENU_URL" 
                                                                                        ShowInCustomizationForm="True" VisibleIndex="3">
                                                                                        <Settings AllowSort="False" />
                                                                                        <EditItemTemplate>
                                                                                            <dx:ASPxComboBox ID="ASPxComboBox3" runat="server" 
                                                                                                DataSourceID="EntityDataSource3" Font-Names="王漢宗細圓體繁" 
                                                                                                Text='<%# Bind("MENU_URL") %>' TextField="PROC_NAME" TextFormatString="{0}" 
                                                                                                Width="100%">
                                                                                                <Columns>
                                                                                                    <dx:ListBoxColumn Caption="程式" FieldName="PROC_NAME" Name="PROC_NAME" />
                                                                                                    <dx:ListBoxColumn Caption="說明" FieldName="PROC_TEXT" Name="PROC_TEXT" />
                                                                                                    <dx:ListBoxColumn Caption="系統代號" FieldName="SYS_GROUP" Name="SYS_GROUP" />
                                                                                                </Columns>
                                                                                            </dx:ASPxComboBox>
                                                                                        </EditItemTemplate>
                                                                                        <HeaderStyle HorizontalAlign="Center" />
                                                                                    </dx:GridViewDataTextColumn>
                                                                                    <dx:GridViewDataTextColumn Caption="作業說明" FieldName="MENU_TEXT" ReadOnly="True" 
                                                                                        ShowInCustomizationForm="True" VisibleIndex="4">
                                                                                        <Settings AllowSort="False" />
                                                                                        <HeaderStyle HorizontalAlign="Center" />
                                                                                    </dx:GridViewDataTextColumn>
                                                                                    <dx:GridViewDataTextColumn FieldName="MENU_LEVEL" 
                                                                                        ShowInCustomizationForm="True" Visible="False" VisibleIndex="5">
                                                                                    </dx:GridViewDataTextColumn>
                                                                                    <dx:GridViewDataComboBoxColumn Caption="作廢別" FieldName="MENU_VOID" 
                                                                                        ShowInCustomizationForm="True" VisibleIndex="6">
                                                                                        <PropertiesComboBox DataSourceID="edsSYS_VOIDTYPE" TextField="CODE_TEXT" 
                                                                                            TextFormatString="{0}" ValueField="CODE_ID">
                                                                                            <Columns>
                                                                                                <dx:ListBoxColumn Caption="說明" FieldName="CODE_TEXT" Name="CODE_TEXT" />
                                                                                                <dx:ListBoxColumn Caption="值" FieldName="CODE_ID" Name="CODE_ID" />
                                                                                            </Columns>
                                                                                        </PropertiesComboBox>
                                                                                        <Settings AllowSort="False" />
                                                                                        <DataItemTemplate>
                                                                                            <dx:ASPxLabel ID="labL2MENU_VOID" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                                                Text="labL2MENU_VOID" Width="100%">
                                                                                            </dx:ASPxLabel>
                                                                                        </DataItemTemplate>
                                                                                        <HeaderStyle HorizontalAlign="Center" />
                                                                                        <CellStyle Font-Names="王漢宗細圓體繁" HorizontalAlign="Center">
                                                                                        </CellStyle>
                                                                                    </dx:GridViewDataComboBoxColumn>
                                                                                </Columns>
                                                                                <SettingsBehavior AllowFocusedRow="True" />
                                                                                <SettingsPager AlwaysShowPager="True" PageSize="11">
                                                                                </SettingsPager>
                                                                                <SettingsEditing EditFormColumnCount="1" />
                                                                                <SettingsText CommandCancel="取消" CommandEdit="修改" CommandUpdate="更新" />
                                                                                <SettingsDetail AllowOnlyOneMasterRowExpanded="True" ShowDetailRow="True" />
                                                                                <Styles>
                                                                                    <AlternatingRow Enabled="True">
                                                                                    </AlternatingRow>
                                                                                </Styles>
                                                                                <StylesEditors>
                                                                                    <TextBox Font-Names="王漢宗細圓體繁">
                                                                                    </TextBox>
                                                                                </StylesEditors>
                                                                                <Templates>
                                                                                    <DetailRow>
                                                                                        <dx:ASPxRoundPanel ID="ASPxRoundPanel5" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                                            HeaderText="第三層【門市店】" Theme="DevEx" Width="100%">
                                                                                            <PanelCollection>
                                                                                                <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                                                                                                    <dx:ASPxGridView ID="ASPxGridView4" runat="server" AutoGenerateColumns="False" 
                                                                                                        DataSourceID="edsL3" Font-Names="王漢宗細圓體繁" 
                                                                                                        KeyFieldName="MsgId" 
                                                                                                        OnCellEditorInitialize="ASPxGridView4_CellEditorInitialize" 
                                                                                                        OnHtmlDataCellPrepared="ASPxGridView4_HtmlDataCellPrepared" 
                                                                                                        OnHtmlRowCreated="ASPxGridView4_HtmlRowCreated" 
                                                                                                        OnRowUpdating="ASPxGridView4_RowUpdating" Width="100%">
                                                                                                        <Columns>
                                                                                                            <dx:GridViewCommandColumn ShowInCustomizationForm="True" VisibleIndex="0">
                                                                                                                <EditButton Visible="True">
                                                                                                                </EditButton>
                                                                                                            </dx:GridViewCommandColumn>
                                                                                                            <dx:GridViewDataTextColumn FieldName="MsgId" ReadOnly="True" 
                                                                                                                ShowInCustomizationForm="True" Visible="False" VisibleIndex="1">
                                                                                                            </dx:GridViewDataTextColumn>
                                                                                                            <dx:GridViewDataTextColumn Caption="選單" FieldName="MENU_ID" ReadOnly="True" 
                                                                                                                ShowInCustomizationForm="True" VisibleIndex="2">
                                                                                                                <HeaderStyle HorizontalAlign="Center" />
                                                                                                                <CellStyle Font-Names="王漢宗細圓體繁">
                                                                                                                </CellStyle>
                                                                                                            </dx:GridViewDataTextColumn>
                                                                                                            <dx:GridViewDataTextColumn Caption="程式名稱" FieldName="MENU_URL" 
                                                                                                                ShowInCustomizationForm="True" VisibleIndex="3">
                                                                                                                <Settings AllowSort="False" />
                                                                                                                <EditItemTemplate>
                                                                                                                    <dx:ASPxComboBox ID="ASPxComboBox3" runat="server" 
                                                                                                                        DataSourceID="EntityDataSource3" Font-Names="王漢宗細圓體繁" 
                                                                                                                        Text='<%# Bind("MENU_URL") %>' TextField="PROC_NAME" TextFormatString="{0}" 
                                                                                                                        Width="100%">
                                                                                                                        <Columns>
                                                                                                                            <dx:ListBoxColumn Caption="程式" FieldName="PROC_NAME" Name="PROC_NAME" />
                                                                                                                            <dx:ListBoxColumn Caption="說明" FieldName="PROC_TEXT" Name="PROC_TEXT" />
                                                                                                                            <dx:ListBoxColumn Caption="系統代號" FieldName="SYS_GROUP" Name="SYS_GROUP" />
                                                                                                                        </Columns>
                                                                                                                    </dx:ASPxComboBox>
                                                                                                                </EditItemTemplate>
                                                                                                                <HeaderStyle HorizontalAlign="Center" />
                                                                                                            </dx:GridViewDataTextColumn>
                                                                                                            <dx:GridViewDataTextColumn Caption="作業說明" FieldName="MENU_TEXT" ReadOnly="True" 
                                                                                                                ShowInCustomizationForm="True" VisibleIndex="4">
                                                                                                                <Settings AllowSort="False" />
                                                                                                                <HeaderStyle HorizontalAlign="Center" />
                                                                                                            </dx:GridViewDataTextColumn>
                                                                                                            <dx:GridViewDataTextColumn FieldName="MENU_LEVEL" 
                                                                                                                ShowInCustomizationForm="True" Visible="False" VisibleIndex="5">
                                                                                                            </dx:GridViewDataTextColumn>
                                                                                                            <dx:GridViewDataComboBoxColumn Caption="作廢別" FieldName="MENU_VOID" 
                                                                                                                ShowInCustomizationForm="True" VisibleIndex="6">
                                                                                                                <PropertiesComboBox DataSourceID="edsSYS_VOIDTYPE" TextField="CODE_TEXT" 
                                                                                                                    TextFormatString="{0}" ValueField="CODE_ID">
                                                                                                                    <Columns>
                                                                                                                        <dx:ListBoxColumn Caption="說明" FieldName="CODE_TEXT" Name="CODE_TEXT" />
                                                                                                                        <dx:ListBoxColumn Caption="值" FieldName="CODE_ID" Name="CODE_ID" />
                                                                                                                    </Columns>
                                                                                                                </PropertiesComboBox>
                                                                                                                <Settings AllowSort="False" />
                                                                                                                <DataItemTemplate>
                                                                                                                    <dx:ASPxLabel ID="labL3MENU_VOID" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                                                                        Text="labL3MENU_VOID" Width="100%">
                                                                                                                    </dx:ASPxLabel>
                                                                                                                </DataItemTemplate>
                                                                                                                <HeaderStyle HorizontalAlign="Center" />
                                                                                                                <CellStyle Font-Names="王漢宗細圓體繁" HorizontalAlign="Center">
                                                                                                                </CellStyle>
                                                                                                            </dx:GridViewDataComboBoxColumn>
                                                                                                        </Columns>
                                                                                                        <SettingsBehavior AllowFocusedRow="True" />
                                                                                                        <SettingsPager AlwaysShowPager="True" PageSize="11">
                                                                                                        </SettingsPager>
                                                                                                        <SettingsEditing EditFormColumnCount="1" />
                                                                                                        <SettingsText CommandCancel="取消" CommandEdit="修改" CommandUpdate="更新" />
                                                                                                        <SettingsDetail AllowOnlyOneMasterRowExpanded="True" />
                                                                                                        <Styles>
                                                                                                            <AlternatingRow Enabled="True">
                                                                                                            </AlternatingRow>
                                                                                                        </Styles>
                                                                                                        <StylesEditors>
                                                                                                            <TextBox Font-Names="王漢宗細圓體繁">
                                                                                                            </TextBox>
                                                                                                        </StylesEditors>
                                                                                                    </dx:ASPxGridView>
                                                                                                </dx:PanelContent>
                                                                                            </PanelCollection>
                                                                                        </dx:ASPxRoundPanel>
                                                                                    </DetailRow>
                                                                                </Templates>
                                                                            </dx:ASPxGridView>
                                                                        </dx:PanelContent>
                                                                    </PanelCollection>
                                                                </dx:ASPxRoundPanel>
                                                            </DetailRow>
                                                        </Templates>
                                                    </dx:ASPxGridView>
                                                </dx:PanelContent>
                                            </PanelCollection>
                                        </dx:ASPxRoundPanel>
                                    </td>
                                    <td align="center" valign="top">

                                        <dx:ASPxRoundPanel ID="ASPxRoundPanel6" runat="server" Font-Names="王漢宗細圓體繁" 
                                            HeaderText="第一層【總公司】" Theme="RedWine">
                                            <PanelCollection>
                                                <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                                                    <dx:ASPxGridView ID="ASPxGridView22" runat="server" AutoGenerateColumns="False" 
                                                        DataSourceID="edsL12" Font-Names="王漢宗細圓體繁" 
                                                        KeyFieldName="MsgId" 
                                                        OnCellEditorInitialize="ASPxGridView22_CellEditorInitialize" 
                                                        OnDetailRowExpandedChanged="ASPxGridView22_DetailRowExpandedChanged" 
                                                        OnHtmlDataCellPrepared="ASPxGridView22_HtmlDataCellPrepared" 
                                                        OnHtmlRowCreated="ASPxGridView22_HtmlRowCreated" 
                                                        OnRowUpdating="ASPxGridView22_RowUpdating" Width="100%">
                                                        <Columns>
                                                            <dx:GridViewCommandColumn ShowInCustomizationForm="True" VisibleIndex="0">
                                                                <EditButton Visible="True">
                                                                </EditButton>
                                                            </dx:GridViewCommandColumn>
                                                            <dx:GridViewDataTextColumn FieldName="MsgId" ReadOnly="True" 
                                                                ShowInCustomizationForm="True" Visible="False" VisibleIndex="1">
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn Caption="選單" FieldName="MENU_ID" ReadOnly="True" 
                                                                ShowInCustomizationForm="True" VisibleIndex="2">
                                                                <HeaderStyle HorizontalAlign="Center" />
                                                                <CellStyle Font-Names="王漢宗細圓體繁">
                                                                </CellStyle>
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn Caption="程式名稱" FieldName="MENU_URL" 
                                                                ShowInCustomizationForm="True" VisibleIndex="3">
                                                                <Settings AllowSort="False" />
                                                                <EditItemTemplate>
                                                                    <dx:ASPxComboBox ID="ASPxComboBox4" runat="server" 
                                                                        DataSourceID="EntityDataSource3" Font-Names="王漢宗細圓體繁" 
                                                                        Text='<%# Bind("MENU_URL") %>' TextField="PROC_NAME" TextFormatString="{0}" 
                                                                        Width="100%">
                                                                        <Columns>
                                                                            <dx:ListBoxColumn Caption="程式" FieldName="PROC_NAME" Name="PROC_NAME" />
                                                                            <dx:ListBoxColumn Caption="說明" FieldName="PROC_TEXT" Name="PROC_TEXT" />
                                                                            <dx:ListBoxColumn Caption="系統代號" FieldName="SYS_GROUP" Name="SYS_GROUP" />
                                                                        </Columns>
                                                                    </dx:ASPxComboBox>
                                                                </EditItemTemplate>
                                                                <HeaderStyle HorizontalAlign="Center" />
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn Caption="作業說明" FieldName="MENU_TEXT" ReadOnly="True" 
                                                                ShowInCustomizationForm="True" VisibleIndex="4">
                                                                <Settings AllowSort="False" />
                                                                <HeaderStyle HorizontalAlign="Center" />
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn FieldName="MENU_LEVEL" 
                                                                ShowInCustomizationForm="True" Visible="False" VisibleIndex="5">
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataComboBoxColumn Caption="作廢別" FieldName="MENU_VOID" 
                                                                ShowInCustomizationForm="True" VisibleIndex="6">
                                                                <PropertiesComboBox DataSourceID="edsSYS_VOIDTYPE" TextField="CODE_TEXT" 
                                                                    TextFormatString="{0}" ValueField="CODE_ID">
                                                                    <Columns>
                                                                        <dx:ListBoxColumn Caption="說明" FieldName="CODE_TEXT" Name="CODE_TEXT" />
                                                                        <dx:ListBoxColumn Caption="值" FieldName="CODE_ID" Name="CODE_ID" />
                                                                    </Columns>
                                                                </PropertiesComboBox>
                                                                <Settings AllowSort="False" />
                                                                <DataItemTemplate>
                                                                    <dx:ASPxLabel ID="labL12MENU_VOID" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                        Text="labL12MENU_VOID" Width="100%">
                                                                    </dx:ASPxLabel>
                                                                </DataItemTemplate>
                                                                <HeaderStyle HorizontalAlign="Center" />
                                                                <CellStyle Font-Names="王漢宗細圓體繁" HorizontalAlign="Center">
                                                                </CellStyle>
                                                            </dx:GridViewDataComboBoxColumn>
                                                        </Columns>
                                                        <SettingsBehavior AllowFocusedRow="True" />
                                                        <SettingsPager AlwaysShowPager="True" PageSize="11">
                                                        </SettingsPager>
                                                        <SettingsEditing EditFormColumnCount="1" />
                                                        <SettingsText CommandCancel="取消" CommandEdit="修改" CommandUpdate="更新" />
                                                        <SettingsDetail AllowOnlyOneMasterRowExpanded="True" ShowDetailRow="True" />
                                                        <Styles>
                                                            <AlternatingRow Enabled="True">
                                                            </AlternatingRow>
                                                        </Styles>
                                                        <StylesEditors>
                                                            <TextBox Font-Names="王漢宗細圓體繁">
                                                            </TextBox>
                                                        </StylesEditors>
                                                        <Templates>
                                                            <DetailRow>
                                                                <dx:ASPxRoundPanel ID="ASPxRoundPanel7" runat="server" EnableTheming="True" 
                                                                    Font-Names="王漢宗細圓體繁" HeaderText="第二層【總公司】" Theme="RedWine" 
                                                                    Width="100%">
                                                                    <PanelCollection>
                                                                        <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                                                                            <dx:ASPxGridView ID="ASPxGridView32" runat="server" AutoGenerateColumns="False" 
                                                                                DataSourceID="edsL22" Font-Names="王漢宗細圓體繁" 
                                                                                KeyFieldName="MsgId" 
                                                                                OnCellEditorInitialize="ASPxGridView32_CellEditorInitialize" 
                                                                                OnDetailRowExpandedChanged="ASPxGridView32_DetailRowExpandedChanged" 
                                                                                OnHtmlDataCellPrepared="ASPxGridView32_HtmlDataCellPrepared" 
                                                                                OnHtmlRowCreated="ASPxGridView32_HtmlRowCreated" 
                                                                                OnRowUpdating="ASPxGridView32_RowUpdating" Width="100%">
                                                                                <Columns>
                                                                                    <dx:GridViewCommandColumn ShowInCustomizationForm="True" VisibleIndex="0">
                                                                                        <EditButton Visible="True">
                                                                                        </EditButton>
                                                                                    </dx:GridViewCommandColumn>
                                                                                    <dx:GridViewDataTextColumn FieldName="MsgId" ReadOnly="True" 
                                                                                        ShowInCustomizationForm="True" Visible="False" VisibleIndex="1">
                                                                                    </dx:GridViewDataTextColumn>
                                                                                    <dx:GridViewDataTextColumn Caption="選單" FieldName="MENU_ID" ReadOnly="True" 
                                                                                        ShowInCustomizationForm="True" VisibleIndex="2">
                                                                                        <HeaderStyle HorizontalAlign="Center" />
                                                                                        <CellStyle Font-Names="王漢宗細圓體繁">
                                                                                        </CellStyle>
                                                                                    </dx:GridViewDataTextColumn>
                                                                                    <dx:GridViewDataTextColumn Caption="程式名稱" FieldName="MENU_URL" 
                                                                                        ShowInCustomizationForm="True" VisibleIndex="3">
                                                                                        <Settings AllowSort="False" />
                                                                                        <EditItemTemplate>
                                                                                            <dx:ASPxComboBox ID="ASPxComboBox5" runat="server" 
                                                                                                DataSourceID="EntityDataSource3" Font-Names="王漢宗細圓體繁" 
                                                                                                Text='<%# Bind("MENU_URL") %>' TextField="PROC_NAME" TextFormatString="{0}" 
                                                                                                Width="100%">
                                                                                                <Columns>
                                                                                                    <dx:ListBoxColumn Caption="程式" FieldName="PROC_NAME" Name="PROC_NAME" />
                                                                                                    <dx:ListBoxColumn Caption="說明" FieldName="PROC_TEXT" Name="PROC_TEXT" />
                                                                                                    <dx:ListBoxColumn Caption="系統代號" FieldName="SYS_GROUP" Name="SYS_GROUP" />
                                                                                                </Columns>
                                                                                            </dx:ASPxComboBox>
                                                                                        </EditItemTemplate>
                                                                                        <HeaderStyle HorizontalAlign="Center" />
                                                                                    </dx:GridViewDataTextColumn>
                                                                                    <dx:GridViewDataTextColumn Caption="作業說明" FieldName="MENU_TEXT" ReadOnly="True" 
                                                                                        ShowInCustomizationForm="True" VisibleIndex="4">
                                                                                        <Settings AllowSort="False" />
                                                                                        <HeaderStyle HorizontalAlign="Center" />
                                                                                    </dx:GridViewDataTextColumn>
                                                                                    <dx:GridViewDataTextColumn FieldName="MENU_LEVEL" 
                                                                                        ShowInCustomizationForm="True" Visible="False" VisibleIndex="5">
                                                                                    </dx:GridViewDataTextColumn>
                                                                                    <dx:GridViewDataComboBoxColumn Caption="作廢別" FieldName="MENU_VOID" 
                                                                                        ShowInCustomizationForm="True" VisibleIndex="6">
                                                                                        <PropertiesComboBox DataSourceID="edsSYS_VOIDTYPE" TextField="CODE_TEXT" 
                                                                                            TextFormatString="{0}" ValueField="CODE_ID">
                                                                                            <Columns>
                                                                                                <dx:ListBoxColumn Caption="說明" FieldName="CODE_TEXT" Name="CODE_TEXT" />
                                                                                                <dx:ListBoxColumn Caption="值" FieldName="CODE_ID" Name="CODE_ID" />
                                                                                            </Columns>
                                                                                        </PropertiesComboBox>
                                                                                        <Settings AllowSort="False" />
                                                                                        <DataItemTemplate>
                                                                                            <dx:ASPxLabel ID="labL22MENU_VOID" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                                                Text="labL22MENU_VOID" Width="100%">
                                                                                            </dx:ASPxLabel>
                                                                                        </DataItemTemplate>
                                                                                        <HeaderStyle HorizontalAlign="Center" />
                                                                                        <CellStyle Font-Names="王漢宗細圓體繁" HorizontalAlign="Center">
                                                                                        </CellStyle>
                                                                                    </dx:GridViewDataComboBoxColumn>
                                                                                </Columns>
                                                                                <SettingsBehavior AllowFocusedRow="True" />
                                                                                <SettingsPager AlwaysShowPager="True" PageSize="11">
                                                                                </SettingsPager>
                                                                                <SettingsEditing EditFormColumnCount="1" />
                                                                                <SettingsText CommandCancel="取消" CommandEdit="修改" CommandUpdate="更新" />
                                                                                <SettingsDetail AllowOnlyOneMasterRowExpanded="True" ShowDetailRow="True" />
                                                                                <Styles>
                                                                                    <AlternatingRow Enabled="True">
                                                                                    </AlternatingRow>
                                                                                </Styles>
                                                                                <StylesEditors>
                                                                                    <TextBox Font-Names="王漢宗細圓體繁">
                                                                                    </TextBox>
                                                                                </StylesEditors>
                                                                                <Templates>
                                                                                    <DetailRow>
                                                                                        <dx:ASPxRoundPanel ID="ASPxRoundPanel8" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                                            HeaderText="第三層【總公司】" Theme="RedWine" Width="100%">
                                                                                            <PanelCollection>
                                                                                                <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                                                                                                    <dx:ASPxGridView ID="ASPxGridView42" runat="server" AutoGenerateColumns="False" 
                                                                                                        DataSourceID="edsL32" Font-Names="王漢宗細圓體繁" 
                                                                                                        KeyFieldName="MsgId" 
                                                                                                        OnCellEditorInitialize="ASPxGridView42_CellEditorInitialize" 
                                                                                                        OnHtmlDataCellPrepared="ASPxGridView42_HtmlDataCellPrepared" 
                                                                                                        OnHtmlRowCreated="ASPxGridView42_HtmlRowCreated" 
                                                                                                        OnRowUpdating="ASPxGridView42_RowUpdating" Width="100%">
                                                                                                        <Columns>
                                                                                                            <dx:GridViewCommandColumn ShowInCustomizationForm="True" VisibleIndex="0">
                                                                                                                <EditButton Visible="True">
                                                                                                                </EditButton>
                                                                                                            </dx:GridViewCommandColumn>
                                                                                                            <dx:GridViewDataTextColumn FieldName="MsgId" ReadOnly="True" 
                                                                                                                ShowInCustomizationForm="True" Visible="False" VisibleIndex="1">
                                                                                                            </dx:GridViewDataTextColumn>
                                                                                                            <dx:GridViewDataTextColumn Caption="選單" FieldName="MENU_ID" ReadOnly="True" 
                                                                                                                ShowInCustomizationForm="True" VisibleIndex="2">
                                                                                                                <HeaderStyle HorizontalAlign="Center" />
                                                                                                                <CellStyle Font-Names="王漢宗細圓體繁">
                                                                                                                </CellStyle>
                                                                                                            </dx:GridViewDataTextColumn>
                                                                                                            <dx:GridViewDataTextColumn Caption="程式名稱" FieldName="MENU_URL" 
                                                                                                                ShowInCustomizationForm="True" VisibleIndex="3">
                                                                                                                <Settings AllowSort="False" />
                                                                                                                <EditItemTemplate>
                                                                                                                    <dx:ASPxComboBox ID="ASPxComboBox6" runat="server" 
                                                                                                                        DataSourceID="EntityDataSource3" Font-Names="王漢宗細圓體繁" 
                                                                                                                        Text='<%# Bind("MENU_URL") %>' TextField="PROC_NAME" TextFormatString="{0}" 
                                                                                                                        Width="100%">
                                                                                                                        <Columns>
                                                                                                                            <dx:ListBoxColumn Caption="程式" FieldName="PROC_NAME" Name="PROC_NAME" />
                                                                                                                            <dx:ListBoxColumn Caption="說明" FieldName="PROC_TEXT" Name="PROC_TEXT" />
                                                                                                                            <dx:ListBoxColumn Caption="系統代號" FieldName="SYS_GROUP" Name="SYS_GROUP" />
                                                                                                                        </Columns>
                                                                                                                    </dx:ASPxComboBox>
                                                                                                                </EditItemTemplate>
                                                                                                                <HeaderStyle HorizontalAlign="Center" />
                                                                                                            </dx:GridViewDataTextColumn>
                                                                                                            <dx:GridViewDataTextColumn Caption="作業說明" FieldName="MENU_TEXT" ReadOnly="True" 
                                                                                                                ShowInCustomizationForm="True" VisibleIndex="4">
                                                                                                                <Settings AllowSort="False" />
                                                                                                                <HeaderStyle HorizontalAlign="Center" />
                                                                                                            </dx:GridViewDataTextColumn>
                                                                                                            <dx:GridViewDataTextColumn FieldName="MENU_LEVEL" 
                                                                                                                ShowInCustomizationForm="True" Visible="False" VisibleIndex="5">
                                                                                                            </dx:GridViewDataTextColumn>
                                                                                                            <dx:GridViewDataComboBoxColumn Caption="作廢別" FieldName="MENU_VOID" 
                                                                                                                ShowInCustomizationForm="True" VisibleIndex="6">
                                                                                                                <PropertiesComboBox DataSourceID="edsSYS_VOIDTYPE" TextField="CODE_TEXT" 
                                                                                                                    TextFormatString="{0}" ValueField="CODE_ID">
                                                                                                                    <Columns>
                                                                                                                        <dx:ListBoxColumn Caption="說明" FieldName="CODE_TEXT" Name="CODE_TEXT" />
                                                                                                                        <dx:ListBoxColumn Caption="值" FieldName="CODE_ID" Name="CODE_ID" />
                                                                                                                    </Columns>
                                                                                                                </PropertiesComboBox>
                                                                                                                <Settings AllowSort="False" />
                                                                                                                <DataItemTemplate>
                                                                                                                    <dx:ASPxLabel ID="labL32MENU_VOID" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                                                                        Text="labL32MENU_VOID" Width="100%">
                                                                                                                    </dx:ASPxLabel>
                                                                                                                </DataItemTemplate>
                                                                                                                <HeaderStyle HorizontalAlign="Center" />
                                                                                                                <CellStyle Font-Names="王漢宗細圓體繁" HorizontalAlign="Center">
                                                                                                                </CellStyle>
                                                                                                            </dx:GridViewDataComboBoxColumn>
                                                                                                        </Columns>
                                                                                                        <SettingsBehavior AllowFocusedRow="True" />
                                                                                                        <SettingsPager AlwaysShowPager="True" PageSize="11">
                                                                                                        </SettingsPager>
                                                                                                        <SettingsEditing EditFormColumnCount="1" />
                                                                                                        <SettingsText CommandCancel="取消" CommandEdit="修改" CommandUpdate="更新" />
                                                                                                        <SettingsDetail AllowOnlyOneMasterRowExpanded="True" />
                                                                                                        <Styles>
                                                                                                            <AlternatingRow Enabled="True">
                                                                                                            </AlternatingRow>
                                                                                                        </Styles>
                                                                                                        <StylesEditors>
                                                                                                            <TextBox Font-Names="王漢宗細圓體繁">
                                                                                                            </TextBox>
                                                                                                        </StylesEditors>
                                                                                                    </dx:ASPxGridView>
                                                                                                </dx:PanelContent>
                                                                                            </PanelCollection>
                                                                                        </dx:ASPxRoundPanel>
                                                                                    </DetailRow>
                                                                                </Templates>
                                                                            </dx:ASPxGridView>
                                                                        </dx:PanelContent>
                                                                    </PanelCollection>
                                                                </dx:ASPxRoundPanel>
                                                            </DetailRow>
                                                        </Templates>
                                                    </dx:ASPxGridView>
                                                </dx:PanelContent>
                                            </PanelCollection>
                                        </dx:ASPxRoundPanel>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                            </table>
                        </div>
                    </asp:Panel>
                    <br />
                    <br />
                <br />
                <br />
                    <asp:EntityDataSource ID="edsL1" runat="server" 
                        ConnectionString="name=NEWPMSEntities" DefaultContainerName="NEWPMSEntities" 
                        EnableDelete="True" EnableFlattening="False" EnableInsert="True" 
                        EnableUpdate="True" EntitySetName="SYS_menudat" GroupBy="" 
                        OrderBy="it.MENU_ID" Where="it.MENU_KEY='Item000000'
">
                    </asp:EntityDataSource>
                    <asp:EntityDataSource ID="edsL12" runat="server" 
                        ConnectionString="name=NEWPMSEntities" DefaultContainerName="NEWPMSEntities" 
                        EnableDelete="True" EnableFlattening="False" EnableInsert="True" 
                        EnableUpdate="True" EntitySetName="SYS_menudathq" GroupBy="" 
                        OrderBy="it.MENU_ID" Where="it.MENU_KEY='HQ000000'
">
                    </asp:EntityDataSource>
                    <asp:EntityDataSource ID="edsL2" runat="server" 
                        ConnectionString="name=NEWPMSEntities" DefaultContainerName="NEWPMSEntities" 
                        EnableFlattening="False" EnableUpdate="True" EntitySetName="SYS_menudat" 
                        OrderBy="it.MENU_ID" Where="it.MENU_KEY=@MENU_KEY">
                        <WhereParameters>
                            <asp:QueryStringParameter Name="MENU_KEY" Type="String" />
                        </WhereParameters>
                    </asp:EntityDataSource>
                    <asp:EntityDataSource ID="edsL22" runat="server" 
                        ConnectionString="name=NEWPMSEntities" DefaultContainerName="NEWPMSEntities" 
                        EnableFlattening="False" EnableUpdate="True" EntitySetName="SYS_menudathq" 
                        OrderBy="it.MENU_ID" Where="it.MENU_KEY=@MENU_KEY">
                        <WhereParameters>
                            <asp:QueryStringParameter Name="MENU_KEY" Type="String" />
                        </WhereParameters>
                    </asp:EntityDataSource>
                    <asp:EntityDataSource ID="edsL3" runat="server" 
                        ConnectionString="name=NEWPMSEntities" DefaultContainerName="NEWPMSEntities" 
                        EnableFlattening="False" EnableUpdate="True" EntitySetName="SYS_menudat" 
                        OrderBy="it.MENU_ID" Where="it.MENU_KEY=@MENU_KEY">
                        <WhereParameters>
                            <asp:QueryStringParameter Name="MENU_KEY" Type="String" />
                        </WhereParameters>
                    </asp:EntityDataSource>
                    <asp:EntityDataSource ID="edsL32" runat="server" 
                        ConnectionString="name=NEWPMSEntities" DefaultContainerName="NEWPMSEntities" 
                        EnableFlattening="False" EnableUpdate="True" EntitySetName="SYS_menudathq" 
                        OrderBy="it.MENU_ID" Where="it.MENU_KEY=@MENU_KEY">
                        <WhereParameters>
                            <asp:QueryStringParameter Name="MENU_KEY" Type="String" />
                        </WhereParameters>
                    </asp:EntityDataSource>
                    <asp:EntityDataSource ID="EntityDataSource3" runat="server" 
                        ConnectionString="name=NEWPMSEntities" DefaultContainerName="NEWPMSEntities" 
                        EnableFlattening="False" EntitySetName="SYS_procdat" 
                        OrderBy="it.SYS_GROUP">
                    </asp:EntityDataSource>
                    <asp:EntityDataSource ID="edsSYS_VOIDTYPE" runat="server" 
                        ConnectionString="name=NEWPMSEntities" DefaultContainerName="NEWPMSEntities" 
                        EnableFlattening="False" EntitySetName="SYS_voidtype">
                    </asp:EntityDataSource>
                </dx:ContentControl>
            </ContentCollection>
        </dx:TabPage>
        <dx:TabPage Text="作業">
            <ContentCollection>
                <dx:ContentControl runat="server" SupportsDisabledAttribute="True">
                    <div align="center">
                        <dx:ASPxPanel ID="ASPxPanel2" runat="server" RenderMode="Table">
                            <PanelCollection>
                                <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                                    <div align="left">
                                        <table class="style8">
                                            <tr>
                                                <td>
                                                    <dx:ASPxHyperLink ID="ASPxHyperLink1" runat="server" CssClass="button add icon" 
                                                        CssPostfix="button" Font-Names="王漢宗細圓體繁" Font-Size="Small" Text="新增作業">
                                                        <ClientSideEvents Click="function(s, e) {
	grid.AddNewRow();
}" />
                                                    </dx:ASPxHyperLink>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" 
                                                        ClientInstanceName="grid" DataSourceID="EntityDataSource1" 
                                                        Font-Names="王漢宗細圓體繁" KeyFieldName="MsgId" 
                                                        OnCellEditorInitialize="ASPxGridView1_CellEditorInitialize" 
                                                        OnHtmlRowCreated="ASPxGridView1_HtmlRowCreated" 
                                                        OnRowInserting="ASPxGridView1_RowInserting" 
                                                        OnRowUpdated="ASPxGridView1_RowUpdated">
                                                        <Columns>
                                                            <dx:GridViewCommandColumn ShowInCustomizationForm="True" VisibleIndex="0">
                                                                <EditButton Visible="True">
                                                                </EditButton>
                                                                <DeleteButton Visible="True">
                                                                </DeleteButton>
                                                            </dx:GridViewCommandColumn>
                                                            <dx:GridViewDataTextColumn FieldName="MsgId" ReadOnly="True" 
                                                                ShowInCustomizationForm="True" Visible="False" VisibleIndex="1">
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn Caption="程式名稱" FieldName="PROC_NAME" 
                                                                ShowInCustomizationForm="True" VisibleIndex="2">
                                                                <HeaderStyle HorizontalAlign="Center" />
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn Caption="說明" FieldName="PROC_TEXT" 
                                                                ShowInCustomizationForm="True" VisibleIndex="3">
                                                                <HeaderStyle HorizontalAlign="Center" />
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn Caption="系統代號" FieldName="SYS_GROUP" 
                                                                ShowInCustomizationForm="True" VisibleIndex="4">
                                                                <Settings AllowHeaderFilter="True" HeaderFilterMode="CheckedList" />
                                                                <HeaderStyle HorizontalAlign="Center" />
                                                                <CellStyle HorizontalAlign="Center">
                                                                </CellStyle>
                                                            </dx:GridViewDataTextColumn>
                                                        </Columns>
                                                        <SettingsBehavior AllowFocusedRow="True" ConfirmDelete="True" />
                                                        <SettingsPager AlwaysShowPager="True" PageSize="20" Position="TopAndBottom">
                                                        </SettingsPager>
                                                        <SettingsEditing EditFormColumnCount="1" />
                                                        <SettingsText CommandCancel="取消" CommandDelete="刪除" CommandEdit="修改" 
                                                            CommandNew="新增" CommandUpdate="更新" ConfirmDelete="確認刪除該筆資料?" />
                                                        <SettingsPopup>
                                                            <HeaderFilter Height="300px" ResizingMode="Postponed" />
                                                        </SettingsPopup>
                                                        <Styles>
                                                            <AlternatingRow Enabled="True">
                                                            </AlternatingRow>
                                                            <HeaderFilterItem Font-Names="王漢宗細圓體繁" Font-Size="Small">
                                                            </HeaderFilterItem>
                                                        </Styles>
                                                        <StylesEditors>
                                                            <TextBox Font-Names="王漢宗細圓體繁">
                                                            </TextBox>
                                                        </StylesEditors>
                                                    </dx:ASPxGridView>
                                                </td>
                                            </tr>
                                        </table>
                                        <br />
                                    </div>
                                </dx:PanelContent>
                            </PanelCollection>
                        </dx:ASPxPanel>
                        <br />
                    </div>
                <br />
                <br />
                <br />
                    <asp:EntityDataSource ID="EntityDataSource1" runat="server" 
                        ConnectionString="name=NEWPMSEntities" DefaultContainerName="NEWPMSEntities" 
                        EnableDelete="True" EnableFlattening="False" EnableInsert="True" 
                        EnableUpdate="True" EntitySetName="SYS_procdat" EntityTypeFilter="" 
                        OrderBy="it.SYS_GROUP" Select="">
                    </asp:EntityDataSource>
                </dx:ContentControl>
            </ContentCollection>
        </dx:TabPage>
    </TabPages>
</dx:ASPxPageControl>
</asp:Content>

