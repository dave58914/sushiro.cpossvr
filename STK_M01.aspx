<%@ page title="" language="C#" masterpagefile="~/MainPage.master" autoeventwireup="true" inherits="STK_M01, App_Web_stk_m01.aspx.cdcab7d2" %>

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
        function OnMainformPopUp(ClientID, filepath, imgfile) {
            var f = filepath + imgfile;
            SetImage(clientPopupImg, f, 300, 300);
            clientPopupIMG.ShowAtElementByID(ClientID);
        }
        function SetImage(image, imageUrl, imageWidth, imageHeight) {
            image.SetImageUrl(imageUrl);
            image.SetSize(imageWidth, imageHeight);
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
                            <dx:ASPxPanel ID="ASPxPanel1" runat="server" RenderMode="Table" Width="100%">
                                <PanelCollection>
                                    <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                                        <div align="left">
                                            <table class="style8">
                                                <tr>
                                                    <td>
                                                        <dx:ASPxHyperLink ID="ASPxHyperLink1" runat="server" CssClass="button add icon" 
                                                            CssPostfix="button" Font-Names="王漢宗細圓體繁" Font-Size="Small" Text="新增商品">
                                                            <ClientSideEvents Click="function(s, e) {
	grid.AddNewRow();
}" />
                                                        </dx:ASPxHyperLink>
                                                        <dx:ASPxHyperLink ID="ASPxHyperLink22" runat="server" 
                                                            CssClass="button reload icon" CssPostfix="button" Font-Names="王漢宗細圓體繁" 
                                                            Font-Size="Small" Text="重新查詢">
                                                            <ClientSideEvents Click="function(s, e) {
	grid.ApplyFilter(&quot;&quot;);
}" />
                                                        </dx:ASPxHyperLink>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" 
                                                            ClientInstanceName="grid" DataSourceID="EntityDataSource1" Font-Names="王漢宗細圓體繁" 
                                                            Font-Size="X-Small" KeyFieldName="PLU_ID" 
                                                            OnCellEditorInitialize="ASPxGridView1_CellEditorInitialize" 
                                                            OnHeaderFilterFillItems="ASPxGridView1_HeaderFilterFillItems" 
                                                            OnHtmlDataCellPrepared="ASPxGridView1_HtmlDataCellPrepared" 
                                                            OnHtmlRowCreated="ASPxGridView1_HtmlRowCreated" 
                                                            OnInitNewRow="ASPxGridView1_InitNewRow" 
                                                            OnRowValidating="ASPxGridView1_RowValidating" Width="100%">
                                                            <Columns>
                                                                <dx:GridViewCommandColumn ShowInCustomizationForm="True" VisibleIndex="0">
                                                                    <EditButton Visible="True">
                                                                    </EditButton>
                                                                    <DeleteButton Visible="True">
                                                                    </DeleteButton>
                                                                </dx:GridViewCommandColumn>
<dx:GridViewDataTextColumn FieldName="IMG" ShowInCustomizationForm="True" Caption="商品圖" VisibleIndex="1">
    <Settings AllowAutoFilter="False" />
    <DataItemTemplate>
        <dx:ASPxHyperLink ID="ASPxHyperLinkIMG" runat="server" 
            ClientInstanceName="linkImageName" Cursor="pointer" Font-Names="王漢宗細圓體繁" 
            ImageWidth="24px" />
    </DataItemTemplate>
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
                                                                <dx:GridViewDataTextColumn Caption="商品條碼" FieldName="PLU_ID" 
                                                                    ShowInCustomizationForm="True" VisibleIndex="2">
                                                                    <PropertiesTextEdit Height="25px">
                                                                        <Style Font-Size="X-Small">
                                                                        </Style>
                                                                    </PropertiesTextEdit>
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn FieldName="ITEM_ID" ShowInCustomizationForm="True" 
                                                                    VisibleIndex="3" Caption="貨號" Visible="False">
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="商品名稱" FieldName="ITEM_NAME" 
                                                                    ShowInCustomizationForm="True" VisibleIndex="4">
                                                                    <PropertiesTextEdit Height="25px">
                                                                        <Style Font-Size="X-Small">
                                                                        </Style>
                                                                    </PropertiesTextEdit>
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataComboBoxColumn Caption="商品分類" FieldName="CLASS_NO" 
                                                                    ShowInCustomizationForm="True" VisibleIndex="5">
                                                                    <PropertiesComboBox DataSourceID="edsSTK_CLASS" Height="25px" 
                                                                        TextField="CLASS_NAME" TextFormatString="{0}; {1}" ValueField="CLASS_NO">
                                                                        <Columns>
                                                                            <dx:ListBoxColumn Caption="分類名稱" FieldName="CLASS_NAME" Name="CLASS_NAME" />
                                                                            <dx:ListBoxColumn Caption="分類代碼" FieldName="CLASS_NO" Name="CLASS_NO" />
                                                                        </Columns>
                                                                        <Style Font-Size="X-Small">
                                                                        </Style>
                                                                    </PropertiesComboBox>
                                                                    <Settings AllowAutoFilter="False" AllowHeaderFilter="True" 
                                                                        HeaderFilterMode="CheckedList" />
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataComboBoxColumn>
                                                                <dx:GridViewDataComboBoxColumn Caption="單位" FieldName="UNIT_NAME" 
                                                                    ShowInCustomizationForm="True" VisibleIndex="6">
                                                                    <PropertiesComboBox DataSourceID="edsSYS_unittype" Height="25px" 
                                                                        TextField="CODE_TEXT" TextFormatString="{0}" ValueField="CODE_ID">
                                                                        <Columns>
                                                                            <dx:ListBoxColumn Caption="說明" FieldName="CODE_TEXT" Name="CODE_TEXT" />
                                                                            <dx:ListBoxColumn Caption="值" FieldName="CODE_ID" Name="CODE_ID" />
                                                                        </Columns>
                                                                        <Style Font-Size="X-Small">
                                                                        </Style>
                                                                    </PropertiesComboBox>
                                                                    <Settings AllowAutoFilter="False" />
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataComboBoxColumn>
                                                                <dx:GridViewDataTextColumn FieldName="PACK_QTY" ShowInCustomizationForm="True" 
                                                                    VisibleIndex="7" Caption="箱數量" Visible="False">
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn FieldName="PACK_AMT" ShowInCustomizationForm="True" 
                                                                    VisibleIndex="8" Caption="箱價" Visible="False">
                                                                    <Settings AllowAutoFilter="False" AllowHeaderFilter="True" 
                                                                        HeaderFilterMode="CheckedList" />
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="售價" FieldName="UNIT_PRICE" 
                                                                    ShowInCustomizationForm="True" VisibleIndex="9">
                                                                    <PropertiesTextEdit Height="25px">
                                                                        <Style Font-Size="X-Small">
                                                                        </Style>
                                                                    </PropertiesTextEdit>
                                                                    <Settings AllowAutoFilter="False" />
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn FieldName="OLD_PRICE" ShowInCustomizationForm="True" 
                                                                    VisibleIndex="10" Caption="原價">
                                                                    <PropertiesTextEdit Height="25px">
                                                                        <Style Font-Size="X-Small">
                                                                        </Style>
                                                                    </PropertiesTextEdit>
                                                                    <Settings AllowAutoFilter="False" />
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn FieldName="DISC_PRICE" 
                                                                    ShowInCustomizationForm="True" VisibleIndex="11" Caption="折扣價">
                                                                    <PropertiesTextEdit Height="25px">
                                                                        <Style Font-Size="X-Small">
                                                                        </Style>
                                                                    </PropertiesTextEdit>
                                                                    <Settings AllowAutoFilter="False" />
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                    <Settings AllowAutoFilter="False" />
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn FieldName="N1_QTY" ShowInCustomizationForm="True" 
                                                                    VisibleIndex="12" Caption="買M送一">
                                                                    <PropertiesTextEdit Height="25px">
                                                                        <Style Font-Size="X-Small">
                                                                        </Style>
                                                                    </PropertiesTextEdit>
                                                                    <Settings AllowAutoFilter="False" />
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn FieldName="N2_QTY" ShowInCustomizationForm="True" 
                                                                    VisibleIndex="13" Caption="買N優惠價的N">
                                                                    <PropertiesTextEdit Height="25px">
                                                                        <Style Font-Size="X-Small">
                                                                        </Style>
                                                                    </PropertiesTextEdit>
                                                                    <Settings AllowAutoFilter="False" />
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn FieldName="N2_PRICE" ShowInCustomizationForm="True" 
                                                                    VisibleIndex="14" Caption="買N優惠價">
                                                                    <PropertiesTextEdit Height="25px">
                                                                        <Style Font-Size="X-Small">
                                                                        </Style>
                                                                    </PropertiesTextEdit>
                                                                    <Settings AllowAutoFilter="False" />
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn FieldName="N3_QTY" ShowInCustomizationForm="True" 
                                                                    VisibleIndex="15" Caption="限購數量">
                                                                    <PropertiesTextEdit Height="25px">
                                                                        <Style Font-Size="X-Small">
                                                                        </Style>
                                                                    </PropertiesTextEdit>
                                                                    <Settings AllowAutoFilter="False" />
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn FieldName="DB_RATE" ShowInCustomizationForm="True" 
                                                                    VisibleIndex="16" Caption="分類折扣">
                                                                    <PropertiesTextEdit Height="25px">
                                                                        <Style Font-Size="X-Small">
                                                                        </Style>
                                                                    </PropertiesTextEdit>
                                                                    <Settings AllowAutoFilter="False" />
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn FieldName="SET_ID" ShowInCustomizationForm="True" 
                                                                    VisibleIndex="17" Caption="組合代號">
                                                                    <PropertiesTextEdit Height="25px">
                                                                        <Style Font-Size="X-Small">
                                                                        </Style>
                                                                    </PropertiesTextEdit>
                                                                    <Settings AllowAutoFilter="False" />
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataComboBoxColumn Caption="販促類別" FieldName="PRO_FLAG" 
                                                                    ShowInCustomizationForm="True" VisibleIndex="18">
                                                                    <PropertiesComboBox Height="25px">
                                                                        <Items>
                                                                            <dx:ListEditItem Text="一般商品" Value="0" />
                                                                            <dx:ListEditItem Text="買M送一" Value="1" />
                                                                            <dx:ListEditItem Text="買N優惠價" Value="2" />
                                                                            <dx:ListEditItem Text="分類折扣" Value="3" />
                                                                        </Items>
                                                                        <Style Font-Size="X-Small">
                                                                        </Style>
                                                                    </PropertiesComboBox>
                                                                    <Settings AllowHeaderFilter="True" HeaderFilterMode="CheckedList" 
                                                                        AllowAutoFilter="False" />
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataComboBoxColumn>
                                                                <dx:GridViewDataComboBoxColumn Caption="可折扣別" FieldName="DIS_FLAG" 
                                                                    ShowInCustomizationForm="True" VisibleIndex="19">
                                                                    <PropertiesComboBox Height="25px">
                                                                        <Items>
                                                                            <dx:ListEditItem Text="可折" Value="Y" />
                                                                            <dx:ListEditItem Text="不可折" Value="N" />
                                                                        </Items>
                                                                        <Style Font-Size="X-Small">
                                                                        </Style>
                                                                    </PropertiesComboBox>
                                                                    <Settings AllowHeaderFilter="True" HeaderFilterMode="CheckedList" 
                                                                        AllowAutoFilter="False" />
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataComboBoxColumn>
                                                                <dx:GridViewDataComboBoxColumn Caption="可變價別" FieldName="CHG_FLAG" 
                                                                    ShowInCustomizationForm="True" VisibleIndex="20">
                                                                    <PropertiesComboBox Height="25px">
                                                                        <Items>
                                                                            <dx:ListEditItem Text="可變價" Value="Y" />
                                                                            <dx:ListEditItem Text="不可變價" Value="N" />
                                                                        </Items>
                                                                        <Style Font-Size="X-Small">
                                                                        </Style>
                                                                    </PropertiesComboBox>
                                                                    <Settings AllowHeaderFilter="True" HeaderFilterMode="CheckedList" 
                                                                        AllowAutoFilter="False" />
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataComboBoxColumn>
                                                                <dx:GridViewDataComboBoxColumn Caption="稅別" FieldName="TAX_FLAG" 
                                                                    ShowInCustomizationForm="True" VisibleIndex="21">
                                                                    <PropertiesComboBox Height="25px">
                                                                        <Items>
                                                                            <dx:ListEditItem Text="零稅率" Value="0" />
                                                                            <dx:ListEditItem Text="收據" Value="1" />
                                                                            <dx:ListEditItem Text="發票" Value="2" />
                                                                            <dx:ListEditItem Text="免稅" Value="3" />
                                                                        </Items>
                                                                        <Style Font-Size="X-Small">
                                                                        </Style>
                                                                    </PropertiesComboBox>
                                                                    <Settings AllowHeaderFilter="True" HeaderFilterMode="CheckedList" 
                                                                        AllowAutoFilter="False" />
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataComboBoxColumn>
                                                                <dx:GridViewDataTextColumn Caption="備註" FieldName="BLANK" 
                                                                    ShowInCustomizationForm="True" VisibleIndex="22" Visible="False">
                                                                    <Settings AllowAutoFilter="False" />
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                            </Columns>
                                                            <SettingsBehavior AllowFocusedRow="True" ConfirmDelete="True" />
                                                            <SettingsPager AlwaysShowPager="True" PageSize="20" Position="TopAndBottom">
                                                            </SettingsPager>
                                                            <Settings ShowFilterRow="True" ShowFilterRowMenu="True" />
                                                            <SettingsPopup>
                                                                <HeaderFilter Height="300px" ResizingMode="Postponed" />
                                                                <EditForm VerticalAlign="BottomSides" Width="1000px" />
                                                            </SettingsPopup>
                                                            <Styles>
                                                                <AlternatingRow Enabled="True">
                                                                </AlternatingRow>
                                                                <HeaderFilterItem Font-Names="王漢宗細圓體繁" Font-Size="Small">
                                                                </HeaderFilterItem>
                                                            </Styles>
                                                            <StylesEditors>
                                                                <TextBox Font-Names="王漢宗細圓體繁" Font-Size="Small">
                                                                </TextBox>
                                                            </StylesEditors>
                                                            <StylesPopup>
                                                                <EditForm>
                                                                    <PopupControl Font-Names="王漢宗細圓體繁" Font-Size="X-Small">
                                                                    </PopupControl>
                                                                    <ControlStyle Font-Names="王漢宗細圓體繁" Font-Size="X-Small" />
                                                                </EditForm>
                                                            </StylesPopup>
                                                        </dx:ASPxGridView>
                                                    </td>
                                                </tr>
                                            </table>
                                            <br />
                                            <dx:ASPxPopupControl ID="ASPxPopupControl1" runat="server" AllowDragging="True" 
                                                ClientInstanceName="clientPopup" CloseAction="CloseButton" 
                                                CssClass="pie_radius" Font-Names="王漢宗細圓體繁" Font-Size="Small" 
                                                HeaderText="圖片上傳" ShowCloseButton="False" Target="_blank" 
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
                                            <dx:ASPxPopupControl ID="ASPxPopupControl2" runat="server" 
                                                ClientInstanceName="clientPopupIMG" CloseAction="CloseButton" 
                                                CssClass="pie_radius" Font-Names="王漢宗細圓體繁" Font-Size="Small" HeaderText="商品圖" 
                                                ShowShadow="False" AllowDragging="True" PopupAction="None" 
                                                ShowCloseButton="False" Target="_blank">
                                                <HeaderStyle HorizontalAlign="Left" />
                                                <ContentCollection>
                                                    <dx:PopupControlContentControl runat="server" SupportsDisabledAttribute="True">
                                                        <dx:ASPxImage ID="ASPxImage1" runat="server" 
                                                            ClientInstanceName="clientPopupImg" Cursor="pointer" ToolTip="點圖片關閉視窗">
                                                            <ClientSideEvents Click="function(s, e) {
	clientPopupIMG.Hide();	
}" Init="function(s, e) {
	
}
" />
                                                        </dx:ASPxImage>
                                                    </dx:PopupControlContentControl>
                                                </ContentCollection>
                                            </dx:ASPxPopupControl>
                                            <br />
                                            <br />
                                        </div>
                                    </dx:PanelContent>
                                </PanelCollection>
                            </dx:ASPxPanel>
                            <br />
                        </div>
                        <br />
                        <asp:EntityDataSource ID="EntityDataSource1" runat="server" 
                            ConnectionString="name=NEWPMSEntities" DefaultContainerName="NEWPMSEntities" 
                            EnableDelete="True" EnableFlattening="False" EnableInsert="True" 
                            EnableUpdate="True" EntitySetName="POS_Posplu">
                        </asp:EntityDataSource>
                        <asp:EntityDataSource ID="edsSTK_CLASS" runat="server" 
                            ConnectionString="name=NEWPMSEntities" DefaultContainerName="NEWPMSEntities" 
                            EnableFlattening="False" EntitySetName="STK_CLASS" OrderBy="it.CLASS_NO
">
                        </asp:EntityDataSource>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:NEWPMSConnectionString %>" 
                            ProviderName="<%$ ConnectionStrings:NEWPMSConnectionString.ProviderName %>">
                        </asp:SqlDataSource>
                        <asp:EntityDataSource ID="edsSYS_unittype" runat="server" 
                            ConnectionString="name=NEWPMSEntities" DefaultContainerName="NEWPMSEntities" 
                            EnableFlattening="False" EntitySetName="SYS_unittype" OrderBy="it.CODE_ID">
                        </asp:EntityDataSource>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:TabPage>
        </TabPages>
    </dx:ASPxPageControl>
</asp:Content>

