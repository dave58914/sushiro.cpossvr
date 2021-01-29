<%@ page title="" language="C#" masterpagefile="~/MainPage.master" autoeventwireup="true" inherits="HQ_Repair, App_Web_hq_repair.aspx.cdcab7d2" %>

<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxTabControl" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxClasses" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxRoundPanel" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPanel" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.ASPxGridView.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxEditors.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.ASPxHtmlEditor.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxHtmlEditor" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxSpellChecker.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxSpellChecker" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPopupControl" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.ASPxGridView.v12.1.Export, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView.Export" tagprefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .dxgvFocusedRow .dxgv {
            background-color: #33B5E5;
<%--
            background-color: rgba(51,181,229,1.0);
            color: Black;
            opacity: .3;
--%>            
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
        function CSharpCallJs(param1) { 
            alert(param1); 
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
                            <dx:ASPxPanel ID="ASPxPanel1" runat="server" RenderMode="Table">
                                <PanelCollection>
                                    <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                                        <div align="left">
                                            <table>
                                                <tr>
                                                    <td>
                                                        <asp:Panel ID="Panel3" runat="server" Font-Names="王漢宗細圓體繁">
                                                            <table class="style8">
                                                                <tr>
                                                                    <td align="right" style="font-family: 王漢宗細圓體繁; font-size: small">
                                                                        店別</td>
                                                                    <td align="right">
                                                                        <dx:ASPxComboBox ID="cbSTORE_NO" runat="server" DataSourceID="edsPOS_storedat" 
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
                                                                        <dx:ASPxButton ID="btnQUERY" runat="server" AutoPostBack="False" 
                                                                            CssClass="button search icon" CssPostfix="button" Font-Names="王漢宗細圓體繁" 
                                                                            Font-Size="Small" OnClick="btnQUERY_Click" Text="查詢" Width="90px">
                                                                        </dx:ASPxButton>
                                                                    </td>
                                                                    <td>
                                                                        <dx:ASPxButton ID="btnEXPORT" runat="server" AutoPostBack="False" 
                                                                            CssClass="button add icon" CssPostfix="button" Font-Names="王漢宗細圓體繁" 
                                                                            Font-Size="Small" Text="新增" Width="90px">
                                                                            <ClientSideEvents Click="function(s, e) {
	grid.AddNewRow();	
}" />
                                                                        </dx:ASPxButton>
                                                                    </td>
                                                                    <td align="left">
                                                                        <dx:ASPxButton ID="btnEXPORT0" runat="server" AutoPostBack="False" 
                                                                            CssClass="button log icon" CssPostfix="button" Font-Names="王漢宗細圓體繁" 
                                                                            Font-Size="Small" OnClick="btnEXPORT_Click" Text="匯出" Width="90px">
                                                                        </dx:ASPxButton>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </asp:Panel>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </dx:PanelContent>
                                </PanelCollection>
                            </dx:ASPxPanel>
                            <div align="left">
                                <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" 
                                    ClientInstanceName="grid" DataSourceID="edsHQ_REPAIR" Font-Names="王漢宗細圓體繁" KeyFieldName="MsgId" 
                                    OnCellEditorInitialize="ASPxGridView1_CellEditorInitialize" 
                                    OnCommandButtonInitialize="ASPxGridView1_CommandButtonInitialize" 
                                    OnDetailRowExpandedChanged="ASPxGridView1_DetailRowExpandedChanged" 
                                    OnHeaderFilterFillItems="ASPxGridView1_HeaderFilterFillItems" 
                                    OnHtmlDataCellPrepared="ASPxGridView1_HtmlDataCellPrepared" 
                                    OnHtmlRowCreated="ASPxGridView1_HtmlRowCreated" 
                                    OnHtmlRowPrepared="ASPxGridView1_HtmlRowPrepared" 
                                    OnInitNewRow="ASPxGridView1_InitNewRow" 
                                    OnRowInserted="ASPxGridView1_RowInserted" 
                                    OnRowInserting="ASPxGridView1_RowInserting" 
                                    OnRowUpdated="ASPxGridView1_RowUpdated" 
                                    OnRowUpdating="ASPxGridView1_RowUpdating" 
                                    OnRowValidating="ASPxGridView1_RowValidating" 
                                    OnStartRowEditing="ASPxGridView1_StartRowEditing" Width="100%" 
                                    OnRowDeleting="ASPxGridView1_RowDeleting" 
                                    OnRowDeleted="ASPxGridView1_RowDeleted">
                                    <ClientSideEvents EndCallback="function(s, e) {
	if (s.cpUpdatedMessage) 
	{
    	alert(s.cpUpdatedMessage);
        delete s.cpUpdatedMessage;
	}	
}" />
                                    <Columns>
                                        <dx:GridViewCommandColumn ShowInCustomizationForm="True" VisibleIndex="0">
                                            <EditButton Visible="True">
                                            </EditButton>
                                            <DeleteButton Visible="True">
                                            </DeleteButton>
                                        </dx:GridViewCommandColumn>
                                        <dx:GridViewDataTextColumn Caption="MsgId" FieldName="MsgId" 
                                            ShowInCustomizationForm="True" Visible="False" VisibleIndex="1">
                                        </dx:GridViewDataTextColumn>
                                        <dx:GridViewDataTextColumn Caption="報修編號" FieldName="RP_UID" ReadOnly="True" 
                                            ShowInCustomizationForm="True" VisibleIndex="2">
                                            <Settings AllowSort="True" />
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <CellStyle Font-Size="X-Small" HorizontalAlign="Center">
                                            </CellStyle>
                                        </dx:GridViewDataTextColumn>
                                        <dx:GridViewDataTextColumn Caption="狀態" FieldName="RP_STATUS" 
                                            ShowInCustomizationForm="True" VisibleIndex="4">
                                            <Settings AllowHeaderFilter="True" HeaderFilterMode="CheckedList" />
                                            <EditItemTemplate>
                                                <dx:ASPxComboBox ID="cbRP_STATUS" runat="server" Font-Names="王漢宗細圓體繁" 
                                                    TextFormatString="{0}" Value='<%# Bind("RP_STATUS") %>' Width="100%">
                                                    <Items>
                                                        <dx:ListEditItem Text="提出" Value="提出" />
                                                        <dx:ListEditItem Text="處理中" Value="處理中" />
                                                        <dx:ListEditItem Text="已處理" Value="已處理" />
                                                        <dx:ListEditItem Text="已結案" Value="已結案" />
                                                    </Items>
                                                </dx:ASPxComboBox>
                                            </EditItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                        </dx:GridViewDataTextColumn>
                                        <dx:GridViewDataTextColumn Caption="報修店別" FieldName="NO_STORE" 
                                            ShowInCustomizationForm="True" VisibleIndex="5">
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
                                        <dx:GridViewDataMemoColumn Caption="報修問題" FieldName="RP_CONTENT" 
                                            ShowInCustomizationForm="True" VisibleIndex="6">
                                            <HeaderStyle HorizontalAlign="Center" />
                                        </dx:GridViewDataMemoColumn>
                                        <dx:GridViewDataMemoColumn Caption="結案內容" FieldName="RP_DESC" 
                                            ShowInCustomizationForm="True" VisibleIndex="7">
                                            <HeaderStyle HorizontalAlign="Center" />
                                        </dx:GridViewDataMemoColumn>
                                        <dx:GridViewDataDateColumn Caption="維修期限" FieldName="RP_EXPIRY" 
                                            ShowInCustomizationForm="True" VisibleIndex="15">
                                            <PropertiesDateEdit DisplayFormatString="yyyy年MM月dd日" EditFormat="Custom" 
                                                EditFormatString="yyyy年MM月dd日">
                                            </PropertiesDateEdit>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <CellStyle HorizontalAlign="Center">
                                            </CellStyle>
                                        </dx:GridViewDataDateColumn>
                                        <dx:GridViewDataTextColumn Caption="問題分類" FieldName="RP_TYPE" 
                                            ShowInCustomizationForm="True" VisibleIndex="17">
                                            <PropertiesTextEdit DisplayFormatString="F">
                                            </PropertiesTextEdit>
                                            <Settings AllowHeaderFilter="True" HeaderFilterMode="CheckedList" />
                                            <DataItemTemplate>
                                                <dx:ASPxLabel ID="labRP_TYPE" runat="server" Font-Names="王漢宗細圓體繁" 
                                                    Text="labRP_TYPE" Width="100%">
                                                </dx:ASPxLabel>
                                            </DataItemTemplate>
                                            <EditItemTemplate>
                                                <dx:ASPxComboBox ID="cbRP_TYPE" runat="server" 
                                                    DataSourceID="edsSYS_repairptype" Font-Names="王漢宗細圓體繁" TextField="CLASS_NAME" 
                                                    TextFormatString="{0}; {1}" Value='<%# Bind("RP_TYPE") %>' 
                                                    ValueField="CLASS_NO" Width="100%">
                                                    <Columns>
                                                        <dx:ListBoxColumn Caption="問題分類編號" FieldName="CLASS_NO" Name="CLASS_NO" />
                                                        <dx:ListBoxColumn Caption="問題分類名稱" FieldName="CLASS_NAME" Name="CLASS_NAME" />
                                                    </Columns>
                                                </dx:ASPxComboBox>
                                            </EditItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                        </dx:GridViewDataTextColumn>
                                        <dx:GridViewDataTextColumn Caption="維修廠商" FieldName="RP_FACTORY" 
                                            ShowInCustomizationForm="True" VisibleIndex="8">
                                            <Settings AllowHeaderFilter="True" HeaderFilterMode="CheckedList" />
                                            <EditItemTemplate>
                                                <dx:ASPxComboBox ID="cbRP_FACTORY" runat="server" DataSourceID="edsSYS_factory" 
                                                    Font-Names="王漢宗細圓體繁" TextField="UNIT_NAME" TextFormatString="{0}" 
                                                    Value='<%# Bind("RP_FACTORY") %>' ValueField="UNIT_NAME" Width="100%">
                                                    <Columns>
                                                        <dx:ListBoxColumn Caption="維修廠商" FieldName="UNIT_NAME" Name="UNIT_NAME" />
                                                    </Columns>
                                                </dx:ASPxComboBox>
                                            </EditItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <CellStyle HorizontalAlign="Center">
                                            </CellStyle>
                                        </dx:GridViewDataTextColumn>
                                        <dx:GridViewDataTextColumn Caption="附件檔" FieldName="FILES" 
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
                                                                        Font-Names="王漢宗細圓體繁" Text="新增附件" 
                                                                        Width="100px">
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
                                                                <dx:ASPxButton ID="DELFILES1" runat="server" AutoPostBack="False" Font-Names="王漢宗細圓體繁" 
                                                                    Text="刪除附件" Width="100px">
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
                                                                        Font-Names="王漢宗細圓體繁" Text="新增附件" 
                                                                        Width="100px">
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
                                                                <dx:ASPxButton ID="DELFILES2" runat="server" AutoPostBack="False" Font-Names="王漢宗細圓體繁" 
                                                                    Text="刪除附件" Width="100px">
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
                                                                        Font-Names="王漢宗細圓體繁" Text="新增附件" 
                                                                        Width="100px">
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
                                                                <dx:ASPxButton ID="DELFILES3" runat="server" AutoPostBack="False" Font-Names="王漢宗細圓體繁" 
                                                                    Text="刪除附件" Width="100px">
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
                                                                        Font-Names="王漢宗細圓體繁" Text="新增附件" 
                                                                        Width="100px">
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
                                                                <dx:ASPxButton ID="DELFILES4" runat="server" AutoPostBack="False" Font-Names="王漢宗細圓體繁" 
                                                                    Text="刪除附件" Width="100px">
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
                                                                        Font-Names="王漢宗細圓體繁" Text="新增附件" 
                                                                        Width="100px">
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
                                                                <dx:ASPxButton ID="DELFILES5" runat="server" AutoPostBack="False" Font-Names="王漢宗細圓體繁" 
                                                                    Text="刪除附件" Width="100px">
                                                                    <ClientSideEvents Click="function(s, e) {
	txtFILES5.SetText('');	
}" />
                                                                </dx:ASPxButton>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </asp:Panel>
                                            </EditItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <CellStyle HorizontalAlign="Center">
                                            </CellStyle>
                                        </dx:GridViewDataTextColumn>
                                        <dx:GridViewDataTextColumn Caption="報修者" FieldName="CREATE_ID" 
                                            ShowInCustomizationForm="True" VisibleIndex="23">
                                            <HeaderStyle HorizontalAlign="Center" />
                                        </dx:GridViewDataTextColumn>
                                        <dx:GridViewDataDateColumn Caption="報修日期" FieldName="CREATE_DT" 
                                            ShowInCustomizationForm="True" VisibleIndex="3">
                                            <PropertiesDateEdit DisplayFormatString="yyyy年MM月dd日" EditFormat="Custom" 
                                                EditFormatString="yyyy年MM月dd日">
                                            </PropertiesDateEdit>
                                            <HeaderStyle HorizontalAlign="Center" />
                                        </dx:GridViewDataDateColumn>
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
                                            <dx:ASPxPanel ID="expandFILES" runat="server" Height="100%" Width="100%">
                                                <PanelCollection>
                                                    <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                                                        <div align="left">
                                                            <dx:ASPxLabel ID="expandMesg" runat="server" Text="(無附件)" Font-Names="王漢宗細圓體繁" 
                                                                Width="100%">
                                                            </dx:ASPxLabel>
                                                        </div>
                                                    </dx:PanelContent>
                                                </PanelCollection>
                                            </dx:ASPxPanel>
                                        </DetailRow>
                                    </Templates>
                                </dx:ASPxGridView>
                            </div>
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
                        <asp:EntityDataSource ID="edsHQ_REPAIR" runat="server" 
                            ConnectionString="name=NEWPMSEntities" DefaultContainerName="NEWPMSEntities" 
                            EnableDelete="True" EnableFlattening="False" EnableInsert="True" 
                            EnableUpdate="True" EntitySetName="HQ_Repair" 
                            OrderBy="it.CREATE_DT desc">
                        </asp:EntityDataSource>
                        <asp:EntityDataSource ID="edsPOS_storedat" runat="server" 
                            ConnectionString="name=NEWPMSEntities" DefaultContainerName="NEWPMSEntities" 
                            EnableFlattening="False" EntitySetName="vPOS_storedat" 
                            OrderBy="it.IDX" EntityTypeFilter="" Select="">
                        </asp:EntityDataSource>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:NEWPMSConnectionString %>" 
                            ProviderName="<%$ ConnectionStrings:NEWPMSConnectionString.ProviderName %>">
                        </asp:SqlDataSource>
                        <asp:EntityDataSource ID="edsSYS_factory" runat="server" 
                            ConnectionString="name=NEWPMSEntities" DefaultContainerName="NEWPMSEntities" 
                            EnableFlattening="False" EntitySetName="SYS_factory" OrderBy="it.UNIT_NAME">
                        </asp:EntityDataSource>
                        <asp:EntityDataSource ID="edsSYS_repairptype" runat="server" 
                            ConnectionString="name=NEWPMSEntities" DefaultContainerName="NEWPMSEntities" 
                            EnableFlattening="False" EntitySetName="SYS_repairptype" 
                            OrderBy="it.CLASS_NO" EntityTypeFilter="" Select="">
                        </asp:EntityDataSource>
                        <asp:SqlDataSource ID="sdsLINE_Notify" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:NEWPMSConnectionString %>" SelectCommand="select access_token from dbo.LineNotify
"></asp:SqlDataSource>
                        <asp:SqlDataSource ID="sdsHQ_Repair" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:NEWPMSConnectionString %>" SelectCommand="select * from dbo.HQ_Repair
where
CREATE_DT&gt;=@BEGDT and CREATE_DT&lt;=@ENDDT
and NO_STORE=@NO_STORE
">
                            <SelectParameters>
                                <asp:Parameter Name="BEGDT" />
                                <asp:Parameter Name="ENDDT" />
                                <asp:Parameter Name="NO_STORE" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <dx:ASPxGridViewExporter ID="ASPxGridViewExporter1" runat="server" 
                            GridViewID="ASPxGridView1" 
                            OnRenderBrick="ASPxGridViewExporter1_RenderBrick">
                        </dx:ASPxGridViewExporter>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:TabPage>
        </TabPages>
    </dx:ASPxPageControl>
</asp:Content>

