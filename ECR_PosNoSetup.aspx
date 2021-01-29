<%@ page title="" language="C#" masterpagefile="~/MainPage.master" autoeventwireup="true" inherits="ECR_PosNoSetup, App_Web_ecr_posnosetup.aspx.cdcab7d2" %>

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
                            <dx:ASPxPanel ID="ASPxPanel1" runat="server" RenderMode="Table">
                                <PanelCollection>
                                    <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                                        <div align="left">
                                            <table class="style8">
                                                <tr>
                                                    <td>
                                                        <dx:ASPxHyperLink ID="ASPxHyperLink1" runat="server" CssClass="button add icon" 
                                                            CssPostfix="button" Font-Names="王漢宗細圓體繁" Font-Size="Small" Text="新增收銀機台">
                                                            <ClientSideEvents Click="function(s, e) {
	grid.AddNewRow();
}" />
                                                        </dx:ASPxHyperLink>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" 
                                                            ClientInstanceName="grid" DataSourceID="edsPOS_ecrdat" 
                                                            Font-Names="王漢宗細圓體繁" KeyFieldName="MsgId" 
                                                            OnCellEditorInitialize="ASPxGridView1_CellEditorInitialize" 
                                                            OnDetailRowExpandedChanged="ASPxGridView1_DetailRowExpandedChanged" 
                                                            OnDetailRowGetButtonVisibility="ASPxGridView1_DetailRowGetButtonVisibility" 
                                                            OnHeaderFilterFillItems="ASPxGridView1_HeaderFilterFillItems" 
                                                            OnHtmlDataCellPrepared="ASPxGridView1_HtmlDataCellPrepared" 
                                                            OnHtmlRowCreated="ASPxGridView1_HtmlRowCreated" 
                                                            OnInitNewRow="ASPxGridView1_InitNewRow" OnRowDeleted="ASPxGridView1_RowDeleted" 
                                                            OnRowInserted="ASPxGridView1_RowInserted" 
                                                            OnRowInserting="ASPxGridView1_RowInserting" 
                                                            OnRowUpdating="ASPxGridView1_RowUpdating" 
                                                            OnRowValidating="ASPxGridView1_RowValidating">
                                                            <Columns>
                                                                <dx:GridViewCommandColumn ShowInCustomizationForm="True" VisibleIndex="0">
                                                                    <EditButton Visible="True">
                                                                    </EditButton>
                                                                    <DeleteButton Visible="True">
                                                                    </DeleteButton>
                                                                </dx:GridViewCommandColumn>
                                                                <dx:GridViewDataTextColumn FieldName="MsgId" ShowInCustomizationForm="True" 
                                                                    Visible="False" VisibleIndex="1">
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="機號" FieldName="ECR_NO" 
                                                                    ShowInCustomizationForm="True" VisibleIndex="3">
                                                                    <EditFormCaptionStyle VerticalAlign="Top">
                                                                    </EditFormCaptionStyle>
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="作業別" FieldName="ECR_OPER" 
                                                                    ShowInCustomizationForm="True" Visible="False" VisibleIndex="4">
                                                                    <EditFormCaptionStyle VerticalAlign="Top">
                                                                    </EditFormCaptionStyle>
                                                                    <EditItemTemplate>
                                                                        <dx:ASPxComboBox ID="ASPxComboBox1" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                            Value='<%# Bind("ECR_OPER") %>' Width="100%">
                                                                            <Items>
                                                                                <dx:ListEditItem Text="公共台" Value="公共台" />
                                                                                <dx:ListEditItem Text="專櫃自收銀" Value="專櫃自收銀" />
                                                                                <dx:ListEditItem Text="美食餐廳" Value="美食餐廳" />
                                                                            </Items>
                                                                        </dx:ASPxComboBox>
                                                                    </EditItemTemplate>
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="店別" FieldName="ECR_FLOOR" 
                                                                    ShowInCustomizationForm="True" VisibleIndex="2">
                                                                    <Settings SortMode="DisplayText" AllowHeaderFilter="True" 
                                                                        HeaderFilterMode="CheckedList" />
                                                                    <FilterCellStyle Font-Names="王漢宗細圓體繁">
                                                                    </FilterCellStyle>
                                                                    <EditFormCaptionStyle VerticalAlign="Top">
                                                                    </EditFormCaptionStyle>
                                                                    <DataItemTemplate>
                                                                        <dx:ASPxLabel ID="labNO_STORE" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                            Text="labNO_STORE" Width="100%">
                                                                        </dx:ASPxLabel>
                                                                    </DataItemTemplate>
                                                                    <EditItemTemplate>
                                                                        <dx:ASPxComboBox ID="cbNO_STORE" runat="server" DataSourceID="edsPOS_storedat" 
                                                                            Font-Names="王漢宗細圓體繁" TextField="NM_STORE" TextFormatString="{0}; {1}; {2}" 
                                                                            Value='<%# Bind("ECR_FLOOR") %>' ValueField="NO_STORE" Width="100%">
                                                                            <Columns>
                                                                                <dx:ListBoxColumn Caption="店號" FieldName="NO_STORE" Name="NO_STORE" />
                                                                                <dx:ListBoxColumn Caption="店名" FieldName="NM_STORE" Name="NM_STORE" />
                                                                                <dx:ListBoxColumn Caption="店鋪類型" FieldName="KEY_TEXT" Name="KEY_TEXT" />
                                                                            </Columns>
                                                                        </dx:ASPxComboBox>
                                                                    </EditItemTemplate>
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                    <CellStyle HorizontalAlign="Center">
                                                                    </CellStyle>
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="說明" FieldName="ECR_MEMO" 
                                                                    ShowInCustomizationForm="True" VisibleIndex="5">
                                                                    <EditFormCaptionStyle VerticalAlign="Top">
                                                                    </EditFormCaptionStyle>
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="版本" FieldName="ECR_VER" 
                                                                    ShowInCustomizationForm="True" VisibleIndex="12">
                                                                    <EditFormCaptionStyle VerticalAlign="Top">
                                                                    </EditFormCaptionStyle>
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                    <CellStyle HorizontalAlign="Center">
                                                                    </CellStyle>
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="收銀機位址" FieldName="ECR_IP" 
                                                                    ShowInCustomizationForm="True" VisibleIndex="13">
                                                                    <EditFormCaptionStyle VerticalAlign="Top">
                                                                    </EditFormCaptionStyle>
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="廠編" FieldName="VNDRNO" 
                                                                    ShowInCustomizationForm="True" Visible="False" VisibleIndex="6">
                                                                    <EditFormCaptionStyle VerticalAlign="Top">
                                                                    </EditFormCaptionStyle>
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="廠名" FieldName="VNDRNAME" 
                                                                    ShowInCustomizationForm="True" Visible="False" VisibleIndex="7">
                                                                    <EditFormCaptionStyle VerticalAlign="Top">
                                                                    </EditFormCaptionStyle>
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="櫃編" FieldName="VNDRNO_SUB" 
                                                                    ShowInCustomizationForm="True" Visible="False" VisibleIndex="8">
                                                                    <EditFormCaptionStyle VerticalAlign="Top">
                                                                    </EditFormCaptionStyle>
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="櫃名" FieldName="SUBNAME" 
                                                                    ShowInCustomizationForm="True" Visible="False" VisibleIndex="9">
                                                                    <EditFormCaptionStyle VerticalAlign="Top">
                                                                    </EditFormCaptionStyle>
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="公司別" FieldName="COMCODE" 
                                                                    ShowInCustomizationForm="True" Visible="False" VisibleIndex="14">
                                                                    <EditFormCaptionStyle VerticalAlign="Top">
                                                                    </EditFormCaptionStyle>
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                    <CellStyle HorizontalAlign="Center">
                                                                    </CellStyle>
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="主機位址" FieldName="SERVICEHOST" 
                                                                    ShowInCustomizationForm="True" VisibleIndex="15">
                                                                    <EditFormCaptionStyle VerticalAlign="Top">
                                                                    </EditFormCaptionStyle>
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataDateColumn Caption="開機時間" FieldName="LOGIN_DT" 
                                                                    ShowInCustomizationForm="True" VisibleIndex="16">
                                                                    <PropertiesDateEdit DisplayFormatString="g" EditFormat="DateTime" 
                                                                        EditFormatString="g">
                                                                    </PropertiesDateEdit>
                                                                    <EditFormCaptionStyle VerticalAlign="Top">
                                                                    </EditFormCaptionStyle>
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataDateColumn>
                                                                <dx:GridViewDataDateColumn Caption="關機時間" FieldName="LOGOUT_DT" 
                                                                    ShowInCustomizationForm="True" VisibleIndex="17">
                                                                    <PropertiesDateEdit DisplayFormatString="g" EditFormat="DateTime" 
                                                                        EditFormatString="g">
                                                                    </PropertiesDateEdit>
                                                                    <EditFormCaptionStyle VerticalAlign="Top">
                                                                    </EditFormCaptionStyle>
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataDateColumn>
                                                                <dx:GridViewDataTextColumn Caption="建檔人員" FieldName="CREATE_ID" 
                                                                    ShowInCustomizationForm="True" VisibleIndex="18">
                                                                    <EditFormCaptionStyle VerticalAlign="Top">
                                                                    </EditFormCaptionStyle>
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataDateColumn Caption="建檔時間" FieldName="CREATE_DT" 
                                                                    ShowInCustomizationForm="True" VisibleIndex="19">
                                                                    <PropertiesDateEdit DisplayFormatString="g" EditFormat="DateTime" 
                                                                        EditFormatString="g">
                                                                    </PropertiesDateEdit>
                                                                    <EditFormCaptionStyle VerticalAlign="Top">
                                                                    </EditFormCaptionStyle>
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataDateColumn>
                                                                <dx:GridViewDataTextColumn Caption="密碼開放" FieldName="ECR_PW" 
                                                                    ShowInCustomizationForm="True" Visible="False" VisibleIndex="10">
                                                                    <EditFormCaptionStyle VerticalAlign="Top">
                                                                    </EditFormCaptionStyle>
                                                                    <DataItemTemplate>
                                                                        <dx:ASPxLabel ID="labECR_PW" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                            Text="labECR_PW" Width="100%">
                                                                        </dx:ASPxLabel>
                                                                    </DataItemTemplate>
                                                                    <EditItemTemplate>
                                                                        <dx:ASPxComboBox ID="ASPxComboBox3" runat="server" 
                                                                            DataSourceID="edsSYS_passwdoper" Font-Names="王漢宗細圓體繁" 
                                                                            Text='<%# Eval("ECR_PW") %>' TextField="CODE_TEXT" TextFormatString="{0}" 
                                                                            Value='<%# Bind("ECR_PW") %>' ValueField="CODE_ID" Width="100%">
                                                                            <Columns>
                                                                                <dx:ListBoxColumn Caption="說明" FieldName="CODE_TEXT" Name="CODE_TEXT" />
                                                                                <dx:ListBoxColumn Caption="值" FieldName="CODE_ID" Name="CODE_ID" />
                                                                            </Columns>
                                                                        </dx:ASPxComboBox>
                                                                    </EditItemTemplate>
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                    <CellStyle HorizontalAlign="Center">
                                                                    </CellStyle>
                                                                </dx:GridViewDataTextColumn>
                                                            </Columns>
                                                            <SettingsBehavior AllowFocusedRow="True" ConfirmDelete="True" />
                                                            <SettingsPager AlwaysShowPager="True" Position="TopAndBottom">
                                                            </SettingsPager>
                                                            <SettingsEditing EditFormColumnCount="1" />
                                                            <SettingsDetail AllowOnlyOneMasterRowExpanded="True" ShowDetailButtons="False" 
                                                                ShowDetailRow="True" />
                                                            <SettingsPopup>
                                                                <HeaderFilter Height="300px" />
                                                            </SettingsPopup>
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
                                                                    <dx:ASPxRoundPanel ID="ASPxRoundPanel2" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                        HeaderText="美食餐廳專用功能設定" HorizontalAlign="Center" Theme="DevEx" Width="500px">
                                                                        <PanelCollection>
                                                                            <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                                                                                <dx:ASPxGridView ID="ASPxGridView2" runat="server" AutoGenerateColumns="False" 
                                                                                    DataSourceID="edsPOS_foodfoundation" Font-Names="王漢宗細圓體繁" KeyFieldName="ECR_NO" 
                                                                                    OnHtmlDataCellPrepared="ASPxGridView2_HtmlDataCellPrepared" 
                                                                                    OnRowValidating="ASPxGridView2_RowValidating">
                                                                                    <Columns>
                                                                                        <dx:GridViewCommandColumn ShowInCustomizationForm="True" VisibleIndex="0">
                                                                                            <EditButton Visible="True">
                                                                                            </EditButton>
                                                                                        </dx:GridViewCommandColumn>
                                                                                        <dx:GridViewDataTextColumn FieldName="ECR_NO" ReadOnly="True" 
                                                                                            ShowInCustomizationForm="True" Visible="False" VisibleIndex="1">
                                                                                            <HeaderStyle HorizontalAlign="Center" />
                                                                                            <CellStyle HorizontalAlign="Center">
                                                                                            </CellStyle>
                                                                                        </dx:GridViewDataTextColumn>
                                                                                        <dx:GridViewDataTextColumn Caption="是否設定桌號" FieldName="YN_TABLENUM" 
                                                                                            ShowInCustomizationForm="True" VisibleIndex="2">
                                                                                            <DataItemTemplate>
                                                                                                <dx:ASPxLabel ID="labYN_TABLENUM" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                                                    Text="ASPxLabel" Width="100%">
                                                                                                </dx:ASPxLabel>
                                                                                            </DataItemTemplate>
                                                                                            <EditItemTemplate>
                                                                                                <dx:ASPxComboBox ID="cbYN_TABLENUM" runat="server" DataSourceID="edsSYS_YNflag" 
                                                                                                    Font-Names="王漢宗細圓體繁" Text='<%# Eval("YN_TABLENUM") %>' TextField="CODE_TEXT" 
                                                                                                    TextFormatString="{0}" Value='<%# Bind("YN_TABLENUM") %>' ValueField="CODE_ID" 
                                                                                                    Width="100%">
                                                                                                    <Columns>
                                                                                                        <dx:ListBoxColumn Caption="說明" FieldName="CODE_TEXT" Name="CODE_TEXT" />
                                                                                                        <dx:ListBoxColumn Caption="值" FieldName="CODE_ID" Name="CODE_ID" />
                                                                                                    </Columns>
                                                                                                </dx:ASPxComboBox>
                                                                                            </EditItemTemplate>
                                                                                            <HeaderStyle HorizontalAlign="Center" />
                                                                                            <CellStyle HorizontalAlign="Center">
                                                                                            </CellStyle>
                                                                                        </dx:GridViewDataTextColumn>
                                                                                        <dx:GridViewDataTextColumn Caption="是否內用外帶" FieldName="YN_BUYTYPE" 
                                                                                            ShowInCustomizationForm="True" VisibleIndex="3">
                                                                                            <DataItemTemplate>
                                                                                                <dx:ASPxLabel ID="labYN_BUYTYPE" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                                                    Text="ASPxLabel" Width="100%">
                                                                                                </dx:ASPxLabel>
                                                                                            </DataItemTemplate>
                                                                                            <EditItemTemplate>
                                                                                                <dx:ASPxComboBox ID="cbYN_BUYTYPE" runat="server" DataSourceID="edsSYS_YNflag" 
                                                                                                    Font-Names="王漢宗細圓體繁" Text='<%# Eval("YN_BUYTYPE") %>' TextField="CODE_TEXT" 
                                                                                                    TextFormatString="{0}" Value='<%# Bind("YN_BUYTYPE") %>' ValueField="CODE_ID" 
                                                                                                    Width="100%">
                                                                                                    <Columns>
                                                                                                        <dx:ListBoxColumn Caption="說明" FieldName="CODE_TEXT" Name="CODE_TEXT" />
                                                                                                        <dx:ListBoxColumn Caption="值" FieldName="CODE_ID" Name="CODE_ID" />
                                                                                                    </Columns>
                                                                                                </dx:ASPxComboBox>
                                                                                            </EditItemTemplate>
                                                                                            <HeaderStyle HorizontalAlign="Center" />
                                                                                            <CellStyle HorizontalAlign="Center">
                                                                                            </CellStyle>
                                                                                        </dx:GridViewDataTextColumn>
                                                                                        <dx:GridViewDataTextColumn Caption="是否廚房印表" FieldName="YN_PRN" 
                                                                                            ShowInCustomizationForm="True" VisibleIndex="4">
                                                                                            <DataItemTemplate>
                                                                                                <dx:ASPxLabel ID="labYN_PRN" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                                                    Text="ASPxLabel" Width="100%">
                                                                                                </dx:ASPxLabel>
                                                                                            </DataItemTemplate>
                                                                                            <EditItemTemplate>
                                                                                                <dx:ASPxComboBox ID="cbYN_PRN" runat="server" DataSourceID="edsSYS_YNflag" 
                                                                                                    Font-Names="王漢宗細圓體繁" Text='<%# Eval("YN_PRN") %>' TextField="CODE_TEXT" 
                                                                                                    TextFormatString="{0}" Value='<%# Bind("YN_PRN") %>' ValueField="CODE_ID" 
                                                                                                    Width="100%">
                                                                                                    <Columns>
                                                                                                        <dx:ListBoxColumn Caption="說明" FieldName="CODE_TEXT" Name="CODE_TEXT" />
                                                                                                        <dx:ListBoxColumn Caption="值" FieldName="CODE_ID" Name="CODE_ID" />
                                                                                                    </Columns>
                                                                                                </dx:ASPxComboBox>
                                                                                            </EditItemTemplate>
                                                                                            <HeaderStyle HorizontalAlign="Center" />
                                                                                            <CellStyle HorizontalAlign="Center">
                                                                                            </CellStyle>
                                                                                        </dx:GridViewDataTextColumn>
                                                                                        <dx:GridViewDataTextColumn Caption="印表機周邊" FieldName="PRNDEV" 
                                                                                            ShowInCustomizationForm="True" VisibleIndex="5">
                                                                                            <EditItemTemplate>
                                                                                                <dx:ASPxComboBox ID="cbPRNDEV" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                                                    Value='<%# Bind("PRNDEV") %>' Width="100%">
                                                                                                    <Items>
                                                                                                        <dx:ListEditItem Text="COM1" Value="COM1" />
                                                                                                        <dx:ListEditItem Text="COM2" Value="COM2" />
                                                                                                        <dx:ListEditItem Text="COM3" Value="COM3" />
                                                                                                        <dx:ListEditItem Text="COM4" Value="COM4" />
                                                                                                        <dx:ListEditItem Text="COM5" Value="COM5" />
                                                                                                        <dx:ListEditItem Text="COM6" Value="COM6" />
                                                                                                        <dx:ListEditItem Text="COM7" Value="COM7" />
                                                                                                        <dx:ListEditItem Text="COM8" Value="COM8" />
                                                                                                        <dx:ListEditItem Text="LPT1" Value="LPT1" />
                                                                                                        <dx:ListEditItem Text="LPT2" Value="LPT2" />
                                                                                                    </Items>
                                                                                                </dx:ASPxComboBox>
                                                                                            </EditItemTemplate>
                                                                                            <HeaderStyle HorizontalAlign="Center" />
                                                                                            <CellStyle HorizontalAlign="Center">
                                                                                            </CellStyle>
                                                                                        </dx:GridViewDataTextColumn>
                                                                                        <dx:GridViewDataTextColumn Caption="列印份數" FieldName="PRNPAGES" 
                                                                                            ShowInCustomizationForm="True" VisibleIndex="6">
                                                                                            <HeaderStyle HorizontalAlign="Center" />
                                                                                            <CellStyle HorizontalAlign="Center">
                                                                                            </CellStyle>
                                                                                        </dx:GridViewDataTextColumn>
                                                                                    </Columns>
                                                                                    <SettingsEditing EditFormColumnCount="1" />
                                                                                    <SettingsText CommandCancel="取消" CommandEdit="修改" CommandUpdate="更新" />
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
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                        <br />
                                    </dx:PanelContent>
                                </PanelCollection>
                            </dx:ASPxPanel>
                            <br />
                        </div>
                        <br />
                        <asp:EntityDataSource ID="edsPOS_ecrdat" runat="server" 
                            ConnectionString="name=NEWPMSEntities" DefaultContainerName="NEWPMSEntities" 
                            EnableDelete="True" EnableFlattening="False" EnableInsert="True" 
                            EnableUpdate="True" EntitySetName="POS_ecrdat" OrderBy="it.ECR_FLOOR,it.ECR_NO
">
                        </asp:EntityDataSource>
                        <asp:EntityDataSource ID="edsSYS_passwdoper" runat="server" 
                            ConnectionString="name=NEWPMSEntities" DefaultContainerName="NEWPMSEntities" 
                            EnableFlattening="False" EntitySetName="SYS_passwdoper">
                        </asp:EntityDataSource>
                        <asp:EntityDataSource ID="edsSYS_vndrdat" runat="server" 
                            ConnectionString="name=NEWPMSEntities" DefaultContainerName="NEWPMSEntities" 
                            EnableFlattening="False" EntitySetName="SYS_vndrdat" EntityTypeFilter="" 
                            OrderBy="it.VNDRNO" Select="">
                        </asp:EntityDataSource>
                        <asp:EntityDataSource ID="edsPOS_foodfoundation" runat="server" 
                            ConnectionString="name=NEWPMSEntities" DefaultContainerName="NEWPMSEntities" 
                            EnableFlattening="False" EnableUpdate="True" 
                            EntitySetName="POS_foodfoundation" Where="it.ECR_NO=@ECR_NO">
                            <WhereParameters>
                                <asp:QueryStringParameter Name="ECR_NO" Type="String" />
                            </WhereParameters>
                        </asp:EntityDataSource>
                        <asp:EntityDataSource ID="edsSYS_YNflag" runat="server" 
                            ConnectionString="name=NEWPMSEntities" DefaultContainerName="NEWPMSEntities" 
                            EnableFlattening="False" EntitySetName="SYS_YNflag">
                        </asp:EntityDataSource>
                        <asp:EntityDataSource ID="edsPOS_storedat" runat="server" 
                            ConnectionString="name=NEWPMSEntities" DefaultContainerName="NEWPMSEntities" 
                            EnableFlattening="False" EntitySetName="vPOS_storedat" OrderBy="it.IDX" 
                            EntityTypeFilter="" Select="">
                        </asp:EntityDataSource>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:NEWPMSConnectionString %>" 
                            ProviderName="<%$ ConnectionStrings:NEWPMSConnectionString.ProviderName %>">
                        </asp:SqlDataSource>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:TabPage>
        </TabPages>
    </dx:ASPxPageControl>
</asp:Content>

