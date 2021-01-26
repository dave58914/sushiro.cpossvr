<%@ page title="" language="C#" masterpagefile="~/MainPage.master" autoeventwireup="true" inherits="HQ_PostDoc, App_Web_hq_postdoc.aspx.cdcab7d2" %>

<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxTabControl" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxClasses" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxRoundPanel" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPanel" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.ASPxGridView.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxEditors.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.ASPxHtmlEditor.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxHtmlEditor" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxSpellChecker.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxSpellChecker" tagprefix="dx" %>

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
        .style14
        {
            height: 33px;
        }
        .style17
        {
            height: 2px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script type="text/javascript">
    </script>
    <dx:ASPxPageControl ID="ASPxPageControl1" runat="server" ActiveTabIndex="0" 
        Font-Names="王漢宗細圓體繁" Font-Size="Small" TabPosition="Left" Width="100%" 
        Height="800px">
        <TabPages>
            <dx:TabPage Name="Tab01" Text="管理">
                <ContentCollection>
                    <dx:ContentControl runat="server" SupportsDisabledAttribute="True">
                        <div align="center">
                            <dx:ASPxPanel ID="ASPxPanel1" runat="server" RenderMode="Table" Width="1000px">
                                <PanelCollection>
                                    <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                                        <div align="center">
                                            <table class="style8">
                                                <tr>
                                                    <td align="left">
                                                        <asp:Panel ID="Panel3" runat="server" Font-Names="王漢宗細圓體繁">
                                                            <table class="style8">
                                                                <tr>
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
                                                                            CssClass="button add icon" CssPostfix="button" Font-Names="王漢宗細圓體繁" 
                                                                            Font-Size="Small" Height="28px" Text="新增" Width="90px">
                                                                            <ClientSideEvents Click="function(s, e) {
	grid.AddNewRow();	
}" />
                                                                        </dx:ASPxButton>
                                                                    </td>
                                                                    <td align="left">
                                                                        &nbsp;</td>
                                                                </tr>
                                                            </table>
                                                        </asp:Panel>
                                                    </td>
                                                </tr>
                                                <tr align="left">
                                                    <td>
                                                        <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" 
                                                            ClientInstanceName="grid" DataSourceID="edsPOS_POSTDOC" Font-Names="王漢宗細圓體繁" 
                                                            KeyFieldName="UID" OnCellEditorInitialize="ASPxGridView1_CellEditorInitialize" 
                                                            OnCommandButtonInitialize="ASPxGridView1_CommandButtonInitialize" 
                                                            OnDetailRowExpandedChanged="ASPxGridView1_DetailRowExpandedChanged" 
                                                            OnHeaderFilterFillItems="ASPxGridView1_HeaderFilterFillItems" 
                                                            OnHtmlDataCellPrepared="ASPxGridView1_HtmlDataCellPrepared" 
                                                            OnHtmlRowCreated="ASPxGridView1_HtmlRowCreated" 
                                                            OnInitNewRow="ASPxGridView1_InitNewRow" 
                                                            OnRowInserting="ASPxGridView1_RowInserting" 
                                                            OnRowUpdating="ASPxGridView1_RowUpdating" 
                                                            OnRowValidating="ASPxGridView1_RowValidating" 
                                                            OnStartRowEditing="ASPxGridView1_StartRowEditing" Width="100%">
                                                            <Columns>
                                                                <dx:GridViewCommandColumn ShowInCustomizationForm="True" VisibleIndex="0">
                                                                    <EditButton Visible="True">
                                                                    </EditButton>
                                                                    <DeleteButton Visible="True">
                                                                    </DeleteButton>
                                                                </dx:GridViewCommandColumn>
                                                                <dx:GridViewDataTextColumn Caption="發文編號" FieldName="UID" ReadOnly="True" 
                                                                    ShowInCustomizationForm="True" Visible="False" VisibleIndex="1">
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="店別" FieldName="NO_STORE" 
                                                                    ShowInCustomizationForm="True" VisibleIndex="2">
                                                                    <Settings HeaderFilterMode="CheckedList" />
                                                                    <DataItemTemplate>
                                                                        <dx:ASPxLabel ID="labNO_STORE" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                            Text="labNO_STORE" Width="100%">
                                                                        </dx:ASPxLabel>
                                                                    </DataItemTemplate>
                                                                    <EditItemTemplate>
                                                                        <dx:ASPxComboBox ID="cbNO_STORE" runat="server" DataSourceID="edsPOS_storedat" 
                                                                            Font-Names="王漢宗細圓體繁" TextField="NM_STORE" TextFormatString="{0}; {1}; {2}" 
                                                                            ValueField="NO_STORE" Width="100%">
                                                                            <Columns>
                                                                                <dx:ListBoxColumn Caption="店號" FieldName="NO_STORE" Name="NO_STORE" />
                                                                                <dx:ListBoxColumn Caption="店名" FieldName="NM_STORE" Name="NM_STORE" />
                                                                                <dx:ListBoxColumn Caption="店鋪類型" FieldName="KEY_TEXT" Name="KEY_TEXT" />
                                                                            </Columns>
                                                                        </dx:ASPxComboBox>
                                                                    </EditItemTemplate>
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="主旨" FieldName="SUBJECT" 
                                                                    ShowInCustomizationForm="True" VisibleIndex="3">
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="內容" FieldName="DESCRIPTIONHTML" 
                                                                    ShowInCustomizationForm="True" Visible="False" VisibleIndex="4">
                                                                    <DataItemTemplate>
                                                                        <dx:ASPxLabel ID="labDESCRIPTIONHTML" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                            Text="labDESCRIPTIONHTML" Width="100%">
                                                                        </dx:ASPxLabel>
                                                                    </DataItemTemplate>
                                                                    <EditItemTemplate>
                                                                        <dx:ASPxMemo ID="ASPxMemo1" runat="server" Font-Names="王漢宗細圓體繁" Height="400px" 
                                                                            HorizontalAlign="Left" Text='<%# Bind("DESCRIPTIONHTML") %>' Width="800px">
                                                                        </dx:ASPxMemo>
                                                                    </EditItemTemplate>
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="發布人" FieldName="CREATE_ID" 
                                                                    ShowInCustomizationForm="True" VisibleIndex="6">
                                                                    <Settings AllowHeaderFilter="True" HeaderFilterMode="CheckedList" />
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                    <CellStyle HorizontalAlign="Center">
                                                                    </CellStyle>
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataDateColumn Caption="發布時間" FieldName="CREATE_DT" 
                                                                    ShowInCustomizationForm="True" VisibleIndex="16">
                                                                    <PropertiesDateEdit DisplayFormatString="g" EditFormat="Custom" 
                                                                        EditFormatString="g">
                                                                    </PropertiesDateEdit>
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataDateColumn>
                                                                <dx:GridViewDataTextColumn Caption="有效天數" FieldName="MESGTIME" 
                                                                    ShowInCustomizationForm="True" VisibleIndex="5">
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                    <CellStyle HorizontalAlign="Center">
                                                                    </CellStyle>
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="等級" FieldName="MESGLEVEL" 
                                                                    ShowInCustomizationForm="True" VisibleIndex="18">
                                                                    <Settings AllowHeaderFilter="True" HeaderFilterMode="CheckedList" />
                                                                    <DataItemTemplate>
                                                                        <dx:ASPxLabel ID="labMESGLEVEL" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                            Text="labMESGLEVEL" Width="100%">
                                                                        </dx:ASPxLabel>
                                                                    </DataItemTemplate>
                                                                    <EditItemTemplate>
                                                                        <dx:ASPxComboBox ID="cbMESGLEVEL" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                            TextFormatString="{0}" Value='<%# Bind("MESGLEVEL") %>' Width="100%">
                                                                            <Items>
                                                                                <dx:ListEditItem Text="一般" Value="L" />
                                                                                <dx:ListEditItem Text="重要" Value="H" />
                                                                            </Items>
                                                                        </dx:ASPxComboBox>
                                                                    </EditItemTemplate>
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                    <CellStyle HorizontalAlign="Center">
                                                                    </CellStyle>
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn FieldName="BEG_DATE" ShowInCustomizationForm="True" 
                                                                    Visible="False" VisibleIndex="21">
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn FieldName="END_DATE" ShowInCustomizationForm="True" 
                                                                    Visible="False" VisibleIndex="23">
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="附件" FieldName="FILES" 
                                                                    ShowInCustomizationForm="True" VisibleIndex="20">
                                                                    <DataItemTemplate>
                                                                        <dx:ASPxLabel ID="labFILES" runat="server" Font-Names="王漢宗細圓體繁" Text="labFILES" 
                                                                            Width="100%">
                                                                        </dx:ASPxLabel>
                                                                    </DataItemTemplate>
                                                                    <EditItemTemplate>
                                                                        <asp:Panel ID="pnlFILES" runat="server" Width="500px">
                                                                            <table>
                                                                                <tr>
                                                                                    <td>
                                                                                        <dx:ASPxTextBox ID="tbFILES1" runat="server" BackColor="#CCCCCC" 
                                                                                            ClientInstanceName="txtFILES1" Font-Names="王漢宗細圓體繁" 
                                                                                            Height="24px" NullText="可新增附件檔案" ReadOnly="True" 
                                                                                            Text='<%# GetFiles("tbFILES1") %>' Width="500px">
                                                                                            <Border BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" />
                                                                                        </dx:ASPxTextBox>
                                                                                    </td>
                                                                                    <td>
                                                                                        <div ID="divADDFILES1">
                                                                                            <dx:ASPxButton ID="ADDFILES1" runat="server" AutoPostBack="False" 
                                                                                                Font-Names="王漢宗細圓體繁" Text="新增附件" Width="100px">
                                                                                                <ClientSideEvents Click="function(s, e) {
	tb01.SetText('');
    tb02.SetText('ADDFILES1');
    if (clientPopup.IsVisible == true)
    	return;
	clientPopup.ShowAtElementByID('divADDFILES1');
}" />
                                                                                            </dx:ASPxButton>
                                                                                        </div>
                                                                                    </td>
                                                                                    <td>
                                                                                        <dx:ASPxButton ID="DELFILES1" runat="server" AutoPostBack="False" 
                                                                                            Font-Names="王漢宗細圓體繁" Text="刪除附件" Width="100px">
                                                                                            <ClientSideEvents Click="function(s, e) {
	txtFILES1.SetText('');	
}" />
                                                                                        </dx:ASPxButton>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="style14">
                                                                                        <dx:ASPxTextBox ID="tbFILES2" runat="server" BackColor="#CCCCCC" 
                                                                                            ClientInstanceName="txtFILES2" Font-Names="王漢宗細圓體繁" 
                                                                                            Height="24px" NullText="可新增附件檔案" ReadOnly="True" 
                                                                                            Text='<%# GetFiles("tbFILES2") %>' Width="500px">
                                                                                            <Border BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" />
                                                                                        </dx:ASPxTextBox>
                                                                                    </td>
                                                                                    <td class="style14">
                                                                                        <div ID="divADDFILES2">
                                                                                            <dx:ASPxButton ID="ADDFILES2" runat="server" AutoPostBack="False" 
                                                                                                Font-Names="王漢宗細圓體繁" Text="新增附件" Width="100px">
                                                                                                <ClientSideEvents Click="function(s, e) {
	tb01.SetText('');
    tb02.SetText('ADDFILES2');
    if (clientPopup.IsVisible == true)
    	return;
	clientPopup.ShowAtElementByID('divADDFILES2');
}" />
                                                                                            </dx:ASPxButton>
                                                                                        </div>
                                                                                    </td>
                                                                                    <td class="style14">
                                                                                        <dx:ASPxButton ID="DELFILES2" runat="server" AutoPostBack="False" 
                                                                                            Font-Names="王漢宗細圓體繁" Text="刪除附件" Width="100px">
                                                                                            <ClientSideEvents Click="function(s, e) {
	txtFILES2.SetText('');	
}" />
                                                                                        </dx:ASPxButton>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="style17">
                                                                                        <dx:ASPxTextBox ID="tbFILES3" runat="server" BackColor="#CCCCCC" 
                                                                                            ClientInstanceName="txtFILES3" Font-Names="王漢宗細圓體繁" 
                                                                                            Height="24px" NullText="可新增附件檔案" ReadOnly="True" 
                                                                                            Text='<%# GetFiles("tbFILES3") %>' Width="500px">
                                                                                            <Border BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" />
                                                                                        </dx:ASPxTextBox>
                                                                                    </td>
                                                                                    <td class="style17">
                                                                                        <div ID="divADDFILES3">
                                                                                            <dx:ASPxButton ID="ADDFILES3" runat="server" AutoPostBack="False" 
                                                                                                Font-Names="王漢宗細圓體繁" Text="新增附件" Width="100px">
                                                                                                <ClientSideEvents Click="function(s, e) {
	tb01.SetText('');
    tb02.SetText('ADDFILES3');
    if (clientPopup.IsVisible == true)
    	return;
	clientPopup.ShowAtElementByID('divADDFILES3');
}" />
                                                                                            </dx:ASPxButton>
                                                                                        </div>
                                                                                    </td>
                                                                                    <td class="style17">
                                                                                        <dx:ASPxButton ID="DELFILES3" runat="server" AutoPostBack="False" 
                                                                                            Font-Names="王漢宗細圓體繁" Text="刪除附件" Width="100px">
                                                                                            <ClientSideEvents Click="function(s, e) {
	txtFILES3.SetText('');	
}" />
                                                                                        </dx:ASPxButton>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td>
                                                                                        <dx:ASPxTextBox ID="tbFILES4" runat="server" BackColor="#CCCCCC" 
                                                                                            ClientInstanceName="txtFILES4" Font-Names="王漢宗細圓體繁" 
                                                                                            Height="24px" NullText="可新增附件檔案" ReadOnly="True" 
                                                                                            Text='<%# GetFiles("tbFILES4") %>' Width="500px">
                                                                                            <Border BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" />
                                                                                        </dx:ASPxTextBox>
                                                                                    </td>
                                                                                    <td>
                                                                                        <div ID="divADDFILES4">
                                                                                            <dx:ASPxButton ID="ADDFILES4" runat="server" AutoPostBack="False" 
                                                                                                Font-Names="王漢宗細圓體繁" Text="新增附件" Width="100px">
                                                                                                <ClientSideEvents Click="function(s, e) {
	tb01.SetText('');
    tb02.SetText('ADDFILES4');
    if (clientPopup.IsVisible == true)
    	return;
	clientPopup.ShowAtElementByID('divADDFILES4');
}" />
                                                                                            </dx:ASPxButton>
                                                                                        </div>
                                                                                    </td>
                                                                                    <td>
                                                                                        <dx:ASPxButton ID="DELFILES4" runat="server" AutoPostBack="False" 
                                                                                            Font-Names="王漢宗細圓體繁" Text="刪除附件" Width="100px">
                                                                                            <ClientSideEvents Click="function(s, e) {
	txtFILES4.SetText('');	
}" />
                                                                                        </dx:ASPxButton>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td>
                                                                                        <dx:ASPxTextBox ID="tbFILES5" runat="server" BackColor="#CCCCCC" 
                                                                                            ClientInstanceName="txtFILES5" Font-Names="王漢宗細圓體繁" 
                                                                                            Height="24px" NullText="可新增附件檔案" ReadOnly="True" 
                                                                                            Text='<%# GetFiles("tbFILES5") %>' Width="500px">
                                                                                            <Border BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" />
                                                                                        </dx:ASPxTextBox>
                                                                                    </td>
                                                                                    <td>
                                                                                        <div ID="divADDFILES5">
                                                                                            <dx:ASPxButton ID="ADDFILES5" runat="server" AutoPostBack="False" 
                                                                                                Font-Names="王漢宗細圓體繁" Text="新增附件" Width="100px">
                                                                                                <ClientSideEvents Click="function(s, e) {
	tb01.SetText('');
    tb02.SetText('ADDFILES5');
    if (clientPopup.IsVisible == true)
    	return;
	clientPopup.ShowAtElementByID('divADDFILES5');
}" />
                                                                                            </dx:ASPxButton>
                                                                                        </div>
                                                                                    </td>
                                                                                    <td>
                                                                                        <dx:ASPxButton ID="DELFILES5" runat="server" AutoPostBack="False" 
                                                                                            Font-Names="王漢宗細圓體繁" Text="刪除附件" Width="100px">
                                                                                            <ClientSideEvents Click="function(s, e) {
	txtFILES5.SetText('');	
}" />
                                                                                        </dx:ASPxButton>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td>
                                                                                        &nbsp;</td>
                                                                                    <td>
                                                                                        &nbsp;</td>
                                                                                    <td>
                                                                                        &nbsp;</td>
                                                                                </tr>
                                                                            </table>
                                                                        </asp:Panel>
                                                                    </EditItemTemplate>
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                            </Columns>
                                                            <SettingsBehavior AllowFocusedRow="True" AllowSort="False" 
                                                                ConfirmDelete="True" />
                                                            <SettingsPager AlwaysShowPager="True" PageSize="20" Position="TopAndBottom">
                                                            </SettingsPager>
                                                            <SettingsEditing EditFormColumnCount="1" />
                                                            <SettingsText CommandCancel="取消" CommandDelete="刪除" CommandEdit="修改" 
                                                                CommandNew="新增" CommandUpdate="更新" ConfirmDelete="確認刪除該筆資料?" />
                                                            <SettingsDetail AllowOnlyOneMasterRowExpanded="True" ShowDetailRow="True" />
                                                            <SettingsPopup>
                                                                <HeaderFilter Height="400px" ResizingMode="Postponed" />
                                                            </SettingsPopup>
                                                            <Styles>
                                                                <AlternatingRow Enabled="True">
                                                                </AlternatingRow>
                                                            </Styles>
                                                            <StylesEditors>
                                                                <TextBox Font-Names="王漢宗細圓體繁">
                                                                </TextBox>
                                                                <Calendar Font-Names="王漢宗細圓體繁">
                                                                </Calendar>
                                                            </StylesEditors>
                                                            <Templates>
                                                                <DetailRow>
                                                                    <dx:ASPxRoundPanel ID="ASPxRoundPanel3" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                        HeaderText="公告內容" Theme="DevEx" Width="850px">
                                                                        <PanelCollection>
                                                                            <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                                                                                <dx:ASPxMemo ID="ASPxMemo2" runat="server" Font-Names="王漢宗細圓體繁" Height="400px" 
                                                                                    HorizontalAlign="Left" ReadOnly="True" Width="800px">
                                                                                </dx:ASPxMemo>
                                                                                <br />
                                                                                <dx:ASPxPanel ID="expandFILES" runat="server" Width="100%">
                                                                                    <PanelCollection>
                                                                                        <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                                                                                            <dx:ASPxLabel ID="expandMesg" runat="server" Font-Names="王漢宗細圓體繁" Text="(無附件)">
                                                                                            </dx:ASPxLabel>
                                                                                            <br />
                                                                                        </dx:PanelContent>
                                                                                    </PanelCollection>
                                                                                </dx:ASPxPanel>
                                                                                <br />
                                                                                <br />
                                                                                <br />
                                                                                <br />
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
                                        <br />
                                    </dx:PanelContent>
                                </PanelCollection>
                            </dx:ASPxPanel>
                            <br />
                            <dx:ASPxPopupControl ID="ASPxPopupControl1" runat="server" AllowDragging="True" 
                                ClientInstanceName="clientPopup" CloseAction="CloseButton" 
                                CssClass="pie_radius" EnableTheming="True" Font-Bold="True" 
                                Font-Names="王漢宗細圓體繁" Font-Size="Small" HeaderText="附件上傳" ShowShadow="False" 
                                Target="_blank" Theme="Office2010Silver">
                                <ClientSideEvents CloseUp="function(s, e) {
	var Value1 = tb01.GetValue();
	var Value2 = tb02.GetValue();
	if (Value2 == &quot;ADDFILES1&quot;) 
	{
		if (Value1.length &gt; 0) 
		{
			txtFILES1.SetText(Value1);
		}
	}
	if (Value2 == &quot;ADDFILES2&quot;) 
	{
		if (Value1.length &gt; 0) 
		{
			txtFILES2.SetText(Value1);
		}
	}
	if (Value2 == &quot;ADDFILES3&quot;) {
		if (Value1.length &gt; 0) 
		{
			txtFILES3.SetText(Value1);
		}
	}
	if (Value2 == &quot;ADDFILES4&quot;) {
		if (Value1.length &gt; 0) 
		{
			txtFILES4.SetText(Value1);
		}
	}
	if (Value2 == &quot;ADDFILES5&quot;) {
		if (Value1.length &gt; 0) 
		{
			txtFILES5.SetText(Value1);
		}
	}
    if (clientPopup.IsVisible == true)
    	clientPopup.Hide();
}" />
                                <ContentCollection>
                                    <dx:PopupControlContentControl runat="server" SupportsDisabledAttribute="True">
                                        <div align="left">
                                            <dx:ASPxPanel ID="ASPxPanel2" runat="server" Width="400px">
                                                <PanelCollection>
                                                    <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                                                        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                                            <ContentTemplate>
                                                                <table style="width:100%;">
                                                                    <tr>
                                                                        <td>
                                                                            <dx:ASPxTextBox ID="ASPxTextBox1" runat="server" BackColor="#CCCCCC" 
                                                                                ClientInstanceName="tb01" Height="28px" ReadOnly="True" Width="100%">
                                                                                <BorderTop BorderColor="#999999" BorderStyle="Solid" BorderWidth="2px" />
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            <dx:ASPxTextBox ID="ASPxTextBox2" runat="server" ClientInstanceName="tb02" 
                                                                                ClientVisible="False" ReadOnly="True" Width="100%">
                                                                                <Border BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" />
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            <asp:FileUpload ID="FileUpload1" runat="server" Height="28px" Width="100%" />
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            <dx:ASPxButton ID="btnFileUpload" runat="server" Font-Names="王漢宗細圓體繁" OnClick="btnFileUpload_Click" 
                                                                                Text="上傳" Width="100px">
                                                                            </dx:ASPxButton>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            &nbsp;</td>
                                                                    </tr>
                                                                </table>
                                                            </ContentTemplate>
                                                            <Triggers>
                                                                <asp:PostBackTrigger ControlID="btnFileUpload" />
                                                            </Triggers>
                                                        </asp:UpdatePanel>
                                                    </dx:PanelContent>
                                                </PanelCollection>
                                            </dx:ASPxPanel>
                                        </div>
                                    </dx:PopupControlContentControl>
                                </ContentCollection>
                            </dx:ASPxPopupControl>
                        </div>
                    <br />
                    <br />
                    <br />
                        <asp:EntityDataSource ID="edsPOS_POSTDOC" runat="server" 
                            ConnectionString="name=NEWPMSEntities" DefaultContainerName="NEWPMSEntities" 
                            EnableDelete="True" EnableFlattening="False" EnableInsert="True" 
                            EnableUpdate="True" EntitySetName="HQ_postdoc" 
                            OrderBy="it.CREATE_DT desc">
                        </asp:EntityDataSource>
                        <asp:EntityDataSource ID="edsPOS_storedat" runat="server" 
                            ConnectionString="name=NEWPMSEntities" DefaultContainerName="NEWPMSEntities" 
                            EnableFlattening="False" EntitySetName="vPOS_storedat" 
                            OrderBy="it.NO_STORE">
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

