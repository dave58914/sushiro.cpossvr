<%@ page title="" language="C#" masterpagefile="~/MainPage.master" autoeventwireup="true" inherits="STK_factory, App_Web_stk_factory.aspx.cdcab7d2" %>

<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxTabControl" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxClasses" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxRoundPanel" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPanel" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.ASPxGridView.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxEditors.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxCallback" tagprefix="dx" %>

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
        .style9
        {
        }
        .style11
        {
            width: 100%;
        }
        .style12
        {
            height: 17px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script type="text/javascript">
        function OnGridFocusedRowChanged() {
            gridZIP32.GetRowValues(gridZIP32.GetFocusedRowIndex(), 'Zip5;City;Area;Road;Scope', OnGetRowValues);
        }
        function OnGetRowValues(values) {
            tbZIPCode.SetText(values[0]);
            tbAddr.SetText(values[1] + values[2] + values[3]);
        }
        function OnPopUp(ClientID) {
            tbZIPCode.SetText('');
            tbAddr.SetText('');
            clientPopup.ShowAtElementByID(ClientID);
        }
        function OnCloseUp1() {
            var ZIPCodeValue = tbZIPCode.GetValue();
            var AddrValue = tbAddr.GetValue();
            clientADDRESS1.SetText(ZIPCodeValue);
            clientADDRESS2.SetText(AddrValue);
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
                            <dx:ASPxPanel ID="ASPxPanel1" runat="server" RenderMode="Table" Width="900px">
                                <PanelCollection>
                                    <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                                        <div align="left">
                                            <table width="100%">
                                                <tr>
                                                    <td>
                                                        <dx:ASPxHyperLink ID="ASPxHyperLink1" runat="server" CssClass="button add icon" 
                                                            CssPostfix="button" Font-Names="王漢宗細圓體繁" Font-Size="Small" Text="新增單位">
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
                                                            OnHtmlDataCellPrepared="ASPxGridView1_HtmlDataCellPrepared" 
                                                            OnHtmlRowCreated="ASPxGridView1_HtmlRowCreated" 
                                                            OnInitNewRow="ASPxGridView1_InitNewRow" 
                                                            OnRowInserting="ASPxGridView1_RowInserting" 
                                                            OnRowUpdating="ASPxGridView1_RowUpdating" 
                                                            OnRowValidating="ASPxGridView1_RowValidating" Width="100%">
                                                            <Columns>
                                                                <dx:GridViewCommandColumn ShowInCustomizationForm="True" VisibleIndex="0" 
                                                                    Width="60px">
                                                                    <EditButton Visible="True">
                                                                    </EditButton>
                                                                    <DeleteButton Visible="True">
                                                                    </DeleteButton>
                                                                </dx:GridViewCommandColumn>
                                                                <dx:GridViewDataTextColumn FieldName="MsgId" ReadOnly="True" 
                                                                    ShowInCustomizationForm="True" Visible="False" VisibleIndex="1">
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="單位名稱" FieldName="UNIT_NAME" 
                                                                    ShowInCustomizationForm="True" VisibleIndex="2">
                                                                    <EditCellStyle Font-Size="Small">
                                                                    </EditCellStyle>
                                                                    <EditFormCaptionStyle HorizontalAlign="Right">
                                                                    </EditFormCaptionStyle>
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="聯絡人" FieldName="CONTACT" 
                                                                    ShowInCustomizationForm="True" VisibleIndex="3">
                                                                    <EditCellStyle Font-Size="Small">
                                                                    </EditCellStyle>
                                                                    <EditFormCaptionStyle HorizontalAlign="Right">
                                                                    </EditFormCaptionStyle>
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="統一編號" FieldName="IDNO" 
                                                                    ShowInCustomizationForm="True" VisibleIndex="4">
                                                                    <EditCellStyle Font-Size="Small">
                                                                    </EditCellStyle>
                                                                    <EditFormCaptionStyle HorizontalAlign="Right">
                                                                    </EditFormCaptionStyle>
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="電話" FieldName="TEL" 
                                                                    ShowInCustomizationForm="True" VisibleIndex="5">
                                                                    <EditCellStyle Font-Size="Small">
                                                                    </EditCellStyle>
                                                                    <EditFormCaptionStyle HorizontalAlign="Right">
                                                                    </EditFormCaptionStyle>
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="傳真" FieldName="FAX" 
                                                                    ShowInCustomizationForm="True" VisibleIndex="6">
                                                                    <EditCellStyle Font-Size="Small">
                                                                    </EditCellStyle>
                                                                    <EditFormCaptionStyle HorizontalAlign="Right">
                                                                    </EditFormCaptionStyle>
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="地址" FieldName="ADDR" 
                                                                    ShowInCustomizationForm="True" VisibleIndex="7">
                                                                    <EditCellStyle Font-Size="Small">
                                                                    </EditCellStyle>
                                                                    <EditFormCaptionStyle HorizontalAlign="Right">
                                                                    </EditFormCaptionStyle>
                                                                    <EditItemTemplate>
                                                                        <asp:Panel ID="Panel2" runat="server" Font-Names="王漢宗細圓體繁" Font-Size="Small" 
                                                                            HorizontalAlign="Left" Width="100%">
                                                                            <table>
                                                                                <tr>
                                                                                    <td align="left" class="style9">
                                                                                        郵遞區號</td>
                                                                                    <td>
                                                                                        郵遞住址</td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td align="right" class="style9">
                                                                                        <dx:ASPxTextBox ID="tbADDRESS1" runat="server" BackColor="#CCCCCC" 
                                                                                            ClientInstanceName="clientADDRESS1" Font-Names="王漢宗細圓體繁" Font-Size="Small" 
                                                                                            ReadOnly="True" Width="100px">
                                                                                        </dx:ASPxTextBox>
                                                                                    </td>
                                                                                    <td>
                                                                                        <dx:ASPxTextBox ID="tbADDRESS2" runat="server" 
                                                                                            ClientInstanceName="clientADDRESS2" Font-Names="王漢宗細圓體繁" Font-Size="Small" 
                                                                                            Width="420px">
                                                                                        </dx:ASPxTextBox>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td align="left" class="style12" colspan="2">
                                                                                        <dx:ASPxHyperLink ID="ASPxHyperLink2" runat="server" 
                                                                                            CssClass="button search icon pill" Font-Names="王漢宗細圓體繁" 
                                                                                            onload="ASPxHyperLink2_Load" Text="3+2郵遞區號查詢" ToolTip="3+2郵遞區號查詢" />
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        </asp:Panel>
                                                                    </EditItemTemplate>
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="電子郵件" FieldName="EMAIL" 
                                                                    ShowInCustomizationForm="True" VisibleIndex="8">
                                                                    <EditCellStyle Font-Size="Small">
                                                                    </EditCellStyle>
                                                                    <EditFormCaptionStyle HorizontalAlign="Right">
                                                                    </EditFormCaptionStyle>
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                            </Columns>
                                                            <SettingsBehavior AllowFocusedRow="True" ConfirmDelete="True" />
                                                            <SettingsPager AlwaysShowPager="True" PageSize="20" Position="TopAndBottom">
                                                            </SettingsPager>
                                                            <SettingsEditing EditFormColumnCount="1" />
                                                            <SettingsPopup>
                                                                <CustomizationWindow Width="400px" />
                                                            </SettingsPopup>
                                                            <Styles>
                                                                <AlternatingRow Enabled="True">
                                                                </AlternatingRow>
                                                            </Styles>
                                                            <StylesEditors>
                                                                <TextBox Font-Names="王漢宗細圓體繁">
                                                                </TextBox>
                                                            </StylesEditors>
                                                        </dx:ASPxGridView>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                        <br />
                                        <br />
                                        <br />
                                    </dx:PanelContent>
                                </PanelCollection>
                            </dx:ASPxPanel>
                            <br />
                            <br />
                        </div>
                        <asp:UpdatePanel ID="UpdatePanelZIP32" runat="server">
                            <ContentTemplate>
                                <dx:ASPxPopupControl ID="ASPxPopupControl1" runat="server" AllowDragging="True" 
                                    ClientInstanceName="clientPopup" CloseAction="CloseButton" Font-Names="王漢宗細圓體繁" 
                                    Font-Size="Small" HeaderText="3+2郵遞區號查詢" Modal="True" ShowShadow="False" 
                                    Theme="Office2010Silver" CssClass="pie_radius">
                                    <HeaderStyle HorizontalAlign="Left" />
                                    <ContentCollection>
                                        <dx:PopupControlContentControl runat="server" SupportsDisabledAttribute="True">
                                            <dx:ASPxPanel ID="ASPxPanel2" runat="server" RenderMode="Table" Width="200px">
                                                <PanelCollection>
                                                    <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                                                        <div align="center">
                                                            <table class="style11">
                                                                <tr>
                                                                    <td>
                                                                        <table class="style11">
                                                                            <tr>
                                                                                <td>
                                                                                    <dx:ASPxTextBox ID="tbADDR1" runat="server" ClientInstanceName="tbZIPCode" 
                                                                                        Font-Names="王漢宗細圓體繁" ReadOnly="True" Text="12345" 
                                                                                        Width="70px">
                                                                                        <ReadOnlyStyle BackColor="#CCCCCC">
                                                                                        </ReadOnlyStyle>
                                                                                    </dx:ASPxTextBox>
                                                                                </td>
                                                                                <td align="left">
                                                                                    <dx:ASPxTextBox ID="tbADDR2" runat="server" ClientInstanceName="tbAddr" 
                                                                                        Font-Names="王漢宗細圓體繁" ReadOnly="True" Width="575px">
                                                                                        <ReadOnlyStyle BackColor="#CCCCCC">
                                                                                        </ReadOnlyStyle>
                                                                                    </dx:ASPxTextBox>
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <dx:ASPxRoundPanel ID="ASPxRoundPanelZIP32" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                            Font-Size="Small" HorizontalAlign="Left" ShowHeader="False" Theme="DevEx">
                                                                            <PanelCollection>
                                                                                <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                                                                                    <table>
                                                                                        <tr>
                                                                                            <td align="right">
                                                                                                <asp:Label ID="Label1" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                                                    Text="縣市/鄉鎮【市】區" Width="120px"></asp:Label>
                                                                                            </td>
                                                                                            <td>
                                                                                                <dx:ASPxComboBox ID="cbCITY" runat="server" Font-Names="王漢宗細圓體繁" OnSelectedIndexChanged="cbCITY_SelectedIndexChanged" 
                                                                                                    SelectedIndex="0" Width="100px">
                                                                                                    <ClientSideEvents SelectedIndexChanged="function(s, e) {
	e.processOnServer = true
	Callback.PerformCallback();	
}" />
                                                                                                    <Items>
                                                                                                        <dx:ListEditItem Selected="True" Text="請選擇縣市" Value="請選擇縣市" />
                                                                                                        <dx:ListEditItem Text="基隆市" Value="基隆市" />
                                                                                                        <dx:ListEditItem Text="台北市" Value="台北市" />
                                                                                                        <dx:ListEditItem Text="新北市" Value="新北市" />
                                                                                                        <dx:ListEditItem Text="桃園縣" Value="桃園縣" />
                                                                                                        <dx:ListEditItem Text="新竹市" Value="新竹市" />
                                                                                                        <dx:ListEditItem Text="新竹縣" Value="新竹縣" />
                                                                                                        <dx:ListEditItem Text="苗栗縣" Value="苗栗縣" />
                                                                                                        <dx:ListEditItem Text="台中市" Value="台中市" />
                                                                                                        <dx:ListEditItem Text="彰化縣" Value="彰化縣" />
                                                                                                        <dx:ListEditItem Text="南投縣" Value="南投縣" />
                                                                                                        <dx:ListEditItem Text="雲林縣" Value="雲林縣" />
                                                                                                        <dx:ListEditItem Text="嘉義市" Value="嘉義市" />
                                                                                                        <dx:ListEditItem Text="嘉義縣" Value="嘉義縣" />
                                                                                                        <dx:ListEditItem Text="台南市" Value="台南市" />
                                                                                                        <dx:ListEditItem Text="高雄市" Value="高雄市" />
                                                                                                        <dx:ListEditItem Text="屏東縣" Value="屏東縣" />
                                                                                                        <dx:ListEditItem Text="台東縣" Value="台東縣" />
                                                                                                        <dx:ListEditItem Text="花蓮縣" Value="花蓮縣" />
                                                                                                        <dx:ListEditItem Text="宜蘭縣" Value="宜蘭縣" />
                                                                                                        <dx:ListEditItem Text="澎湖縣" Value="澎湖縣" />
                                                                                                        <dx:ListEditItem Text="金門縣" Value="金門縣" />
                                                                                                        <dx:ListEditItem Text="連江縣" Value="連江縣" />
                                                                                                    </Items>
                                                                                                </dx:ASPxComboBox>
                                                                                            </td>
                                                                                            <td>
                                                                                                <dx:ASPxComboBox ID="cbAREA" runat="server" Font-Names="王漢宗細圓體繁" OnSelectedIndexChanged="cbAREA_SelectedIndexChanged" 
                                                                                                    Width="100px">
                                                                                                    <ClientSideEvents SelectedIndexChanged="function(s, e) {
	e.processOnServer = true
	Callback.PerformCallback();		
}" />
                                                                                                </dx:ASPxComboBox>
                                                                                            </td>
                                                                                            <td align="right">
                                                                                                <asp:Label ID="Label2" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                                                    Text="路(街)名或村里名稱" Width="120px"></asp:Label>
                                                                                            </td>
                                                                                            <td>
                                                                                                <dx:ASPxComboBox ID="cbROAD" runat="server" DataSourceID="edsZIP_ROAD" 
                                                                                                    DropDownStyle="DropDown" Font-Names="王漢宗細圓體繁" 
                                                                                                    IncrementalFilteringMode="Contains" TextField="Road" Width="100px">
                                                                                                </dx:ASPxComboBox>
                                                                                            </td>
                                                                                            <td>
                                                                                                <dx:ASPxButton ID="btnZIP32" runat="server" AutoPostBack="False" 
                                                                                                    CssClass="button" 
                                                                                                    CssFilePath="~/App_Themes/CustomTheme/Css/Button/Button2/gh-buttons.css" 
                                                                                                    CssPostfix="button" Font-Names="王漢宗細圓體繁" Font-Size="Small" 
                                                                                                    OnClick="btnZIP32_Click" Text="查詢">
                                                                                                    <ClientSideEvents Click="function(s, e) {
	e.processOnServer = true
	Callback.PerformCallback();		
}" />
                                                                                                </dx:ASPxButton>
                                                                                            </td>
                                                                                        </tr>
                                                                                    </table>
                                                                                    <dx:ASPxGridView ID="gvZIP32" runat="server" AutoGenerateColumns="False" 
                                                                                        ClientInstanceName="gridZIP32" DataSourceID="edsZIP32" 
                                                                                        Font-Names="王漢宗細圓體繁" KeyFieldName="MsgId" Theme="Default" Width="100%">
                                                                                        <ClientSideEvents FocusedRowChanged="function(s, e) {
	OnGridFocusedRowChanged();
}" />
                                                                                        <Columns>
                                                                                            <dx:GridViewDataTextColumn Caption="郵遞區號" FieldName="Zip5" ReadOnly="True" 
                                                                                                ShowInCustomizationForm="True" VisibleIndex="0">
                                                                                                <HeaderStyle HorizontalAlign="Center" />
                                                                                                <CellStyle HorizontalAlign="Left">
                                                                                                </CellStyle>
                                                                                            </dx:GridViewDataTextColumn>
                                                                                            <dx:GridViewDataTextColumn Caption="縣市/鄉鎮【市】區" FieldName="City" ReadOnly="True" 
                                                                                                ShowInCustomizationForm="True" VisibleIndex="1">
                                                                                                <HeaderStyle HorizontalAlign="Center" />
                                                                                                <CellStyle HorizontalAlign="Left">
                                                                                                </CellStyle>
                                                                                            </dx:GridViewDataTextColumn>
                                                                                            <dx:GridViewDataTextColumn Caption="區域" FieldName="Area" ReadOnly="True" 
                                                                                                ShowInCustomizationForm="True" VisibleIndex="2">
                                                                                                <HeaderStyle HorizontalAlign="Center" />
                                                                                                <CellStyle HorizontalAlign="Left">
                                                                                                </CellStyle>
                                                                                            </dx:GridViewDataTextColumn>
                                                                                            <dx:GridViewDataTextColumn Caption="路名" FieldName="Road" ReadOnly="True" 
                                                                                                ShowInCustomizationForm="True" VisibleIndex="3">
                                                                                                <HeaderStyle HorizontalAlign="Center" />
                                                                                                <CellStyle HorizontalAlign="Left">
                                                                                                </CellStyle>
                                                                                            </dx:GridViewDataTextColumn>
                                                                                            <dx:GridViewDataTextColumn Caption="段號投遞段範圍" FieldName="Scope" ReadOnly="True" 
                                                                                                ShowInCustomizationForm="True" VisibleIndex="4">
                                                                                                <HeaderStyle HorizontalAlign="Center" />
                                                                                                <CellStyle HorizontalAlign="Left">
                                                                                                </CellStyle>
                                                                                            </dx:GridViewDataTextColumn>
                                                                                        </Columns>
                                                                                        <SettingsBehavior AllowFocusedRow="True" />
                                                                                        <SettingsPager AlwaysShowPager="True" PageSize="5" ShowEmptyDataRows="True">
                                                                                        </SettingsPager>
                                                                                    </dx:ASPxGridView>
                                                                                </dx:PanelContent>
                                                                            </PanelCollection>
                                                                        </dx:ASPxRoundPanel>
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
                                <br />
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    <br />
                    <br />
                    <br />
                        <dx:ASPxRoundPanel ID="ASPxRoundPanel1" runat="server" Font-Names="王漢宗細圓體繁" 
                            Font-Size="12pt" HeaderText="【STK_factory】" View="GroupBox" Width="100%" 
                            HorizontalAlign="Center" CssClass="pie_radius" ClientVisible="False">
                            <PanelCollection>
                                <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                                    <br />
                                </dx:PanelContent>
                            </PanelCollection>
                            <Border BorderStyle="Double" BorderWidth="3px" />
                        </dx:ASPxRoundPanel>
                        <asp:EntityDataSource ID="EntityDataSource1" runat="server" 
                            ConnectionString="name=NEWPMSEntities" DefaultContainerName="NEWPMSEntities" 
                            EnableDelete="True" EnableFlattening="False" EnableInsert="True" 
                            EnableUpdate="True" EntitySetName="SYS_factory" 
                            OrderBy="">
                        </asp:EntityDataSource>
                        <asp:SqlDataSource ID="sdsZIP32" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:NEWPMSConnectionString %>" SelectCommand="select Area from dbo.SYS_ZIP32 where City=@City group by Area
">
                            <SelectParameters>
                                <asp:Parameter Name="City" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:EntityDataSource ID="edsZIP32" runat="server" 
                            ConnectionString="name=NEWPMSEntities" 
                            DefaultContainerName="NEWPMSEntities" EntitySetName="SYS_ZIP32" 
                            OrderBy="it.Zip5" 
                            Select="it.MsgId, it.Zip5, it.City, it.Area, it.Road, it.Scope" 
                            Where="it.City=@City and  it.Area=@Area and it.Road=@Road">
                            <WhereParameters>
                                <asp:QueryStringParameter Name="City" Type="String" />
                                <asp:QueryStringParameter Name="Area" Type="String" />
                                <asp:QueryStringParameter Name="Road" Type="String" />
                            </WhereParameters>
                        </asp:EntityDataSource>
                        <asp:EntityDataSource ID="edsZIP_ROAD" runat="server" 
                            ConnectionString="name=NEWPMSEntities" DefaultContainerName="NEWPMSEntities" 
                            EnableFlattening="False" EntitySetName="SYS_ZIP32" 
                            GroupBy="it.Road" OrderBy="it.Road" Select="it.[Road]" 
                            Where="it.City=@City and  it.Area=@Area">
                            <WhereParameters>
                                <asp:QueryStringParameter Name="City" Type="String" />
                                <asp:QueryStringParameter Name="Area" Type="String" />
                            </WhereParameters>
                        </asp:EntityDataSource>
                        <dx:ASPxCallback ID="ASPxCallback2" runat="server" 
                            ClientInstanceName="Callback">
                        </dx:ASPxCallback>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:TabPage>
        </TabPages>
    </dx:ASPxPageControl>
</asp:Content>

