<%@ page title="" language="C#" masterpagefile="~/MainPage.master" autoeventwireup="true" inherits="SYS_MenuUser, App_Web_sys_menuuser.aspx.cdcab7d2" %>

<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxTabControl" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxClasses" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxRoundPanel" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPanel" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxGridView.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxEditors.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxSplitter" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxDocking" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPopupControl" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxUploadControl" tagprefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .dxgvFocusedRow .dxgv {
            background-color: #33B5E5;
            height:30px;
        }
        .dxgvDataRow .dxgv {       
            height:30px;
        }
        .style8
        {
            width: 149px;
        }
        .style14
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
        .pie_radius_none{
            border: 1px solid #8B8B8B;
            width:100%;
            height:100%;
            border-radius: 8px 8px 8px 8px;
            box-shadow: #666 0px 0px 0px;
            position:relative;
            top: 0px;
            left: -1px;
        }        
        .style15
        {
            width: 100%;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script type="text/javascript">
        function OnPopUp(ClientID) {
            tbImgName.SetText('');
            clientPopup.ShowAtElementByID(ClientID);
        }
        function uploadStart(s) {
            var sp = s.split('\\');
            var file = sp[sp.length - 1];
            tbImgName.SetText(file);
        }
    </script>
    <dx:ASPxPageControl ID="ASPxPageControl1" runat="server" ActiveTabIndex="0" 
        Height="800px" TabPosition="Left" Width="100%" Font-Names="王漢宗細圓體繁" 
        Font-Size="Small">
        <TabPages>
            <dx:TabPage Name="Tab01" Text="管理">
                <ContentCollection>
                    <dx:ContentControl runat="server" SupportsDisabledAttribute="True">
                        <div align="center">
                            <dx:ASPxPanel ID="ASPxPanel1" runat="server" RenderMode="Table">
                                <PanelCollection>
                                    <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                                        <div align="left">
                                            <table class="style14">
                                                <tr>
                                                    <td>
                                                        <dx:ASPxHyperLink ID="ASPxHyperLink1" runat="server" CssClass="button add icon" 
                                                            CssPostfix="button" Font-Names="王漢宗細圓體繁" Font-Size="Small" Text="新增人員">
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
                                                            OnDetailRowExpandedChanged="ASPxGridView1_DetailRowExpandedChanged" 
                                                            OnHeaderFilterFillItems="ASPxGridView1_HeaderFilterFillItems" 
                                                            OnHtmlDataCellPrepared="ASPxGridView1_HtmlDataCellPrepared" 
                                                            OnHtmlRowCreated="ASPxGridView1_HtmlRowCreated" 
                                                            OnInitNewRow="ASPxGridView1_InitNewRow" OnRowDeleted="ASPxGridView1_RowDeleted" 
                                                            OnRowInserting="ASPxGridView1_RowInserting" 
                                                            OnRowUpdating="ASPxGridView1_RowUpdating" 
                                                            OnRowValidating="ASPxGridView1_RowValidating" 
                                                            OnStartRowEditing="ASPxGridView1_StartRowEditing">
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
                                                                <dx:GridViewDataTextColumn Caption="帳號" FieldName="USER_ID" 
                                                                    ShowInCustomizationForm="True" VisibleIndex="4">
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="密碼" FieldName="USER_PASSWD" 
                                                                    ShowInCustomizationForm="True" Visible="False" VisibleIndex="5">
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="名稱" FieldName="USER_NAME" 
                                                                    ShowInCustomizationForm="True" VisibleIndex="6">
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="部門" FieldName="USER_DEPT" 
                                                                    ShowInCustomizationForm="True" VisibleIndex="7">
                                                                    <PropertiesTextEdit>
                                                                        <ValidationSettings>
                                                                            <RequiredField ErrorText="" />
                                                                        </ValidationSettings>
                                                                    </PropertiesTextEdit>
                                                                    <EditItemTemplate>
                                                                        <dx:ASPxComboBox ID="cbUSER_DEPT" runat="server" DataSourceID="edsSYS_dept" 
                                                                            Font-Names="王漢宗細圓體繁" TextField="DEPT_NMAE" TextFormatString="{0}" 
                                                                            ValueField="DEPT_NMAE" Width="100%">
                                                                            <Columns>
                                                                                <dx:ListBoxColumn Caption="部門" FieldName="DEPT_NMAE" Name="DEPT_NMAE" />
                                                                            </Columns>
                                                                            <ValidationSettings ErrorText="">
                                                                                <RequiredField ErrorText="" />
                                                                            </ValidationSettings>
                                                                        </dx:ASPxComboBox>
                                                                    </EditItemTemplate>
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="說明" FieldName="USER_MEMO" 
                                                                    ShowInCustomizationForm="True" VisibleIndex="8">
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="權限" FieldName="USER_PREM" 
                                                                    ShowInCustomizationForm="True" VisibleIndex="9">
                                                                    <DataItemTemplate>
                                                                        <dx:ASPxLabel ID="labUSER_PREM" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                            Text="labUSER_PREM" Width="100%">
                                                                        </dx:ASPxLabel>
                                                                    </DataItemTemplate>
                                                                    <EditItemTemplate>
                                                                        <dx:ASPxComboBox ID="cbUSER_PREM" runat="server" 
                                                                            DataSourceID="edsSYS_usedlevel" Font-Names="王漢宗細圓體繁" TextField="LEVLE_TEXT" 
                                                                            TextFormatString="{0}; {1}" ValueField="LEVEL_KEY" Width="100%">
                                                                            <Columns>
                                                                                <dx:ListBoxColumn Caption="值" FieldName="LEVEL_KEY" Name="KEY_ID" />
                                                                                <dx:ListBoxColumn Caption="等級" FieldName="LEVLE_TEXT" Name="KEY_TEXT" />
                                                                            </Columns>
                                                                        </dx:ASPxComboBox>
                                                                    </EditItemTemplate>
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                    <CellStyle HorizontalAlign="Center">
                                                                    </CellStyle>
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="建立人員" FieldName="CREATE_ID" 
                                                                    ShowInCustomizationForm="True" VisibleIndex="15">
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataDateColumn Caption="建立日期" FieldName="CREATE_DT" 
                                                                    ShowInCustomizationForm="True" VisibleIndex="16">
                                                                    <PropertiesDateEdit DisplayFormatString="g" EditFormat="DateTime" 
                                                                        EditFormatString="g">
                                                                    </PropertiesDateEdit>
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataDateColumn>
                                                                <dx:GridViewDataTextColumn Caption="店別" FieldName="NO_STORE" 
                                                                    ShowInCustomizationForm="True" VisibleIndex="3">
                                                                    <Settings AllowHeaderFilter="True" HeaderFilterMode="CheckedList" />
                                                                    <EditCellStyle VerticalAlign="Middle">
                                                                    </EditCellStyle>
                                                                    <EditFormCaptionStyle VerticalAlign="Middle">
                                                                    </EditFormCaptionStyle>
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
                                                                <dx:GridViewDataTextColumn Caption="註消" FieldName="CANCEL" 
                                                                    ShowInCustomizationForm="True" VisibleIndex="10">
                                                                    <DataItemTemplate>
                                                                        <dx:ASPxLabel ID="labCANCEL" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                            Text="labCANCEL" Width="100%">
                                                                        </dx:ASPxLabel>
                                                                    </DataItemTemplate>
                                                                    <EditItemTemplate>
                                                                        <dx:ASPxComboBox ID="cbCANCEL" runat="server" DataSourceID="edsSYS_YNflag" 
                                                                            Font-Names="王漢宗細圓體繁" TextField="CODE_TEXT" TextFormatString="{0}; {1}" 
                                                                            ValueField="CODE_ID" Width="100%">
                                                                            <Columns>
                                                                                <dx:ListBoxColumn Caption="值" FieldName="CODE_ID" Name="CODE_ID" />
                                                                                <dx:ListBoxColumn Caption="旗標說明" FieldName="CODE_TEXT" Name="CODE_TEXT" />
                                                                            </Columns>
                                                                        </dx:ASPxComboBox>
                                                                    </EditItemTemplate>
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                    <CellStyle HorizontalAlign="Center">
                                                                    </CellStyle>
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="室內" FieldName="TEL1" 
                                                                    ShowInCustomizationForm="True" VisibleIndex="11">
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="手機" FieldName="TEL2" 
                                                                    ShowInCustomizationForm="True" VisibleIndex="12">
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="電子郵件" FieldName="EMAIL" 
                                                                    ShowInCustomizationForm="True" VisibleIndex="13">
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="照片" FieldName="IMG" 
                                                                    ShowInCustomizationForm="True" Visible="False" VisibleIndex="2">
                                                                    <EditCellStyle VerticalAlign="Middle">
                                                                    </EditCellStyle>
                                                                    <EditFormCaptionStyle VerticalAlign="Middle">
                                                                    </EditFormCaptionStyle>
                                                                    <EditItemTemplate>
                                                                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                                                            <ContentTemplate>
                                                                                <dx:ASPxHyperLink ID="ASPxHyperLink2" runat="server" CssClass="button" 
                                                                                    CssPostfix="button" Cursor="pointer" Font-Names="王漢宗細圓體繁" ImageWidth="100px" 
                                                                                    OnLoad="ASPxHyperLink2_Load" Text="ASPxHyperLink2" ToolTip="設定照片">
                                                                                </dx:ASPxHyperLink>
                                                                            </ContentTemplate>
                                                                        </asp:UpdatePanel>
                                                                    </EditItemTemplate>
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="LINE通報" FieldName="Client_ID" 
                                                                    ShowInCustomizationForm="True" VisibleIndex="14">
                                                                    <DataItemTemplate>
                                                                        <dx:ASPxLabel ID="labClient_ID" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                            Text="labClient_ID" Width="100%">
                                                                        </dx:ASPxLabel>
                                                                    </DataItemTemplate>
                                                                    <EditItemTemplate>
                                                                        <dx:ASPxCheckBoxList ID="ASPxCheckBoxList1" runat="server" BackColor="White" 
                                                                            DataSourceID="edsLINE_clientdoc" Font-Names="王漢宗細圓體繁" 
                                                                            RepeatColumns="10" TextField="Client_NAME" Theme="Office2010Blue" 
                                                                            ValueField="Client_ID" Width="100%">
                                                                        </dx:ASPxCheckBoxList>
                                                                    </EditItemTemplate>
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                            </Columns>
                                                            <SettingsBehavior AllowFocusedRow="True" ConfirmDelete="True" />
                                                            <SettingsPager AlwaysShowPager="True" PageSize="20" Position="TopAndBottom">
                                                            </SettingsPager>
                                                            <SettingsText CommandCancel="取消" CommandDelete="刪除" CommandEdit="修改" 
                                                                CommandNew="新增" CommandUpdate="更新" ConfirmDelete="確認刪除該筆資料?" />
                                                            <SettingsDetail AllowOnlyOneMasterRowExpanded="True" ShowDetailRow="True" />
                                                            <SettingsPopup>
                                                                <HeaderFilter Height="300px" ResizingMode="Postponed" />
                                                            </SettingsPopup>
                                                            <Styles>
                                                                <DetailRow BackColor="Gainsboro">
                                                                </DetailRow>
                                                                <AlternatingRow Enabled="True">
                                                                </AlternatingRow>
                                                            </Styles>
                                                            <StylesEditors>
                                                                <TextBox Font-Names="王漢宗細圓體繁">
                                                                </TextBox>
                                                            </StylesEditors>
                                                            <Templates>
                                                                <DetailRow>
                                                                    <asp:Panel ID="Panel1" runat="server" Width="100%" BorderWidth="0px">
                                                                        <table>
                                                                            <tr>
                                                                                <td>
                                                                                    <dx:ASPxComboBox ID="ASPxComboBox3" runat="server" BackColor="Gainsboro" 
                                                                                        DataSourceID="EntityDataSource4" DropDownRows="10" DropDownWidth="100%" 
                                                                                        Font-Bold="False" Font-Names="王漢宗細圓體繁" Height="24px" 
                                                                                        OnButtonClick="ASPxComboBox3_ButtonClick" TextField="PROC_NAME" 
                                                                                        TextFormatString="{0}" Width="100%">
                                                                                        <Columns>
                                                                                            <dx:ListBoxColumn Caption="程式名稱" FieldName="PROC_NAME" Name="PROC_NAME" 
                                                                                                Width="225px" />
                                                                                            <dx:ListBoxColumn Caption="說明" FieldName="PROC_TEXT" Name="PROC_TEXT" 
                                                                                                Width="225px" />
                                                                                            <dx:ListBoxColumn Caption="系統代號" FieldName="SYS_GROUP" Name="SYS_GROUP" 
                                                                                                Width="50px" />
                                                                                        </Columns>
                                                                                        <DropDownButton Text="選擇作業">
                                                                                        </DropDownButton>
                                                                                        <Buttons>
                                                                                            <dx:EditButton Text="新增作業">
                                                                                            </dx:EditButton>
                                                                                        </Buttons>
                                                                                    </dx:ASPxComboBox>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td>
                                                                                    <dx:ASPxGridView ID="ASPxGridView2" runat="server" AutoGenerateColumns="False" 
                                                                                        DataSourceID="EntityDataSource5" Font-Names="王漢宗細圓體繁" 
                                                                                        KeyFieldName="MsgId" 
                                                                                        OnHtmlDataCellPrepared="ASPxGridView2_HtmlDataCellPrepared" 
                                                                                        OnHtmlRowCreated="ASPxGridView2_HtmlRowCreated" Width="600px">
                                                                                        <Columns>
                                                                                            <dx:GridViewCommandColumn ShowInCustomizationForm="True" VisibleIndex="0">
                                                                                                <DeleteButton Visible="True">
                                                                                                </DeleteButton>
                                                                                            </dx:GridViewCommandColumn>
                                                                                            <dx:GridViewDataTextColumn FieldName="MsgId" ReadOnly="True" 
                                                                                                ShowInCustomizationForm="True" Visible="False" VisibleIndex="1">
                                                                                                <HeaderStyle HorizontalAlign="Center" />
                                                                                            </dx:GridViewDataTextColumn>
                                                                                            <dx:GridViewDataTextColumn FieldName="USER_ID" ShowInCustomizationForm="True" 
                                                                                                Visible="False" VisibleIndex="2">
                                                                                                <HeaderStyle HorizontalAlign="Center" />
                                                                                            </dx:GridViewDataTextColumn>
                                                                                            <dx:GridViewDataTextColumn Caption="作業名稱" FieldName="PROC_NAME" 
                                                                                                ShowInCustomizationForm="True" VisibleIndex="3">
                                                                                                <HeaderStyle HorizontalAlign="Center" />
                                                                                            </dx:GridViewDataTextColumn>
                                                                                            <dx:GridViewDataTextColumn Caption="作業說明" FieldName="PROC_TEXT" 
                                                                                                ShowInCustomizationForm="True" VisibleIndex="4">
                                                                                                <DataItemTemplate>
                                                                                                    <dx:ASPxLabel ID="labPROC_TEXT" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                                                        Text="labPROC_TEXT" Width="100%">
                                                                                                    </dx:ASPxLabel>
                                                                                                </DataItemTemplate>
                                                                                                <HeaderStyle HorizontalAlign="Center" />
                                                                                                <CellStyle HorizontalAlign="Left">
                                                                                                </CellStyle>
                                                                                            </dx:GridViewDataTextColumn>
                                                                                            <dx:GridViewDataTextColumn Caption="系統代號" FieldName="SYS_GROUP" 
                                                                                                ShowInCustomizationForm="True" VisibleIndex="5">
                                                                                                <DataItemTemplate>
                                                                                                    <dx:ASPxLabel ID="labSYS_GROUP" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                                                        Text="labSYS_GROUP" Width="100%">
                                                                                                    </dx:ASPxLabel>
                                                                                                </DataItemTemplate>
                                                                                                <HeaderStyle HorizontalAlign="Center" />
                                                                                                <CellStyle HorizontalAlign="Center">
                                                                                                </CellStyle>
                                                                                            </dx:GridViewDataTextColumn>
                                                                                        </Columns>
                                                                                        <SettingsBehavior AllowFocusedRow="True" ConfirmDelete="True" />
                                                                                        <SettingsPager AlwaysShowPager="True">
                                                                                        </SettingsPager>
                                                                                        <SettingsText CommandDelete="刪除" ConfirmDelete="確認刪除該筆資料?" />
                                                                                    </dx:ASPxGridView>
                                                                                    <dx:ASPxLabel ID="ASPxLabel1" runat="server" BackColor="White" 
                                                                                        ClientVisible="False" Font-Bold="True" Font-Names="王漢宗細圓體繁" ForeColor="Red" 
                                                                                        Width="100%" Wrap="False">
                                                                                    </dx:ASPxLabel>
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </asp:Panel>
                                                                </DetailRow>
                                                            </Templates>
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
                            <dx:ASPxPopupControl ID="ASPxPopupControl1" runat="server" AllowDragging="True" 
                                ClientInstanceName="clientPopup" CloseAction="CloseButton" 
                                CssClass="pie_radius" Font-Names="王漢宗細圓體繁" Font-Size="Small" HeaderText="圖片上傳" 
                                Modal="True" PopupAction="None" ShowCloseButton="False" Target="_blank" 
                                Theme="Office2010Silver">
                                <HeaderStyle HorizontalAlign="Left" />
                                <ContentCollection>
                                    <dx:PopupControlContentControl runat="server" SupportsDisabledAttribute="True">
                                        <dx:ASPxPanel ID="ASPxPanel2" runat="server" RenderMode="Table" Width="200px">
                                            <PanelCollection>
                                                <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                                                    <div align="left">
                                                        <table class="style15">
                                                            <tr>
                                                                <td>
                                                                    <dx:ASPxTextBox ID="ASPxTextBox4" runat="server" ClientInstanceName="tbImgName" 
                                                                        Font-Names="王漢宗細圓體繁" Font-Size="Small" Height="28px" 
                                                                        NullText="影像檔大小最好為寬100px高75px" ReadOnly="True" Width="400px">
                                                                        <ReadOnlyStyle BackColor="#CCCCCC">
                                                                        </ReadOnlyStyle>
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:FileUpload ID="FileUpload1" runat="server" Height="28px" Width="100%" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="left">
                                                                    <dx:ASPxButton ID="btnFileUpload" runat="server" AutoPostBack="False" 
                                                                        Font-Names="王漢宗細圓體繁" Height="28px" OnClick="btnFileUpload_Click" Text="上傳" 
                                                                        Width="100px">
                                                                    </dx:ASPxButton>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center">
                                                                    <div align="center" class="button-group">
                                                                        <li>
                                                                            <dx:ASPxButton ID="ASPxButton2" runat="server" AutoPostBack="False" 
                                                                                CssClass="button big pill" 
                                                                                CssFilePath="~/App_Themes/CustomTheme/Css/Button/Button2/gh-buttons.css" 
                                                                                CssPostfix="button" Font-Names="王漢宗細圓體繁" Font-Size="Small" 
                                                                                OnClick="ASPxButton2_Click" Text="確認" Width="100px">
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
<ClientSideEvents Click="function(s, e) {
	if(confirm(&#39;執行該作業，確定嗎？&#39;))
	{
		e.processOnServer = true
	}
	else
	{
		e.processOnServer = false
	}
}"></ClientSideEvents>
                                                                            </dx:ASPxButton>
                                                                        </li>
                                                                        <li>
                                                                            <dx:ASPxButton ID="ASPxButton3" runat="server" AutoPostBack="False" 
                                                                                CssClass="button big pill" 
                                                                                CssFilePath="~/App_Themes/CustomTheme/Css/Button/Button2/gh-buttons.css" 
                                                                                CssPostfix="button" Font-Names="王漢宗細圓體繁" Font-Size="Small" Text="離開" 
                                                                                Width="100px">
                                                                                <ClientSideEvents Click="function(s, e) {
	clientPopup.Hide();
}" />
<ClientSideEvents Click="function(s, e) {
	clientPopup.Hide();
}"></ClientSideEvents>
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
                        </div>
                    <br />
                    <br />
                    <br />
                        <asp:EntityDataSource ID="EntityDataSource1" runat="server" 
                            ConnectionString="name=NEWPMSEntities" DefaultContainerName="NEWPMSEntities" 
                            EnableDelete="True" EnableFlattening="False" EnableInsert="True" 
                            EnableUpdate="True" EntitySetName="SYS_userdat" 
                            OrderBy="it.USER_ID">
                        </asp:EntityDataSource>
                        <asp:EntityDataSource ID="edsSYS_dept" runat="server" 
                            ConnectionString="name=NEWPMSEntities" DefaultContainerName="NEWPMSEntities" 
                            EnableFlattening="False" EntitySetName="SYS_dept">
                        </asp:EntityDataSource>
                        <asp:EntityDataSource ID="edsSYS_usedlevel" runat="server" 
                            ConnectionString="name=NEWPMSEntities" DefaultContainerName="NEWPMSEntities" 
                            EnableFlattening="False" EntitySetName="SYS_usedlevel" 
                            OrderBy="it.LEVEL_KEY">
                        </asp:EntityDataSource>
                        <asp:EntityDataSource ID="EntityDataSource4" runat="server" 
                            ConnectionString="name=NEWPMSEntities" DefaultContainerName="NEWPMSEntities" 
                            EnableFlattening="False" EntitySetName="SYS_procdat" 
                            OrderBy="it.SYS_GROUP" Where="it.PROC_NAME&lt;&gt;it.PROC_TEXT">
                        </asp:EntityDataSource>
                        <asp:EntityDataSource ID="EntityDataSource5" runat="server" 
                            ConnectionString="name=NEWPMSEntities" DefaultContainerName="NEWPMSEntities" 
                            EnableDelete="True" EnableFlattening="False" EnableInsert="True" 
                            EnableUpdate="True" EntitySetName="SYS_usermenu" 
                            Where="it.USER_ID=@USER_ID">
                            <WhereParameters>
                                <asp:QueryStringParameter DefaultValue="" Name="USER_ID" Type="String" />
                            </WhereParameters>
                        </asp:EntityDataSource>
                        <asp:EntityDataSource ID="edsPOS_storedat" runat="server" 
                            ConnectionString="name=NEWPMSEntities" DefaultContainerName="NEWPMSEntities" 
                            EnableFlattening="False" EntitySetName="vPOS_storedat" OrderBy="it.NO_STORE">
                        </asp:EntityDataSource>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:NEWPMSConnectionString %>" 
                            ProviderName="<%$ ConnectionStrings:NEWPMSConnectionString.ProviderName %>">
                        </asp:SqlDataSource>
                        <asp:EntityDataSource ID="edsSYS_YNflag" runat="server" 
                            ConnectionString="name=NEWPMSEntities" DefaultContainerName="NEWPMSEntities" 
                            EnableFlattening="False" EntitySetName="SYS_YNflag" OrderBy="">
                        </asp:EntityDataSource>
                        <asp:EntityDataSource ID="edsLINE_clientdoc" runat="server" 
                            ConnectionString="name=NEWPMSEntities" DefaultContainerName="NEWPMSEntities" 
                            EnableFlattening="False" EntitySetName="LINE_clientdoc" OrderBy="">
                        </asp:EntityDataSource>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:TabPage>
        </TabPages>
    </dx:ASPxPageControl>
</asp:Content>

