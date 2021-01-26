<%@ page title="" language="C#" masterpagefile="~/MainPage.master" autoeventwireup="true" inherits="ECR_StoreNoSetup, App_Web_ecr_storenosetup.aspx.cdcab7d2" %>

<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxTabControl" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxClasses" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxRoundPanel" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPanel" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.ASPxGridView.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxEditors.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.ASPxGridView.v12.1.Export, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView.Export" tagprefix="dx" %>

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
    <link href="App_Themes/CustomTheme/Css/style.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script type="text/javascript">
    function onGrid1ButtonClick(s, e) {
        switch (e.buttonID) {
            case "Detail":
                //if (confirm("确定要执行这个操作么？"))
                    e.processOnServer = true;
                break;
            default: break;
        }
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
                                            <table class="style8">
                                                <tr>
                                                    <td>
                                                        <asp:Panel ID="Panel2" runat="server" HorizontalAlign="Left" Width="175px">
                                                            <table style="width: 100%;">
                                                                <tr>
                                                                    <td>
                                                                        <dx:ASPxButton ID="btnADD" runat="server" AutoPostBack="False" 
                                                                            CssClass="button add icon" CssPostfix="button" Font-Names="王漢宗細圓體繁" 
                                                                            Font-Size="Small" Text="新增店號">
                                                                            <ClientSideEvents Click="function(s, e) {
	gridSTORE.AddNewRow();
}" />
                                                                        </dx:ASPxButton>
                                                                    </td>
                                                                    <td>
                                                                        <dx:ASPxButton ID="btnEXPORT" runat="server" AutoPostBack="False" 
                                                                            CssClass="button log icon" CssPostfix="button" Font-Names="王漢宗細圓體繁" 
                                                                            Font-Size="Small" OnClick="btnEXPORT_Click" Text="匯出">
                                                                        </dx:ASPxButton>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </asp:Panel>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <dx:ASPxGridView ID="ASPxGridViewSTORE" runat="server" 
                                                            AutoGenerateColumns="False" ClientInstanceName="gridSTORE" 
                                                            DataSourceID="edsPOS_storedat" Font-Names="王漢宗細圓體繁" 
                                                            KeyFieldName="MsgId" 
                                                            OnCellEditorInitialize="ASPxGridViewSTORE_CellEditorInitialize" 
                                                            OnDetailRowExpandedChanged="ASPxGridViewSTORE_DetailRowExpandedChanged" 
                                                            OnHtmlDataCellPrepared="ASPxGridViewSTORE_HtmlDataCellPrepared" 
                                                            OnHtmlRowCreated="ASPxGridViewSTORE_HtmlRowCreated" 
                                                            OnInitNewRow="ASPxGridViewSTORE_InitNewRow" 
                                                            OnRowInserting="ASPxGridViewSTORE_RowInserting" 
                                                            OnRowUpdating="ASPxGridViewSTORE_RowUpdating" 
                                                            OnRowValidating="ASPxGridViewSTORE_RowValidating" 
                                                            OnStartRowEditing="ASPxGridViewSTORE_StartRowEditing">
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
                                                                <dx:GridViewDataTextColumn FieldName="MsgId" ReadOnly="True" 
                                                                    ShowInCustomizationForm="True" Visible="False" VisibleIndex="1">
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="店鋪類型" FieldName="TYPE_STORE" 
                                                                    ShowInCustomizationForm="True" VisibleIndex="4">
                                                                    <PropertiesTextEdit MaxLength="1">
                                                                    </PropertiesTextEdit>
                                                                    <DataItemTemplate>
                                                                        <dx:ASPxLabel ID="labTYPE_STORE" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                            Text="labTYPE_STORE" Width="100%">
                                                                        </dx:ASPxLabel>
                                                                    </DataItemTemplate>
                                                                    <EditItemTemplate>
                                                                        <dx:ASPxComboBox ID="cbTYPE_STORE" runat="server" 
                                                                            DataSourceID="edsSYS_storetype" Font-Names="王漢宗細圓體繁" TextField="KEY_TEXT" 
                                                                            TextFormatString="{0}; {1}" Value='<%# Bind("TYPE_STORE") %>' 
                                                                            ValueField="KEY_ID" Width="100%">
                                                                            <Columns>
                                                                                <dx:ListBoxColumn Caption="代碼" FieldName="KEY_ID" Name="KEY_ID" />
                                                                                <dx:ListBoxColumn Caption="說明" FieldName="KEY_TEXT" Name="KEY_TEXT" />
                                                                            </Columns>
                                                                            <ValidationSettings ErrorText="">
                                                                                <RequiredField ErrorText="" />
                                                                            </ValidationSettings>
                                                                        </dx:ASPxComboBox>
                                                                    </EditItemTemplate>
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="店號" ExportWidth="6" FieldName="NO_STORE" 
                                                                    ShowInCustomizationForm="True" VisibleIndex="2">
                                                                    <PropertiesTextEdit MaxLength="6">
                                                                    </PropertiesTextEdit>
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="店名" ExportWidth="16" FieldName="NM_STORE" 
                                                                    ShowInCustomizationForm="True" VisibleIndex="3">
                                                                    <PropertiesTextEdit MaxLength="16">
                                                                    </PropertiesTextEdit>
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="店址" ExportWidth="50" FieldName="AD_STORE" 
                                                                    ShowInCustomizationForm="True" VisibleIndex="5">
                                                                    <PropertiesTextEdit MaxLength="50">
                                                                    </PropertiesTextEdit>
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="營利事業編號" ExportWidth="10" 
                                                                    FieldName="NO_BUSINESS" ShowInCustomizationForm="True" Visible="False" 
                                                                    VisibleIndex="6">
                                                                    <PropertiesTextEdit MaxLength="10">
                                                                    </PropertiesTextEdit>
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="統一編號" ExportWidth="8" 
                                                                    FieldName="NO_RECEIPT" ShowInCustomizationForm="True" VisibleIndex="7">
                                                                    <PropertiesTextEdit MaxLength="8">
                                                                    </PropertiesTextEdit>
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="稅籍縣市" ExportWidth="8" FieldName="NM_TAX" 
                                                                    ShowInCustomizationForm="True" Visible="False" VisibleIndex="8">
                                                                    <PropertiesTextEdit MaxLength="8">
                                                                    </PropertiesTextEdit>
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="稅籍編號" ExportWidth="10" 
                                                                    FieldName="NO_TAXNUM" ShowInCustomizationForm="True" Visible="False" 
                                                                    VisibleIndex="9">
                                                                    <PropertiesTextEdit MaxLength="10">
                                                                    </PropertiesTextEdit>
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="電話區域碼" ExportWidth="3" 
                                                                    FieldName="NO_TELAREA" ShowInCustomizationForm="True" VisibleIndex="10">
                                                                    <PropertiesTextEdit MaxLength="3">
                                                                    </PropertiesTextEdit>
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="電話號碼" ExportWidth="8" FieldName="NO_TEL" 
                                                                    ShowInCustomizationForm="True" VisibleIndex="11">
                                                                    <PropertiesTextEdit MaxLength="8">
                                                                    </PropertiesTextEdit>
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="配送區域" FieldName="FG_AREABASE" 
                                                                    ShowInCustomizationForm="True" Visible="False" VisibleIndex="12">
                                                                    <PropertiesTextEdit MaxLength="1">
                                                                    </PropertiesTextEdit>
                                                                    <EditItemTemplate>
                                                                        <dx:ASPxComboBox ID="cbFG_AREABASE" runat="server" 
                                                                            DataSourceID="edsSYS_storefgareabase" Font-Names="王漢宗細圓體繁" TextField="KEY_TEXT" 
                                                                            TextFormatString="{0}; {1}" Value='<%# Bind("FG_AREABASE") %>' 
                                                                            ValueField="KEY_ID" Width="100%">
                                                                            <Columns>
                                                                                <dx:ListBoxColumn Caption="代碼" FieldName="KEY_ID" Name="KEY_ID" />
                                                                                <dx:ListBoxColumn Caption="說明" FieldName="KEY_TEXT" Name="KEY_TEXT" />
                                                                            </Columns>
                                                                            <ValidationSettings ErrorText="">
                                                                                <RequiredField ErrorText="" />
                                                                            </ValidationSettings>
                                                                        </dx:ASPxComboBox>
                                                                    </EditItemTemplate>
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="部別代號" FieldName="ID_DEP" 
                                                                    ShowInCustomizationForm="True" Visible="False" VisibleIndex="13">
                                                                    <PropertiesTextEdit MaxLength="4">
                                                                    </PropertiesTextEdit>
                                                                    <EditItemTemplate>
                                                                        <dx:ASPxComboBox ID="cbID_DEP" runat="server" DataSourceID="edsSYS_storeiddep" 
                                                                            Font-Names="王漢宗細圓體繁" TextField="KEY_TEXT" TextFormatString="{0}; {1}" 
                                                                            Value='<%# Bind("ID_DEP") %>' ValueField="KEY_ID" Width="100%">
                                                                            <Columns>
                                                                                <dx:ListBoxColumn Caption="代碼" FieldName="KEY_ID" Name="KEY_ID" />
                                                                                <dx:ListBoxColumn Caption="說明" FieldName="KEY_TEXT" Name="KEY_TEXT" />
                                                                            </Columns>
                                                                            <ValidationSettings ErrorText="">
                                                                                <RequiredField ErrorText="" />
                                                                            </ValidationSettings>
                                                                        </dx:ASPxComboBox>
                                                                    </EditItemTemplate>
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="所屬區域" ExportWidth="6" FieldName="ID_OFFICE" 
                                                                    ShowInCustomizationForm="True" VisibleIndex="14">
                                                                    <PropertiesTextEdit MaxLength="6">
                                                                    </PropertiesTextEdit>
                                                                    <DataItemTemplate>
                                                                        <dx:ASPxLabel ID="labID_OFFICE" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                            Text="labID_OFFICE" Width="100%">
                                                                        </dx:ASPxLabel>
                                                                    </DataItemTemplate>
                                                                    <EditItemTemplate>
                                                                        <dx:ASPxComboBox ID="cbID_OFFICE" runat="server" DataSourceID="edsSYS_CWB" 
                                                                            Font-Names="王漢宗細圓體繁" Text='<%# Bind("ID_OFFICE") %>' TextField="KEY_TEXT" 
                                                                            TextFormatString="{0}" ValueField="KEY_ID" Width="100%">
                                                                            <Columns>
                                                                                <dx:ListBoxColumn Caption="代碼" FieldName="KEY_ID" Name="KEY_ID" 
                                                                                    Visible="False" />
                                                                                <dx:ListBoxColumn Caption="區域" FieldName="KEY_TEXT" Name="KEY_TEXT" />
                                                                            </Columns>
                                                                            <ValidationSettings ErrorText="">
                                                                                <RequiredField ErrorText="" />
                                                                            </ValidationSettings>
                                                                        </dx:ASPxComboBox>
                                                                    </EditItemTemplate>
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="開店日期" ExportWidth="8" FieldName="DT_OPEN" 
                                                                    ShowInCustomizationForm="True" VisibleIndex="15">
                                                                    <PropertiesTextEdit MaxLength="8">
                                                                    </PropertiesTextEdit>
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="店鋪型態" FieldName="FG_STORE" 
                                                                    ShowInCustomizationForm="True" VisibleIndex="16">
                                                                    <PropertiesTextEdit MaxLength="1">
                                                                    </PropertiesTextEdit>
                                                                    <DataItemTemplate>
                                                                        <dx:ASPxLabel ID="labFG_STORE" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                            Text="labFG_STORE" Width="100%">
                                                                        </dx:ASPxLabel>
                                                                    </DataItemTemplate>
                                                                    <EditItemTemplate>
                                                                        <dx:ASPxComboBox ID="cbFG_STORE" runat="server" 
                                                                            DataSourceID="edsSYS_storefgstore" Font-Names="王漢宗細圓體繁" TextField="KEY_TEXT" 
                                                                            TextFormatString="{0}; {1}" Value='<%# Bind("FG_STORE") %>' ValueField="KEY_ID" 
                                                                            Width="100%">
                                                                            <Columns>
                                                                                <dx:ListBoxColumn Caption="代碼" FieldName="KEY_ID" Name="KEY_ID" />
                                                                                <dx:ListBoxColumn Caption="說明" FieldName="KEY_TEXT" Name="KEY_TEXT" />
                                                                            </Columns>
                                                                            <ValidationSettings ErrorText="">
                                                                                <RequiredField ErrorText="" />
                                                                            </ValidationSettings>
                                                                        </dx:ASPxComboBox>
                                                                    </EditItemTemplate>
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="自動訂購" FieldName="FG_ORD" 
                                                                    ShowInCustomizationForm="True" Visible="False" VisibleIndex="17">
                                                                    <PropertiesTextEdit MaxLength="1">
                                                                    </PropertiesTextEdit>
                                                                    <EditItemTemplate>
                                                                        <dx:ASPxComboBox ID="cbFG_ORD" runat="server" DataSourceID="edsSYS_storefgord" 
                                                                            Font-Names="王漢宗細圓體繁" TextField="KEY_TEXT" TextFormatString="{0}; {1}" 
                                                                            Value='<%# Bind("FG_ORD") %>' ValueField="KEY_ID" Width="100%">
                                                                            <Columns>
                                                                                <dx:ListBoxColumn Caption="代碼" FieldName="KEY_ID" Name="KEY_ID" />
                                                                                <dx:ListBoxColumn Caption="說明" FieldName="KEY_TEXT" Name="KEY_TEXT" />
                                                                            </Columns>
                                                                            <ValidationSettings ErrorText="">
                                                                                <RequiredField ErrorText="" />
                                                                            </ValidationSettings>
                                                                        </dx:ASPxComboBox>
                                                                    </EditItemTemplate>
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="免稅店註記" FieldName="FG_TAXSTORE" 
                                                                    ShowInCustomizationForm="True" Visible="False" VisibleIndex="18">
                                                                    <PropertiesTextEdit MaxLength="1">
                                                                    </PropertiesTextEdit>
                                                                    <EditItemTemplate>
                                                                        <dx:ASPxComboBox ID="cbFG_TAXSTORE" runat="server" 
                                                                            DataSourceID="edsSYS_storefgtaxstore" Font-Names="王漢宗細圓體繁" TextField="KEY_TEXT" 
                                                                            TextFormatString="{0}; {1}" Value='<%# Bind("FG_TAXSTORE") %>' 
                                                                            ValueField="KEY_ID" Width="100%">
                                                                            <Columns>
                                                                                <dx:ListBoxColumn Caption="代碼" FieldName="KEY_ID" Name="KEY_ID" />
                                                                                <dx:ListBoxColumn Caption="說明" FieldName="KEY_TEXT" Name="KEY_TEXT" />
                                                                            </Columns>
                                                                            <ValidationSettings ErrorText="">
                                                                                <RequiredField ErrorText="" />
                                                                            </ValidationSettings>
                                                                        </dx:ASPxComboBox>
                                                                    </EditItemTemplate>
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="VAN電話號碼一" ExportWidth="12" 
                                                                    FieldName="NO_VANONL1" ShowInCustomizationForm="True" Visible="False" 
                                                                    VisibleIndex="19">
                                                                    <PropertiesTextEdit MaxLength="12">
                                                                    </PropertiesTextEdit>
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="VAN電話號碼二" ExportWidth="12" 
                                                                    FieldName="NO_VANONL2" ShowInCustomizationForm="True" Visible="False" 
                                                                    VisibleIndex="20">
                                                                    <PropertiesTextEdit MaxLength="12">
                                                                    </PropertiesTextEdit>
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="VAN電話號碼三" ExportWidth="12" 
                                                                    FieldName="NO_VANONL3" ShowInCustomizationForm="True" Visible="False" 
                                                                    VisibleIndex="21">
                                                                    <PropertiesTextEdit MaxLength="12">
                                                                    </PropertiesTextEdit>
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="營業稅率" ExportWidth="3" FieldName="RA_TAX" 
                                                                    ShowInCustomizationForm="True" Visible="False" VisibleIndex="22">
                                                                    <PropertiesTextEdit MaxLength="3">
                                                                    </PropertiesTextEdit>
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="發票代表店章名稱1" ExportWidth="24" 
                                                                    FieldName="NM_RCPTOP1" ShowInCustomizationForm="True" Visible="False" 
                                                                    VisibleIndex="23">
                                                                    <PropertiesTextEdit MaxLength="24">
                                                                    </PropertiesTextEdit>
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="發票代表店章名稱2" ExportWidth="24" 
                                                                    FieldName="NM_RCPTOP2" ShowInCustomizationForm="True" Visible="False" 
                                                                    VisibleIndex="24">
                                                                    <PropertiesTextEdit MaxLength="24">
                                                                    </PropertiesTextEdit>
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="發票代表店章統一編號" ExportWidth="8" 
                                                                    FieldName="NM_RCPTOP3" ShowInCustomizationForm="True" Visible="False" 
                                                                    VisibleIndex="25">
                                                                    <PropertiesTextEdit MaxLength="8">
                                                                    </PropertiesTextEdit>
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="發票代表店章地址" ExportWidth="48" 
                                                                    FieldName="NM_RCPTOP4" ShowInCustomizationForm="True" Visible="False" 
                                                                    VisibleIndex="26">
                                                                    <PropertiesTextEdit MaxLength="48">
                                                                    </PropertiesTextEdit>
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="發票代表店章店名" ExportWidth="24" 
                                                                    FieldName="NM_RCPTOP5" ShowInCustomizationForm="True" Visible="False" 
                                                                    VisibleIndex="27">
                                                                    <PropertiesTextEdit MaxLength="24">
                                                                    </PropertiesTextEdit>
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="發票代表店章服務電話" ExportWidth="24" 
                                                                    FieldName="NM_RCPTOP6" ShowInCustomizationForm="True" Visible="False" 
                                                                    VisibleIndex="28">
                                                                    <PropertiesTextEdit MaxLength="24">
                                                                    </PropertiesTextEdit>
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="存根聯稅籍編號" ExportWidth="2" 
                                                                    FieldName="NO_RCPTAXNUM" ShowInCustomizationForm="True" Visible="False" 
                                                                    VisibleIndex="29">
                                                                    <PropertiesTextEdit MaxLength="2">
                                                                    </PropertiesTextEdit>
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="原始店號" ExportWidth="6" 
                                                                    FieldName="NO_OLDSTORE" ShowInCustomizationForm="True" Visible="False" 
                                                                    VisibleIndex="30">
                                                                    <PropertiesTextEdit MaxLength="6">
                                                                    </PropertiesTextEdit>
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="單店折扣率" ExportWidth="4" 
                                                                    FieldName="RA_STOREDIS" ShowInCustomizationForm="True" Visible="False" 
                                                                    VisibleIndex="31">
                                                                    <PropertiesTextEdit MaxLength="4">
                                                                    </PropertiesTextEdit>
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="單店折扣進位法" FieldName="FG_DISTYPE" 
                                                                    ShowInCustomizationForm="True" Visible="False" VisibleIndex="32">
                                                                    <PropertiesTextEdit MaxLength="1">
                                                                    </PropertiesTextEdit>
                                                                    <EditItemTemplate>
                                                                        <dx:ASPxComboBox ID="cbFG_DISTYPE" runat="server" 
                                                                            DataSourceID="edsSYS_storefgdistype" Font-Names="王漢宗細圓體繁" TextField="KEY_TEXT" 
                                                                            TextFormatString="{0}; {1}" Value='<%# Bind("FG_DISTYPE") %>' 
                                                                            ValueField="KEY_ID" Width="100%">
                                                                            <Columns>
                                                                                <dx:ListBoxColumn Caption="代碼" FieldName="KEY_ID" Name="KEY_ID" />
                                                                                <dx:ListBoxColumn Caption="說明" FieldName="KEY_TEXT" Name="KEY_TEXT" />
                                                                            </Columns>
                                                                            <ValidationSettings ErrorText="">
                                                                                <RequiredField ErrorText="" />
                                                                            </ValidationSettings>
                                                                        </dx:ASPxComboBox>
                                                                    </EditItemTemplate>
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="是否使用電子發票" FieldName="FG_TFMINV" 
                                                                    ShowInCustomizationForm="True" VisibleIndex="33">
                                                                    <PropertiesTextEdit MaxLength="1">
                                                                    </PropertiesTextEdit>
                                                                    <DataItemTemplate>
                                                                        <dx:ASPxLabel ID="labFG_TFMINV" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                            Text="labFG_TFMINV" Width="100%">
                                                                        </dx:ASPxLabel>
                                                                    </DataItemTemplate>
                                                                    <EditItemTemplate>
                                                                        <dx:ASPxComboBox ID="cbFG_TFMINV" runat="server" 
                                                                            DataSourceID="edsSYS_storefgtfminv" Font-Names="王漢宗細圓體繁" TextField="KEY_TEXT" 
                                                                            TextFormatString="{0}; {1}" Value='<%# Bind("FG_TFMINV") %>' 
                                                                            ValueField="KEY_ID" Width="100%">
                                                                            <Columns>
                                                                                <dx:ListBoxColumn Caption="代碼" FieldName="KEY_ID" Name="KEY_ID" />
                                                                                <dx:ListBoxColumn Caption="說明" FieldName="KEY_TEXT" Name="KEY_TEXT" />
                                                                            </Columns>
                                                                            <ValidationSettings ErrorText="">
                                                                                <RequiredField ErrorText="" />
                                                                            </ValidationSettings>
                                                                        </dx:ASPxComboBox>
                                                                    </EditItemTemplate>
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="收銀機台數" ExportWidth="2" FieldName="QT_CONTM" 
                                                                    ShowInCustomizationForm="True" VisibleIndex="34">
                                                                    <PropertiesTextEdit MaxLength="2">
                                                                    </PropertiesTextEdit>
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="加密驗證碼" ExportWidth="70" 
                                                                    FieldName="CS_CHECK" ShowInCustomizationForm="True" Visible="False" 
                                                                    VisibleIndex="35">
                                                                    <PropertiesTextEdit MaxLength="70">
                                                                    </PropertiesTextEdit>
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="備用" ExportWidth="40" FieldName="FU_SPACE" 
                                                                    ShowInCustomizationForm="True" Visible="False" VisibleIndex="36">
                                                                    <PropertiesTextEdit MaxLength="40">
                                                                    </PropertiesTextEdit>
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="跳行碼" ExportWidth="2" FieldName="LF" 
                                                                    ShowInCustomizationForm="True" Visible="False" VisibleIndex="37">
                                                                    <PropertiesTextEdit MaxLength="2">
                                                                    </PropertiesTextEdit>
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="建檔人員" ExportWidth="16" 
                                                                    FieldName="CREATE_ID" ShowInCustomizationForm="True" Visible="False" 
                                                                    VisibleIndex="38">
                                                                    <PropertiesTextEdit MaxLength="16">
                                                                    </PropertiesTextEdit>
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataDateColumn Caption="建檔日期" FieldName="CREATE_DT" 
                                                                    ShowInCustomizationForm="True" Visible="False" VisibleIndex="39">
                                                                    <PropertiesDateEdit DisplayFormatString="g" EditFormat="DateTime" 
                                                                        EditFormatString="g">
                                                                    </PropertiesDateEdit>
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataDateColumn>
                                                            </Columns>
                                                            <SettingsBehavior AllowFocusedRow="True" ConfirmDelete="True" />
                                                            <SettingsPager AlwaysShowPager="True" PageSize="20" Position="TopAndBottom">
                                                            </SettingsPager>
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
                                                                    <div align="center">
                                                                        <br />
                                                                        <asp:Panel ID="Panel1" runat="server" Width="700px">
                                                                            <table class="blueTable" style="width: 100%;">
                                                                                <tr>
                                                                                    <th align="center">
                                                                                        欄位</th>
                                                                                    <th align="center">
                                                                                        資料</th>
                                                                                    <th align="center">
                                                                                        欄位</th>
                                                                                    <th align="center">
                                                                                        資料</th>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td align="left">
                                                                                        <dx:ASPxLabel ID="ASPxLabel1" runat="server" Font-Names="王漢宗細圓體繁" Text="店號">
                                                                                        </dx:ASPxLabel>
                                                                                    </td>
                                                                                    <td align="left">
                                                                                        <dx:ASPxLabel ID="ASPxLabel2" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                                            Text="ASPxLabel2">
                                                                                        </dx:ASPxLabel>
                                                                                    </td>
                                                                                    <td align="left">
                                                                                        <dx:ASPxLabel ID="ASPxLabel3" runat="server" Font-Names="王漢宗細圓體繁" Text="店鋪類型">
                                                                                        </dx:ASPxLabel>
                                                                                    </td>
                                                                                    <td align="left">
                                                                                        <dx:ASPxLabel ID="ASPxLabel4" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                                            Text="ASPxLabel4">
                                                                                        </dx:ASPxLabel>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td align="left">
                                                                                        <dx:ASPxLabel ID="ASPxLabel5" runat="server" Font-Names="王漢宗細圓體繁" Text="店名">
                                                                                        </dx:ASPxLabel>
                                                                                    </td>
                                                                                    <td align="left">
                                                                                        <dx:ASPxLabel ID="ASPxLabel6" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                                            Text="ASPxLabel6">
                                                                                        </dx:ASPxLabel>
                                                                                    </td>
                                                                                    <td align="left">
                                                                                        <dx:ASPxLabel ID="ASPxLabel7" runat="server" Font-Names="王漢宗細圓體繁" Text="店址">
                                                                                        </dx:ASPxLabel>
                                                                                    </td>
                                                                                    <td align="left">
                                                                                        <dx:ASPxLabel ID="ASPxLabel8" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                                            Text="ASPxLabel8">
                                                                                        </dx:ASPxLabel>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td align="left">
                                                                                        <dx:ASPxLabel ID="ASPxLabel9" runat="server" Font-Names="王漢宗細圓體繁" Text="營利事業編號">
                                                                                        </dx:ASPxLabel>
                                                                                    </td>
                                                                                    <td align="left">
                                                                                        <dx:ASPxLabel ID="ASPxLabel10" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                                            Text="ASPxLabel10">
                                                                                        </dx:ASPxLabel>
                                                                                    </td>
                                                                                    <td align="left">
                                                                                        <dx:ASPxLabel ID="ASPxLabel11" runat="server" Font-Names="王漢宗細圓體繁" Text="統一編號">
                                                                                        </dx:ASPxLabel>
                                                                                    </td>
                                                                                    <td align="left">
                                                                                        <dx:ASPxLabel ID="ASPxLabel12" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                                            Text="ASPxLabel12">
                                                                                        </dx:ASPxLabel>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td align="left">
                                                                                        <dx:ASPxLabel ID="ASPxLabel13" runat="server" Font-Names="王漢宗細圓體繁" Text="稅籍縣市">
                                                                                        </dx:ASPxLabel>
                                                                                    </td>
                                                                                    <td align="left">
                                                                                        <dx:ASPxLabel ID="ASPxLabel14" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                                            Text="ASPxLabel14">
                                                                                        </dx:ASPxLabel>
                                                                                    </td>
                                                                                    <td align="left">
                                                                                        <dx:ASPxLabel ID="ASPxLabel15" runat="server" Font-Names="王漢宗細圓體繁" Text="稅籍編號">
                                                                                        </dx:ASPxLabel>
                                                                                    </td>
                                                                                    <td align="left">
                                                                                        <dx:ASPxLabel ID="ASPxLabel16" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                                            Text="ASPxLabel16">
                                                                                        </dx:ASPxLabel>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td align="left">
                                                                                        <dx:ASPxLabel ID="ASPxLabel17" runat="server" Font-Names="王漢宗細圓體繁" Text="電話區域碼">
                                                                                        </dx:ASPxLabel>
                                                                                    </td>
                                                                                    <td align="left">
                                                                                        <dx:ASPxLabel ID="ASPxLabel18" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                                            Text="ASPxLabel18">
                                                                                        </dx:ASPxLabel>
                                                                                    </td>
                                                                                    <td align="left">
                                                                                        <dx:ASPxLabel ID="ASPxLabel19" runat="server" Font-Names="王漢宗細圓體繁" Text="電話號碼">
                                                                                        </dx:ASPxLabel>
                                                                                    </td>
                                                                                    <td align="left">
                                                                                        <dx:ASPxLabel ID="ASPxLabel20" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                                            Text="ASPxLabel20">
                                                                                        </dx:ASPxLabel>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td align="left">
                                                                                        <dx:ASPxLabel ID="ASPxLabel21" runat="server" Font-Names="王漢宗細圓體繁" Text="配送區域">
                                                                                        </dx:ASPxLabel>
                                                                                    </td>
                                                                                    <td align="left">
                                                                                        <dx:ASPxLabel ID="ASPxLabel22" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                                            Text="ASPxLabel22">
                                                                                        </dx:ASPxLabel>
                                                                                    </td>
                                                                                    <td align="left">
                                                                                        <dx:ASPxLabel ID="ASPxLabel23" runat="server" Font-Names="王漢宗細圓體繁" Text="部別代號">
                                                                                        </dx:ASPxLabel>
                                                                                    </td>
                                                                                    <td align="left">
                                                                                        <dx:ASPxLabel ID="ASPxLabel24" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                                            Text="ASPxLabel24">
                                                                                        </dx:ASPxLabel>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td align="left">
                                                                                        <dx:ASPxLabel ID="ASPxLabel25" runat="server" Font-Names="王漢宗細圓體繁" Text="所屬區域">
                                                                                        </dx:ASPxLabel>
                                                                                    </td>
                                                                                    <td align="left">
                                                                                        <dx:ASPxLabel ID="ASPxLabel26" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                                            Text="ASPxLabel26">
                                                                                        </dx:ASPxLabel>
                                                                                    </td>
                                                                                    <td align="left">
                                                                                        <dx:ASPxLabel ID="ASPxLabel27" runat="server" Font-Names="王漢宗細圓體繁" Text="開店日期">
                                                                                        </dx:ASPxLabel>
                                                                                    </td>
                                                                                    <td align="left">
                                                                                        <dx:ASPxLabel ID="ASPxLabel28" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                                            Text="ASPxLabel28">
                                                                                        </dx:ASPxLabel>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td align="left">
                                                                                        <dx:ASPxLabel ID="ASPxLabel29" runat="server" Font-Names="王漢宗細圓體繁" Text="店鋪型態">
                                                                                        </dx:ASPxLabel>
                                                                                    </td>
                                                                                    <td align="left">
                                                                                        <dx:ASPxLabel ID="ASPxLabel30" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                                            Text="ASPxLabel30">
                                                                                        </dx:ASPxLabel>
                                                                                    </td>
                                                                                    <td align="left">
                                                                                        <dx:ASPxLabel ID="ASPxLabel31" runat="server" Font-Names="王漢宗細圓體繁" Text="自動訂購">
                                                                                        </dx:ASPxLabel>
                                                                                    </td>
                                                                                    <td align="left">
                                                                                        <dx:ASPxLabel ID="ASPxLabel32" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                                            Text="ASPxLabel32">
                                                                                        </dx:ASPxLabel>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td align="left">
                                                                                        <dx:ASPxLabel ID="ASPxLabel33" runat="server" Font-Names="王漢宗細圓體繁" Text="免稅店註記">
                                                                                        </dx:ASPxLabel>
                                                                                    </td>
                                                                                    <td align="left">
                                                                                        <dx:ASPxLabel ID="ASPxLabel34" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                                            Text="ASPxLabel34">
                                                                                        </dx:ASPxLabel>
                                                                                    </td>
                                                                                    <td align="left">
                                                                                        <dx:ASPxLabel ID="ASPxLabel35" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                                            Text="VAN電話號碼一">
                                                                                        </dx:ASPxLabel>
                                                                                    </td>
                                                                                    <td align="left">
                                                                                        <dx:ASPxLabel ID="ASPxLabel36" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                                            Text="ASPxLabel36">
                                                                                        </dx:ASPxLabel>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td align="left">
                                                                                        <dx:ASPxLabel ID="ASPxLabel37" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                                            Text="VAN電話號碼二">
                                                                                        </dx:ASPxLabel>
                                                                                    </td>
                                                                                    <td align="left">
                                                                                        <dx:ASPxLabel ID="ASPxLabel38" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                                            Text="ASPxLabel38">
                                                                                        </dx:ASPxLabel>
                                                                                    </td>
                                                                                    <td align="left">
                                                                                        <dx:ASPxLabel ID="ASPxLabel39" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                                            Text="VAN電話號碼三">
                                                                                        </dx:ASPxLabel>
                                                                                    </td>
                                                                                    <td align="left">
                                                                                        <dx:ASPxLabel ID="ASPxLabel40" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                                            Text="ASPxLabel40">
                                                                                        </dx:ASPxLabel>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td align="left">
                                                                                        <dx:ASPxLabel ID="ASPxLabel41" runat="server" Font-Names="王漢宗細圓體繁" Text="營業稅率">
                                                                                        </dx:ASPxLabel>
                                                                                    </td>
                                                                                    <td align="left">
                                                                                        <dx:ASPxLabel ID="ASPxLabel42" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                                            Text="ASPxLabel42">
                                                                                        </dx:ASPxLabel>
                                                                                    </td>
                                                                                    <td align="left">
                                                                                        <dx:ASPxLabel ID="ASPxLabel43" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                                            Text="發票代表店章名稱1">
                                                                                        </dx:ASPxLabel>
                                                                                    </td>
                                                                                    <td align="left">
                                                                                        <dx:ASPxLabel ID="ASPxLabel44" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                                            Text="ASPxLabel44">
                                                                                        </dx:ASPxLabel>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td align="left">
                                                                                        <dx:ASPxLabel ID="ASPxLabel45" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                                            Text="發票代表店章名稱2">
                                                                                        </dx:ASPxLabel>
                                                                                    </td>
                                                                                    <td align="left">
                                                                                        <dx:ASPxLabel ID="ASPxLabel46" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                                            Text="ASPxLabel46">
                                                                                        </dx:ASPxLabel>
                                                                                    </td>
                                                                                    <td align="left">
                                                                                        <dx:ASPxLabel ID="ASPxLabel47" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                                            Text="發票代表店章統一編號">
                                                                                        </dx:ASPxLabel>
                                                                                    </td>
                                                                                    <td align="left">
                                                                                        <dx:ASPxLabel ID="ASPxLabel48" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                                            Text="ASPxLabel48">
                                                                                        </dx:ASPxLabel>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td align="left">
                                                                                        <dx:ASPxLabel ID="ASPxLabel49" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                                            Text="發票代表店章地址">
                                                                                        </dx:ASPxLabel>
                                                                                    </td>
                                                                                    <td align="left">
                                                                                        <dx:ASPxLabel ID="ASPxLabel50" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                                            Text="ASPxLabel50">
                                                                                        </dx:ASPxLabel>
                                                                                    </td>
                                                                                    <td align="left">
                                                                                        <dx:ASPxLabel ID="ASPxLabel51" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                                            Text="發票代表店章店名">
                                                                                        </dx:ASPxLabel>
                                                                                    </td>
                                                                                    <td align="left">
                                                                                        <dx:ASPxLabel ID="ASPxLabel52" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                                            Text="ASPxLabel52">
                                                                                        </dx:ASPxLabel>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td align="left">
                                                                                        <dx:ASPxLabel ID="ASPxLabel53" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                                            Text="發票代表店章服務電話">
                                                                                        </dx:ASPxLabel>
                                                                                    </td>
                                                                                    <td align="left">
                                                                                        <dx:ASPxLabel ID="ASPxLabel54" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                                            Text="ASPxLabel54">
                                                                                        </dx:ASPxLabel>
                                                                                    </td>
                                                                                    <td align="left">
                                                                                        <dx:ASPxLabel ID="ASPxLabel55" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                                            Text="存根聯稅籍編號">
                                                                                        </dx:ASPxLabel>
                                                                                    </td>
                                                                                    <td align="left">
                                                                                        <dx:ASPxLabel ID="ASPxLabel56" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                                            Text="ASPxLabel56">
                                                                                        </dx:ASPxLabel>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td align="left">
                                                                                        <dx:ASPxLabel ID="ASPxLabel57" runat="server" Font-Names="王漢宗細圓體繁" Text="原始店號">
                                                                                        </dx:ASPxLabel>
                                                                                    </td>
                                                                                    <td align="left">
                                                                                        <dx:ASPxLabel ID="ASPxLabel58" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                                            Text="ASPxLabel58">
                                                                                        </dx:ASPxLabel>
                                                                                    </td>
                                                                                    <td align="left">
                                                                                        <dx:ASPxLabel ID="ASPxLabel59" runat="server" Font-Names="王漢宗細圓體繁" Text="單店折扣率">
                                                                                        </dx:ASPxLabel>
                                                                                    </td>
                                                                                    <td align="left">
                                                                                        <dx:ASPxLabel ID="ASPxLabel60" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                                            Text="ASPxLabel60">
                                                                                        </dx:ASPxLabel>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td align="left">
                                                                                        <dx:ASPxLabel ID="ASPxLabel61" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                                            Text="單店折扣進位法">
                                                                                        </dx:ASPxLabel>
                                                                                    </td>
                                                                                    <td align="left">
                                                                                        <dx:ASPxLabel ID="ASPxLabel62" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                                            Text="ASPxLabel62">
                                                                                        </dx:ASPxLabel>
                                                                                    </td>
                                                                                    <td align="left">
                                                                                        <dx:ASPxLabel ID="ASPxLabel63" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                                            Text="是否使用電子發票">
                                                                                        </dx:ASPxLabel>
                                                                                    </td>
                                                                                    <td align="left">
                                                                                        <dx:ASPxLabel ID="ASPxLabel64" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                                            Text="ASPxLabel64">
                                                                                        </dx:ASPxLabel>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td align="left">
                                                                                        <dx:ASPxLabel ID="ASPxLabel65" runat="server" Font-Names="王漢宗細圓體繁" Text="收銀機台數">
                                                                                        </dx:ASPxLabel>
                                                                                    </td>
                                                                                    <td align="left">
                                                                                        <dx:ASPxLabel ID="ASPxLabel66" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                                            Text="ASPxLabel66">
                                                                                        </dx:ASPxLabel>
                                                                                    </td>
                                                                                    <td align="left">
                                                                                        <dx:ASPxLabel ID="ASPxLabel67" runat="server" Font-Names="王漢宗細圓體繁" Text="加密驗證碼">
                                                                                        </dx:ASPxLabel>
                                                                                    </td>
                                                                                    <td align="left">
                                                                                        <dx:ASPxLabel ID="ASPxLabel68" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                                            Text="ASPxLabel68">
                                                                                        </dx:ASPxLabel>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td align="left">
                                                                                        <dx:ASPxLabel ID="ASPxLabel69" runat="server" Font-Names="王漢宗細圓體繁" Text="備用">
                                                                                        </dx:ASPxLabel>
                                                                                    </td>
                                                                                    <td align="left">
                                                                                        <dx:ASPxLabel ID="ASPxLabel70" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                                            Text="ASPxLabel70">
                                                                                        </dx:ASPxLabel>
                                                                                    </td>
                                                                                    <td align="left">
                                                                                        <dx:ASPxLabel ID="ASPxLabel71" runat="server" Font-Names="王漢宗細圓體繁" Text="跳行碼">
                                                                                        </dx:ASPxLabel>
                                                                                    </td>
                                                                                    <td align="left">
                                                                                        <dx:ASPxLabel ID="ASPxLabel72" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                                            Text="ASPxLabel72">
                                                                                        </dx:ASPxLabel>
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        </asp:Panel>
                                                                        <br />
                                                                    </div>
                                                                </DetailRow>
                                                            </Templates>
                                                        </dx:ASPxGridView>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                        <div align="left">
                                            <table class="style8">
                                                <tr>
                                                    <td>
                                                        <br />
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
                    <br />
                    <br />
                        <br />
                        <br />
                        <asp:EntityDataSource ID="edsPOS_storedat" runat="server" 
                            ConnectionString="name=NEWPMSEntities" DefaultContainerName="NEWPMSEntities" 
                            EnableDelete="True" EnableFlattening="False" EnableInsert="True" 
                            EnableUpdate="True" EntitySetName="POS_storedat" OrderBy="it.NO_STORE">
                        </asp:EntityDataSource>
                        <asp:EntityDataSource ID="edsSYS_storetype" runat="server" 
                            ConnectionString="name=NEWPMSEntities" DefaultContainerName="NEWPMSEntities" 
                            EnableFlattening="False" EntitySetName="SYS_storetype" OrderBy="it.KEY_ID">
                        </asp:EntityDataSource>
                        <asp:EntityDataSource ID="edsSYS_storefgareabase" runat="server" 
                            ConnectionString="name=NEWPMSEntities" DefaultContainerName="NEWPMSEntities" 
                            EnableFlattening="False" EntitySetName="SYS_storefgareabase" 
                            OrderBy="it.KEY_ID">
                        </asp:EntityDataSource>
                        <asp:EntityDataSource ID="edsSYS_storeiddep" runat="server" 
                            ConnectionString="name=NEWPMSEntities" DefaultContainerName="NEWPMSEntities" 
                            EnableFlattening="False" EntitySetName="SYS_storeiddep" OrderBy="it.KEY_ID">
                        </asp:EntityDataSource>
                        <asp:EntityDataSource ID="edsSYS_storefgstore" runat="server" 
                            ConnectionString="name=NEWPMSEntities" DefaultContainerName="NEWPMSEntities" 
                            EnableFlattening="False" EntitySetName="SYS_storefgstore" OrderBy="it.KEY_ID">
                        </asp:EntityDataSource>
                        <asp:EntityDataSource ID="edsSYS_storefgord" runat="server" 
                            ConnectionString="name=NEWPMSEntities" DefaultContainerName="NEWPMSEntities" 
                            EnableFlattening="False" EntitySetName="SYS_storefgord" OrderBy="it.KEY_ID">
                        </asp:EntityDataSource>
                        <asp:EntityDataSource ID="edsSYS_storefgtaxstore" runat="server" 
                            ConnectionString="name=NEWPMSEntities" DefaultContainerName="NEWPMSEntities" 
                            EnableFlattening="False" EntitySetName="SYS_storefgtaxstore" 
                            OrderBy="it.KEY_ID">
                        </asp:EntityDataSource>
                        <asp:EntityDataSource ID="edsSYS_storefgdistype" runat="server" 
                            ConnectionString="name=NEWPMSEntities" DefaultContainerName="NEWPMSEntities" 
                            EnableFlattening="False" EntitySetName="SYS_storefgdistype" OrderBy="it.KEY_ID">
                        </asp:EntityDataSource>
                        <asp:EntityDataSource ID="edsSYS_storefgtfminv" runat="server" 
                            ConnectionString="name=NEWPMSEntities" DefaultContainerName="NEWPMSEntities" 
                            EnableFlattening="False" EntitySetName="SYS_storefgtfminv" OrderBy="it.KEY_ID">
                        </asp:EntityDataSource>
                        <asp:EntityDataSource ID="edsSYS_CWB" runat="server" 
                            ConnectionString="name=NEWPMSEntities" DefaultContainerName="NEWPMSEntities" 
                            EnableFlattening="False" EntitySetName="SYS_CWB" OrderBy="it.KEY_ID">
                        </asp:EntityDataSource>
                        <dx:ASPxGridViewExporter ID="ASPxGridViewExporter1" runat="server" 
                            GridViewID="ASPxGridViewSTORE">
                        </dx:ASPxGridViewExporter>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:TabPage>
            <dx:TabPage Name="Tab02" Text="密碼管理" Visible="False">
                <ContentCollection>
                    <dx:ContentControl runat="server" SupportsDisabledAttribute="True">
                        <dx:ASPxRoundPanel ID="ASPxRoundPanel2" runat="server" Font-Names="王漢宗細圓體繁" 
                            Font-Size="12pt" HeaderText="【密碼管理】" View="GroupBox" Width="100%">
                            <PanelCollection>
                                <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                                </dx:PanelContent>
                            </PanelCollection>
                            <Border BorderStyle="Double" BorderWidth="3px" />

<Border BorderStyle="Double" BorderWidth="3px"></Border>
                        </dx:ASPxRoundPanel>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:TabPage>
        </TabPages>
    </dx:ASPxPageControl>
</asp:Content>

