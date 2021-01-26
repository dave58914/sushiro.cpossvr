<%@ page title="" language="C#" masterpagefile="~/MainPage.master" autoeventwireup="true" inherits="ECR_PosKeySetup, App_Web_ecr_poskeysetup.aspx.cdcab7d2" %>

<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxTabControl" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxClasses" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxRoundPanel" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPanel" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.ASPxGridView.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxEditors.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPopupControl" tagprefix="dx" %>

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
            width: 100%;
        }
        .style11
        {
        }
        .style12
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script type="text/javascript">
        function OnPopUpPLU(ClientID) {
            PLU_ID.SetText('');
            ITEM_NAME.SetText('');
            gridPLU.SetFocusedRowIndex(-1);
            clientPopupPLU.ShowAtElementByID(ClientID);
        }
        function OnCloseUpPLU1() {
            var Value1 = PLU_ID.GetValue();
            tb02.SetText(Value1);
            var Value2 = ITEM_NAME.GetValue();
            tb01.SetText(Value2);
            clientPopupPLU.Hide();
        }
        function OnCloseUpPLU2() {
            clientPopupPLU.Hide();
        }
        function OnGridFocusedRowChanged2PLU() {
            gridPLU.GetRowValues(gridPLU.GetFocusedRowIndex(), 'PLU_ID;ITEM_NAME', OnGetRowValues2PLU);
        }
        function OnGetRowValues2PLU(values) {
            PLU_ID.SetText(values[0]);
            ITEM_NAME.SetText(values[1]);
        }
        function OnGridFocusedRowChanged2ClassNo() {
            grid2.GetRowValues(grid2.GetFocusedRowIndex(), 'CLASS_NO;CLASS_NAME', OnGetRowValues2ClassNo);
        }
        function OnGetRowValues2ClassNo(values) {
            carNO.SetText(values[0]);
            carBRAND.SetText(values[1]);
        }
        function OnPopUp(ClientID) {
            carNO.SetText('');
            carBRAND.SetText('');
            grid2.SetFocusedRowIndex(-1);
            clientPopup.ShowAtElementByID(ClientID);
        }
        function OnCloseUp1() {
            var Value1 = carNO.GetValue();
            tb02.SetText(Value1);
            var Value2 = carBRAND.GetValue();
            tb01.SetText(Value2);
            clientPopup.Hide();
        }
        function OnCloseUp2() {
            clientPopup.Hide();
        }
    </script>
    <dx:ASPxPageControl ID="ASPxPageControl1" runat="server" ActiveTabIndex="0" 
        Font-Names="王漢宗細圓體繁" Font-Size="Small" TabPosition="Left" Width="100%" 
        Height="800px">
        <TabPages>
            <dx:TabPage Name="Tab01" Text="管理">
                <ContentCollection>
                    <dx:ContentControl runat="server" SupportsDisabledAttribute="True">
                        <div align="center">
                        <br />
                        <br />
                            <dx:ASPxPanel ID="ASPxPanel1" runat="server" RenderMode="Table" Width="900px">
                                <PanelCollection>
                                    <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                                        <div align="left">
                                            <table class="style12">
                                                <tr>
                                                    <td>
                                                        <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" 
                                                            DataSourceID="edsPOS_ecrdat" Font-Names="王漢宗細圓體繁" Font-Size="Small" 
                                                            KeyFieldName="MsgId" 
                                                            OnDetailRowExpandedChanged="ASPxGridView1_DetailRowExpandedChanged" 
                                                            OnHeaderFilterFillItems="ASPxGridView1_HeaderFilterFillItems" 
                                                            OnHtmlRowCreated="ASPxGridView1_HtmlRowCreated" 
                                                            OnHtmlDataCellPrepared="ASPxGridView1_HtmlDataCellPrepared" Width="100%">
                                                            <ClientSideEvents EndCallback="function(s, e) {
	if (s.cpUpdatedMessage) 
	{
    	alert(s.cpUpdatedMessage);
        delete s.cpUpdatedMessage;
	}
}" />
                                                            <Columns>
                                                                <dx:GridViewCommandColumn ShowInCustomizationForm="True" VisibleIndex="0" 
                                                                    Visible="False">
                                                                </dx:GridViewCommandColumn>
                                                                <dx:GridViewDataTextColumn FieldName="MsgId" ShowInCustomizationForm="True" 
                                                                    Visible="False" VisibleIndex="1">
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="機號" FieldName="ECR_NO" 
                                                                    ShowInCustomizationForm="True" VisibleIndex="4" Width="100px">
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                    <CellStyle HorizontalAlign="Center">
                                                                    </CellStyle>
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="作業別" FieldName="ECR_OPER" 
                                                                    ShowInCustomizationForm="True" Visible="False" VisibleIndex="5">
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="店別" FieldName="ECR_FLOOR" 
                                                                    ShowInCustomizationForm="True" VisibleIndex="3" Width="100px">
                                                                    <Settings AllowHeaderFilter="True" HeaderFilterMode="CheckedList" />
                                                                    <DataItemTemplate>
                                                                        <dx:ASPxLabel ID="labNO_STORE" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                            Text="labNO_STORE" Width="100%">
                                                                        </dx:ASPxLabel>
                                                                    </DataItemTemplate>
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                    <CellStyle HorizontalAlign="Center">
                                                                    </CellStyle>
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="說明" FieldName="ECR_MEMO" 
                                                                    ShowInCustomizationForm="True" VisibleIndex="6">
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="版本" FieldName="ECR_VER" 
                                                                    ShowInCustomizationForm="True" Visible="False" VisibleIndex="11">
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="收銀機位址" FieldName="ECR_IP" 
                                                                    ShowInCustomizationForm="True" Visible="False" VisibleIndex="12">
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="廠編" FieldName="VNDRNO" 
                                                                    ShowInCustomizationForm="True" Visible="False" VisibleIndex="7">
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="廠名" FieldName="VNDRNAME" 
                                                                    ShowInCustomizationForm="True" Visible="False" VisibleIndex="8">
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="櫃編" FieldName="VNDRNO_SUB" 
                                                                    ShowInCustomizationForm="True" Visible="False" VisibleIndex="9">
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="櫃名" FieldName="SUBNAME" 
                                                                    ShowInCustomizationForm="True" Visible="False" VisibleIndex="10">
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="公司別" FieldName="COMCODE" 
                                                                    ShowInCustomizationForm="True" Visible="False" VisibleIndex="13">
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="主機位址" FieldName="SERVICEHOST" 
                                                                    ShowInCustomizationForm="True" Visible="False" VisibleIndex="14">
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataDateColumn Caption="登入時間" FieldName="LOGIN_DT" 
                                                                    ShowInCustomizationForm="True" VisibleIndex="15">
                                                                    <PropertiesDateEdit DisplayFormatString="F" EditFormat="DateTime">
                                                                    </PropertiesDateEdit>
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataDateColumn>
                                                                <dx:GridViewDataDateColumn Caption="登出時間" FieldName="LOGOUT_DT" 
                                                                    ShowInCustomizationForm="True" VisibleIndex="16">
                                                                    <PropertiesDateEdit DisplayFormatString="F" EditFormat="DateTime">
                                                                    </PropertiesDateEdit>
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataDateColumn>
                                                                <dx:GridViewDataTextColumn Caption="建檔人員" FieldName="CREATE_ID" 
                                                                    ShowInCustomizationForm="True" Visible="False" VisibleIndex="17">
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataDateColumn Caption="建檔時間" FieldName="CREATE_DT" 
                                                                    ShowInCustomizationForm="True" Visible="False" VisibleIndex="18">
                                                                    <PropertiesDateEdit DisplayFormatString="F" EditFormat="DateTime">
                                                                    </PropertiesDateEdit>
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataDateColumn>
                                                                <dx:GridViewDataTextColumn Name="POST" ShowInCustomizationForm="True" 
                                                                    VisibleIndex="19" Visible="False">
                                                                    <DataItemTemplate>
                                                                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                                                            <ContentTemplate>
                                                                                <dx:ASPxButton ID="btnDO" runat="server" AllowFocus="False" CssClass="button" 
                                                                                    CssPostfix="button" Font-Names="王漢宗細圓體繁" Font-Size="Small" 
                                                                                    onclick="btnDO_Click" Text="資料下傳至收銀機" ToolTip="資料下傳至收銀機" Width="170px">
                                                                                    <ClientSideEvents Click="function(s, e) {
e.processOnServer = confirm('執行該作業?');
}" />
                                                                                </dx:ASPxButton>
                                                                            </ContentTemplate>
                                                                        </asp:UpdatePanel>
                                                                    </DataItemTemplate>
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                            </Columns>
                                                            <SettingsBehavior AllowFocusedRow="True" />
                                                            <SettingsPager AlwaysShowPager="True" PageSize="20" Position="TopAndBottom">
                                                            </SettingsPager>
                                                            <SettingsDetail AllowOnlyOneMasterRowExpanded="True" ShowDetailRow="True" />
                                                            <SettingsPopup>
                                                                <HeaderFilter Height="300px" ResizingMode="Postponed" />
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
                                                                    <dx:ASPxRoundPanel ID="ASPxRoundPanel2" runat="server" 
                                                                        CssFilePath="~/App_Themes/DevEx/{0}/styles.css" CssPostfix="DevEx" 
                                                                        EnableDefaultAppearance="False" Font-Names="王漢宗細圓體繁" Font-Size="Small" 
                                                                        GroupBoxCaptionOffsetX="6px" GroupBoxCaptionOffsetY="-19px" HeaderText="功能鍵位" 
                                                                        SpriteCssFilePath="~/App_Themes/DevEx/{0}/sprite.css" Theme="RedWine" 
                                                                        Width="800px">
                                                                        <ContentPaddings PaddingBottom="10px" PaddingLeft="7px" PaddingRight="11px" 
                                                                            PaddingTop="10px" />
                                                                        <HeaderStyle>
                                                                        <Paddings PaddingBottom="6px" PaddingLeft="7px" PaddingRight="11px" 
                                                                            PaddingTop="1px" />
                                                                        </HeaderStyle>
                                                                        <PanelCollection>
                                                                            <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                                                                                <dx:ASPxGridView ID="ASPxGridView2" runat="server" AutoGenerateColumns="False" 
                                                                                    DataSourceID="EntityDataSource21" Font-Names="王漢宗細圓體繁" Font-Size="Small" 
                                                                                    KeyFieldName="MsgId" 
                                                                                    OnCellEditorInitialize="ASPxGridView2_CellEditorInitialize" 
                                                                                    OnHtmlDataCellPrepared="ASPxGridView2_HtmlDataCellPrepared" 
                                                                                    OnHtmlRowCreated="ASPxGridView2_HtmlRowCreated" 
                                                                                    OnRowUpdating="ASPxGridView2_RowUpdating" 
                                                                                    OnRowValidating="ASPxGridView2_RowValidating" Width="100%">
                                                                                    <Columns>
                                                                                        <dx:GridViewCommandColumn ShowInCustomizationForm="True" VisibleIndex="0">
                                                                                            <EditButton Visible="True">
                                                                                            </EditButton>
                                                                                        </dx:GridViewCommandColumn>
                                                                                        <dx:GridViewDataTextColumn FieldName="MsgId" ReadOnly="True" 
                                                                                            ShowInCustomizationForm="True" Visible="False" VisibleIndex="1">
                                                                                            <HeaderStyle HorizontalAlign="Center" />
                                                                                        </dx:GridViewDataTextColumn>
                                                                                        <dx:GridViewDataTextColumn FieldName="ECR_NO" ShowInCustomizationForm="True" 
                                                                                            Visible="False" VisibleIndex="4">
                                                                                            <HeaderStyle HorizontalAlign="Center" />
                                                                                        </dx:GridViewDataTextColumn>
                                                                                        <dx:GridViewDataTextColumn FieldName="KEY_LEVEL" ShowInCustomizationForm="True" 
                                                                                            Visible="False" VisibleIndex="5">
                                                                                            <HeaderStyle HorizontalAlign="Center" />
                                                                                        </dx:GridViewDataTextColumn>
                                                                                        <dx:GridViewDataTextColumn Caption="鍵位名稱" FieldName="BTNNAME" 
                                                                                            ShowInCustomizationForm="True" VisibleIndex="6" Width="60px">
                                                                                            <EditFormCaptionStyle HorizontalAlign="Right" VerticalAlign="Top">
                                                                                            </EditFormCaptionStyle>
                                                                                            <HeaderStyle HorizontalAlign="Center" />
                                                                                            <CellStyle HorizontalAlign="Center">
                                                                                            </CellStyle>
                                                                                        </dx:GridViewDataTextColumn>
                                                                                        <dx:GridViewDataComboBoxColumn Caption="鍵位型態" FieldName="KEY_TYPE" 
                                                                                            ShowInCustomizationForm="True" VisibleIndex="7" Width="60px">
                                                                                            <PropertiesComboBox DataSourceID="edsSYS_keytype" TextField="CODE_TEXT" 
                                                                                                TextFormatString="{0}" ValueField="CODE_ID">
                                                                                                <Columns>
                                                                                                    <dx:ListBoxColumn Caption="說明" FieldName="CODE_TEXT" Name="CODE_TEXT" />
                                                                                                    <dx:ListBoxColumn Caption="值" FieldName="CODE_ID" Name="CODE_ID" />
                                                                                                </Columns>
                                                                                            </PropertiesComboBox>
                                                                                            <EditFormCaptionStyle HorizontalAlign="Right" VerticalAlign="Top">
                                                                                            </EditFormCaptionStyle>
                                                                                            <DataItemTemplate>
                                                                                                <dx:ASPxLabel ID="labKEY_TYPE" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                                                    Text="labKEY_TYPE" Width="100%">
                                                                                                </dx:ASPxLabel>
                                                                                            </DataItemTemplate>
                                                                                            <HeaderStyle HorizontalAlign="Center" />
                                                                                            <CellStyle HorizontalAlign="Center">
                                                                                            </CellStyle>
                                                                                        </dx:GridViewDataComboBoxColumn>
                                                                                        <dx:GridViewDataComboBoxColumn Caption="鍵位功能" FieldName="KEY_FUN" 
                                                                                            ShowInCustomizationForm="True" VisibleIndex="8" Width="150px">
                                                                                            <PropertiesComboBox DataSourceID="edsPOS_keyfunc" TextField="FUNDESC" 
                                                                                                TextFormatString="{0}" ValueField="FUNCODE">
                                                                                                <Columns>
                                                                                                    <dx:ListBoxColumn Caption="說明" FieldName="FUNDESC" Name="FUNDESC" />
                                                                                                    <dx:ListBoxColumn Caption="值" FieldName="FUNCODE" Name="FUNCODE" />
                                                                                                </Columns>
                                                                                            </PropertiesComboBox>
                                                                                            <EditFormCaptionStyle HorizontalAlign="Right">
                                                                                            </EditFormCaptionStyle>
                                                                                            <DataItemTemplate>
                                                                                                <dx:ASPxLabel ID="labKEYFUNC" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                                                    Text="labKEYFUNC" Width="100%">
                                                                                                </dx:ASPxLabel>
                                                                                            </DataItemTemplate>
                                                                                            <HeaderStyle HorizontalAlign="Center" />
                                                                                            <CellStyle HorizontalAlign="Center">
                                                                                            </CellStyle>
                                                                                        </dx:GridViewDataComboBoxColumn>
                                                                                        <dx:GridViewDataTextColumn Caption="值" FieldName="KEY_DATA1" 
                                                                                            ShowInCustomizationForm="True" VisibleIndex="9" Width="150px">
                                                                                            <EditFormCaptionStyle HorizontalAlign="Right">
                                                                                            </EditFormCaptionStyle>
                                                                                            <EditItemTemplate>
                                                                                                <dx:ASPxTextBox ID="tbKEY_DATA1" runat="server" ClientInstanceName="tb02" 
                                                                                                    Font-Names="王漢宗細圓體繁" Value='<%# Bind("KEY_DATA1") %>' Width="100%">
                                                                                                </dx:ASPxTextBox>
                                                                                                <dx:ASPxPanel ID="ASPxPanel3" runat="server" RenderMode="Table" Width="200px">
                                                                                                    <PanelCollection>
                                                                                                        <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                                                                                                            <table style="width:100%;">
                                                                                                                <tr>
                                                                                                                    <td>
                                                                                                                        <dx:ASPxHyperLink ID="ASPxHyperLink2" runat="server" 
                                                                                                                            CssClass="button search icon" CssPostfix="button" Font-Names="王漢宗細圓體繁" 
                                                                                                                            Font-Size="Small" OnLoad="ASPxHyperLink2_Load" Text="分類" Width="75px">
                                                                                                                        </dx:ASPxHyperLink>
                                                                                                                    </td>
                                                                                                                    <td>
                                                                                                                        <dx:ASPxHyperLink ID="ASPxHyperLink3" runat="server" 
                                                                                                                            CssClass="button search icon" CssPostfix="button" Font-Names="王漢宗細圓體繁" 
                                                                                                                            Font-Size="Small" OnLoad="ASPxHyperLink3_Load" Text="商品" Width="75px">
                                                                                                                        </dx:ASPxHyperLink>
                                                                                                                    </td>
                                                                                                                </tr>
                                                                                                            </table>
                                                                                                        </dx:PanelContent>
                                                                                                    </PanelCollection>
                                                                                                </dx:ASPxPanel>
                                                                                            </EditItemTemplate>
                                                                                            <HeaderStyle HorizontalAlign="Center" />
                                                                                        </dx:GridViewDataTextColumn>
                                                                                        <dx:GridViewDataTextColumn FieldName="KEY_DATATYPE1" 
                                                                                            ShowInCustomizationForm="True" Visible="False" VisibleIndex="10">
                                                                                            <HeaderStyle HorizontalAlign="Center" />
                                                                                        </dx:GridViewDataTextColumn>
                                                                                        <dx:GridViewDataTextColumn FieldName="KEY_DATA2" ShowInCustomizationForm="True" 
                                                                                            Visible="False" VisibleIndex="11">
                                                                                            <HeaderStyle HorizontalAlign="Center" />
                                                                                        </dx:GridViewDataTextColumn>
                                                                                        <dx:GridViewDataTextColumn FieldName="KEY_DATATYPE2" 
                                                                                            ShowInCustomizationForm="True" Visible="False" VisibleIndex="12">
                                                                                            <HeaderStyle HorizontalAlign="Center" />
                                                                                        </dx:GridViewDataTextColumn>
                                                                                        <dx:GridViewDataTextColumn Caption="顯示" FieldName="KEY_MODE" 
                                                                                            ShowInCustomizationForm="True" VisibleIndex="13" Width="150px">
                                                                                            <EditFormCaptionStyle HorizontalAlign="Right" VerticalAlign="Top">
                                                                                            </EditFormCaptionStyle>
                                                                                            <EditItemTemplate>
                                                                                                <dx:ASPxTextBox ID="tbKEY_MODE" runat="server" ClientInstanceName="tb01" 
                                                                                                    Font-Names="王漢宗細圓體繁" Value='<%# Bind("KEY_MODE") %>' Width="100%">
                                                                                                </dx:ASPxTextBox>
                                                                                            </EditItemTemplate>
                                                                                            <HeaderStyle HorizontalAlign="Center" />
                                                                                        </dx:GridViewDataTextColumn>
                                                                                        <dx:GridViewDataTextColumn FieldName="KEY_ICON" ShowInCustomizationForm="True" 
                                                                                            Visible="False" VisibleIndex="14">
                                                                                            <HeaderStyle HorizontalAlign="Center" />
                                                                                        </dx:GridViewDataTextColumn>
                                                                                        <dx:GridViewDataTextColumn FieldName="KEY_ICONFG" 
                                                                                            ShowInCustomizationForm="True" Visible="False" VisibleIndex="15">
                                                                                            <HeaderStyle HorizontalAlign="Center" />
                                                                                        </dx:GridViewDataTextColumn>
                                                                                        <dx:GridViewDataComboBoxColumn Caption="使用別" FieldName="KEY_STATE" 
                                                                                            ShowInCustomizationForm="True" VisibleIndex="17">
                                                                                            <PropertiesComboBox DataSourceID="edsSYS_ONOFF" TextField="CODE_TEXT" 
                                                                                                TextFormatString="{0}" ValueField="CODE_ID">
                                                                                                <Columns>
                                                                                                    <dx:ListBoxColumn Caption="說明" FieldName="CODE_TEXT" Name="CODE_TEXT" />
                                                                                                    <dx:ListBoxColumn Caption="值" FieldName="CODE_ID" Name="CODE_ID" />
                                                                                                </Columns>
                                                                                            </PropertiesComboBox>
                                                                                            <EditFormCaptionStyle HorizontalAlign="Right" VerticalAlign="Top">
                                                                                            </EditFormCaptionStyle>
                                                                                            <DataItemTemplate>
                                                                                                <dx:ASPxLabel ID="labKEY_STATE" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                                                    Text="labKEY_STATE" Width="100%">
                                                                                                </dx:ASPxLabel>
                                                                                            </DataItemTemplate>
                                                                                            <HeaderStyle HorizontalAlign="Center" />
                                                                                            <CellStyle HorizontalAlign="Center">
                                                                                            </CellStyle>
                                                                                        </dx:GridViewDataComboBoxColumn>
                                                                                        <dx:GridViewDataTextColumn FieldName="CREATE_ID" ShowInCustomizationForm="True" 
                                                                                            Visible="False" VisibleIndex="18">
                                                                                            <HeaderStyle HorizontalAlign="Center" />
                                                                                        </dx:GridViewDataTextColumn>
                                                                                        <dx:GridViewDataDateColumn FieldName="CREATE_DT" ShowInCustomizationForm="True" 
                                                                                            Visible="False" VisibleIndex="16">
                                                                                            <HeaderStyle HorizontalAlign="Center" />
                                                                                        </dx:GridViewDataDateColumn>
                                                                                        <dx:GridViewDataTextColumn FieldName="comcode" ShowInCustomizationForm="True" 
                                                                                            Visible="False" VisibleIndex="3">
                                                                                        </dx:GridViewDataTextColumn>
                                                                                        <dx:GridViewDataTextColumn FieldName="ECR_SERNO" ShowInCustomizationForm="True" 
                                                                                            Visible="False" VisibleIndex="2">
                                                                                        </dx:GridViewDataTextColumn>
                                                                                    </Columns>
                                                                                    <SettingsBehavior AllowFocusedRow="True" ConfirmDelete="True" />
                                                                                    <SettingsPager AlwaysShowPager="True" Position="TopAndBottom">
                                                                                    </SettingsPager>
                                                                                    <SettingsEditing EditFormColumnCount="1" />
                                                                                    <Styles>
                                                                                        <AlternatingRow Enabled="True">
                                                                                        </AlternatingRow>
                                                                                    </Styles>
                                                                                    <StylesEditors>
                                                                                        <TextBox Font-Names="王漢宗細圓體繁">
                                                                                        </TextBox>
                                                                                    </StylesEditors>
                                                                                </dx:ASPxGridView>
                                                                                <br />
                                                                            </dx:PanelContent>
                                                                        </PanelCollection>
                                                                    </dx:ASPxRoundPanel>
                                                                </DetailRow>
                                                            </Templates>
                                                        </dx:ASPxGridView>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                            </table>
                                        </div>
                                    </dx:PanelContent>
                                </PanelCollection>
                            </dx:ASPxPanel>
                            <br />
                            <br />
                            <br />
                            <br />
                            <dx:ASPxPopupControl ID="ASPxPopupControl1" runat="server" AllowDragging="True" 
                                ClientInstanceName="clientPopup" CloseAction="CloseButton" Font-Names="王漢宗細圓體繁" 
                                Font-Size="Small" HeaderText="分類" ShowShadow="False" 
                                Theme="Office2010Silver" Width="400px" CssClass="pie_radius">
                                <HeaderStyle HorizontalAlign="Left" />
                                <ContentCollection>
                                    <dx:PopupControlContentControl runat="server" SupportsDisabledAttribute="True">
                                        <dx:ASPxPanel ID="ASPxPanel2" runat="server" RenderMode="Table" Width="100%">
                                            <PanelCollection>
                                                <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                                                    <div align="center">
                                                        <table class="style12">
                                                            <tr>
                                                                <td align="left">
                                                                    <dx:ASPxTextBox ID="carNO" runat="server" ClientInstanceName="carNO" 
                                                                        Font-Names="王漢宗細圓體繁" Font-Size="Small" Height="25px" ReadOnly="True" 
                                                                        Text="carNO" Width="100%">
                                                                        <ReadOnlyStyle BackColor="#CCCCCC">
                                                                        </ReadOnlyStyle>
                                                                    </dx:ASPxTextBox>
                                                                    <dx:ASPxGridView ID="ASPxGridView7" runat="server" AutoGenerateColumns="False" 
                                                                        ClientInstanceName="grid2" DataSourceID="edsSTK_CLASS" 
                                                                        Font-Names="王漢宗細圓體繁" KeyFieldName="MsgId" 
                                                                        OnHtmlDataCellPrepared="ASPxGridView2_HtmlDataCellPrepared" 
                                                                        OnHtmlRowCreated="ASPxGridView7_HtmlRowCreated" Width="250px">
                                                                        <ClientSideEvents FocusedRowChanged="function(s, e) {
	OnGridFocusedRowChanged2ClassNo();
}
" />
                                                                        <Columns>
                                                                            <dx:GridViewDataTextColumn FieldName="MsgId" ReadOnly="True" 
                                                                                ShowInCustomizationForm="True" Visible="False" VisibleIndex="0">
                                                                                <HeaderStyle HorizontalAlign="Center" />
                                                                            </dx:GridViewDataTextColumn>
                                                                            <dx:GridViewDataTextColumn Caption="商品分類" FieldName="CLASS_NO" 
                                                                                ShowInCustomizationForm="True" VisibleIndex="1">
                                                                                <HeaderStyle HorizontalAlign="Center" />
                                                                                <CellStyle HorizontalAlign="Left">
                                                                                </CellStyle>
                                                                            </dx:GridViewDataTextColumn>
                                                                            <dx:GridViewDataTextColumn Caption="分類名稱" FieldName="CLASS_NAME" 
                                                                                ShowInCustomizationForm="True" VisibleIndex="2">
                                                                                <HeaderStyle HorizontalAlign="Center" />
                                                                                <CellStyle HorizontalAlign="Left">
                                                                                </CellStyle>
                                                                            </dx:GridViewDataTextColumn>
                                                                        </Columns>
                                                                        <SettingsBehavior AllowFocusedRow="True" />
                                                                    </dx:ASPxGridView>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <div class="button-group">
                                                                        <li>
                                                                            <dx:ASPxButton ID="ASPxButton2" runat="server" AutoPostBack="False" 
                                                                                CssClass="button big pill" 
                                                                                CssFilePath="~/App_Themes/CustomTheme/Css/Button/Button2/gh-buttons.css" 
                                                                                CssPostfix="button" Font-Names="王漢宗細圓體繁" Font-Size="Small" 
                                                                                OnLoad="ASPxButton2_Load" Text="確認離開" Width="100px">
                                                                            </dx:ASPxButton>
                                                                        </li>
                                                                        <li>
                                                                            <dx:ASPxButton ID="ASPxButton3" runat="server" AutoPostBack="False" 
                                                                                CssClass="button big pill" 
                                                                                CssFilePath="~/App_Themes/CustomTheme/Css/Button/Button2/gh-buttons.css" 
                                                                                CssPostfix="button" Font-Names="王漢宗細圓體繁" Font-Size="Small" 
                                                                                OnLoad="ASPxButton3_Load" Text="捨棄離開" Width="100px">
                                                                            </dx:ASPxButton>
                                                                        </li>
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <dx:ASPxTextBox ID="carBRAND" runat="server" ClientInstanceName="carBRAND" 
                                                                        ClientVisible="False" Font-Names="王漢宗細圓體繁" Font-Size="Small" Height="25px" 
                                                                        Text="carBRAND" Width="100%">
                                                                        <ReadOnlyStyle BackColor="#CCCCCC">
                                                                        </ReadOnlyStyle>
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </div>
                                                </dx:PanelContent>
                                            </PanelCollection>
                                        </dx:ASPxPanel>
                                    </dx:PopupControlContentControl>
                                </ContentCollection>
                            </dx:ASPxPopupControl>
                            <br />
                            <dx:ASPxPopupControl ID="ASPxPopupControl2" runat="server" AllowDragging="True" 
                                ClientInstanceName="clientPopupPLU" CloseAction="CloseButton" 
                                Font-Names="王漢宗細圓體繁" Font-Size="Small" HeaderText="商品" ShowShadow="False" 
                                Theme="Office2010Silver" Width="400px" CssClass="pie_radius">
                                <HeaderStyle HorizontalAlign="Left" />
                                <ContentCollection>
                                    <dx:PopupControlContentControl runat="server" SupportsDisabledAttribute="True">
                                        <dx:ASPxPanel ID="ASPxPanel4" runat="server" RenderMode="Table" Width="100%">
                                            <PanelCollection>
                                                <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                                                    <div align="center">
                                                        <table class="style12">
                                                            <tr>
                                                                <td align="left">
                                                                    <dx:ASPxTextBox ID="PLU_ID" runat="server" ClientInstanceName="PLU_ID" 
                                                                        Font-Names="王漢宗細圓體繁" Font-Size="Small" Height="25px" ReadOnly="True" 
                                                                        Text="PLU_ID" Width="100%">
                                                                        <ReadOnlyStyle BackColor="#CCCCCC">
                                                                        </ReadOnlyStyle>
                                                                    </dx:ASPxTextBox>
                                                                    <dx:ASPxGridView ID="ASPxGridView8" runat="server" AutoGenerateColumns="False" 
                                                                        ClientInstanceName="gridPLU" DataSourceID="edsPOS_Posplu" Font-Names="王漢宗細圓體繁" 
                                                                        KeyFieldName="PLU_ID" 
                                                                        OnHtmlDataCellPrepared="ASPxGridView2_HtmlDataCellPrepared" 
                                                                        OnHtmlRowCreated="ASPxGridView7_HtmlRowCreated" Width="600px">
                                                                        <ClientSideEvents FocusedRowChanged="function(s, e) {
	OnGridFocusedRowChanged2PLU();
}
" />
                                                                        <Columns>
                                                                            <dx:GridViewDataTextColumn Caption="商品條碼" FieldName="PLU_ID" ReadOnly="True" 
                                                                                ShowInCustomizationForm="True" VisibleIndex="0">
                                                                                <HeaderStyle HorizontalAlign="Center" />
                                                                            </dx:GridViewDataTextColumn>
                                                                            <dx:GridViewDataTextColumn FieldName="ITEM_ID" ShowInCustomizationForm="True" 
                                                                                Visible="False" VisibleIndex="1">
                                                                            </dx:GridViewDataTextColumn>
                                                                            <dx:GridViewDataTextColumn Caption="商品名稱" FieldName="ITEM_NAME" 
                                                                                ShowInCustomizationForm="True" VisibleIndex="2">
                                                                                <HeaderStyle HorizontalAlign="Center" />
                                                                            </dx:GridViewDataTextColumn>
                                                                            <dx:GridViewDataTextColumn Caption="商品分類" FieldName="CLASS_NO" 
                                                                                ShowInCustomizationForm="True" VisibleIndex="3">
                                                                                <HeaderStyle HorizontalAlign="Center" />
                                                                            </dx:GridViewDataTextColumn>
                                                                            <dx:GridViewDataTextColumn Caption="單位" FieldName="UNIT_NAME" 
                                                                                ShowInCustomizationForm="True" VisibleIndex="4">
                                                                                <HeaderStyle HorizontalAlign="Center" />
                                                                            </dx:GridViewDataTextColumn>
                                                                            <dx:GridViewDataTextColumn FieldName="PACK_QTY" ShowInCustomizationForm="True" 
                                                                                Visible="False" VisibleIndex="5">
                                                                            </dx:GridViewDataTextColumn>
                                                                            <dx:GridViewDataTextColumn FieldName="PACK_AMT" ShowInCustomizationForm="True" 
                                                                                Visible="False" VisibleIndex="6">
                                                                            </dx:GridViewDataTextColumn>
                                                                            <dx:GridViewDataTextColumn Caption="售價" FieldName="UNIT_PRICE" 
                                                                                ShowInCustomizationForm="True" VisibleIndex="7">
                                                                                <HeaderStyle HorizontalAlign="Center" />
                                                                            </dx:GridViewDataTextColumn>
                                                                            <dx:GridViewDataTextColumn FieldName="OLD_PRICE" ShowInCustomizationForm="True" 
                                                                                Visible="False" VisibleIndex="8">
                                                                            </dx:GridViewDataTextColumn>
                                                                            <dx:GridViewDataTextColumn FieldName="DISC_PRICE" 
                                                                                ShowInCustomizationForm="True" Visible="False" VisibleIndex="9">
                                                                            </dx:GridViewDataTextColumn>
                                                                            <dx:GridViewDataTextColumn FieldName="N1_QTY" ShowInCustomizationForm="True" 
                                                                                Visible="False" VisibleIndex="10">
                                                                            </dx:GridViewDataTextColumn>
                                                                            <dx:GridViewDataTextColumn FieldName="N2_QTY" ShowInCustomizationForm="True" 
                                                                                Visible="False" VisibleIndex="11">
                                                                            </dx:GridViewDataTextColumn>
                                                                            <dx:GridViewDataTextColumn FieldName="N2_PRICE" ShowInCustomizationForm="True" 
                                                                                Visible="False" VisibleIndex="12">
                                                                            </dx:GridViewDataTextColumn>
                                                                            <dx:GridViewDataTextColumn FieldName="N3_QTY" ShowInCustomizationForm="True" 
                                                                                Visible="False" VisibleIndex="13">
                                                                            </dx:GridViewDataTextColumn>
                                                                            <dx:GridViewDataTextColumn FieldName="DB_RATE" ShowInCustomizationForm="True" 
                                                                                Visible="False" VisibleIndex="14">
                                                                            </dx:GridViewDataTextColumn>
                                                                            <dx:GridViewDataTextColumn FieldName="SET_ID" ShowInCustomizationForm="True" 
                                                                                Visible="False" VisibleIndex="15">
                                                                            </dx:GridViewDataTextColumn>
                                                                            <dx:GridViewDataTextColumn FieldName="PRO_FLAG" ShowInCustomizationForm="True" 
                                                                                Visible="False" VisibleIndex="16">
                                                                            </dx:GridViewDataTextColumn>
                                                                            <dx:GridViewDataTextColumn FieldName="DIS_FLAG" ShowInCustomizationForm="True" 
                                                                                Visible="False" VisibleIndex="17">
                                                                            </dx:GridViewDataTextColumn>
                                                                            <dx:GridViewDataTextColumn FieldName="CHG_FLAG" ShowInCustomizationForm="True" 
                                                                                Visible="False" VisibleIndex="18">
                                                                            </dx:GridViewDataTextColumn>
                                                                            <dx:GridViewDataTextColumn FieldName="TAX_FLAG" ShowInCustomizationForm="True" 
                                                                                Visible="False" VisibleIndex="19">
                                                                            </dx:GridViewDataTextColumn>
                                                                            <dx:GridViewDataTextColumn FieldName="BLANK" ShowInCustomizationForm="True" 
                                                                                Visible="False" VisibleIndex="20">
                                                                            </dx:GridViewDataTextColumn>
                                                                        </Columns>
                                                                        <SettingsBehavior AllowFocusedRow="True" />
                                                                    </dx:ASPxGridView>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <div class="button-group">
                                                                        <li>
                                                                            <dx:ASPxButton ID="ASPxButton4" runat="server" AutoPostBack="False" 
                                                                                CssClass="button big pill" 
                                                                                CssFilePath="~/App_Themes/CustomTheme/Css/Button/Button2/gh-buttons.css" 
                                                                                CssPostfix="button" Font-Names="王漢宗細圓體繁" Font-Size="Small" 
                                                                                OnLoad="ASPxButton4_Load" Text="確認離開" Width="100px">
                                                                            </dx:ASPxButton>
                                                                        </li>
                                                                        <li>
                                                                            <dx:ASPxButton ID="ASPxButton5" runat="server" AutoPostBack="False" 
                                                                                CssClass="button big pill" 
                                                                                CssFilePath="~/App_Themes/CustomTheme/Css/Button/Button2/gh-buttons.css" 
                                                                                CssPostfix="button" Font-Names="王漢宗細圓體繁" Font-Size="Small" 
                                                                                OnLoad="ASPxButton5_Load" Text="捨棄離開" Width="100px">
                                                                            </dx:ASPxButton>
                                                                        </li>
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <dx:ASPxTextBox ID="ITEM_NAME" runat="server" ClientInstanceName="ITEM_NAME" 
                                                                        ClientVisible="False" Font-Names="王漢宗細圓體繁" Font-Size="Small" Height="25px" 
                                                                        Text="ITEM_NAME" Width="100%">
                                                                        <ReadOnlyStyle BackColor="#CCCCCC">
                                                                        </ReadOnlyStyle>
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </div>
                                                </dx:PanelContent>
                                            </PanelCollection>
                                        </dx:ASPxPanel>
                                    </dx:PopupControlContentControl>
                                </ContentCollection>
                            </dx:ASPxPopupControl>
                            <br />
                            <br />
                        </div>
                    <br />
                        <br />
                        <br />
                    <br />
                    <br />
                    
                        <asp:EntityDataSource ID="edsPOS_ecrdat" runat="server" 
                            ConnectionString="name=NEWPMSEntities" DefaultContainerName="NEWPMSEntities" 
                            EnableFlattening="False" EntitySetName="POS_ecrdat" OrderBy="it.ECR_FLOOR,it.ECR_NO
">
                        </asp:EntityDataSource>
                        <asp:EntityDataSource ID="EntityDataSource21" runat="server" 
                            ConnectionString="name=NEWPMSEntities" DefaultContainerName="NEWPMSEntities" 
                            EnableFlattening="False" EntitySetName="POS_TKeyProperties" 
                            EnableUpdate="True" 
                            
                            Where="" OrderBy="it.KEY_LEVEL
" AutoGenerateWhereClause="True">
                            <WhereParameters>
                                <asp:QueryStringParameter Name="ECR_SERNO" Type="String" />
                                <asp:QueryStringParameter Name="comcode" Type="String" />
                                <asp:QueryStringParameter Name="ECR_NO" Type="String" />
                            </WhereParameters>
                        </asp:EntityDataSource>
                        <br />
                        <asp:EntityDataSource ID="edsSYS_keytype" runat="server" 
                            ConnectionString="name=NEWPMSEntities" DefaultContainerName="NEWPMSEntities" 
                            EnableFlattening="False" EntitySetName="SYS_keytype" Where="">
                        </asp:EntityDataSource>
                        <asp:EntityDataSource ID="edsPOS_keyfunc" runat="server" 
                            ConnectionString="name=NEWPMSEntities" DefaultContainerName="NEWPMSEntities" 
                            EnableFlattening="False" EntitySetName="POS_keyfunc" 
                            OrderBy="it.FUNCODE" Where="it.VOID_CODE=0">
                        </asp:EntityDataSource>
                        <asp:EntityDataSource ID="edsSYS_ONOFF" runat="server" 
                            ConnectionString="name=NEWPMSEntities" DefaultContainerName="NEWPMSEntities" 
                            EnableFlattening="False" EntitySetName="SYS_onoff">
                        </asp:EntityDataSource>
                        <br />
                        <asp:EntityDataSource ID="edsPOS_Posplu" runat="server" 
                            ConnectionString="name=NEWPMSEntities" DefaultContainerName="NEWPMSEntities" 
                            EnableFlattening="False" EntitySetName="POS_Posplu" 
                            OrderBy="" Where="">
                        </asp:EntityDataSource>
                        <asp:EntityDataSource ID="edsSTK_CLASS" runat="server" 
                            ConnectionString="name=NEWPMSEntities" DefaultContainerName="NEWPMSEntities" 
                            EnableFlattening="False" EntitySetName="STK_CLASS" EntityTypeFilter="" 
                            OrderBy="" Select="" Where="">
                        </asp:EntityDataSource>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:NEWPMSConnectionString %>" 
                            ProviderName="<%$ ConnectionStrings:NEWPMSConnectionString.ProviderName %>">
                        </asp:SqlDataSource>
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

