<%@ page title="" language="C#" masterpagefile="~/MainPage.master" autoeventwireup="true" inherits="HQ_LineNotify2, App_Web_hq_linenotify2.aspx.cdcab7d2" %>

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
            border-right: #8B8B8B 1px solid; 
            border-top: #8B8B8B 1px solid; 
            border-left: #8B8B8B 1px solid; 
            border-bottom: #8B8B8B 1px solid;
            border-radius: 8px 8px 8px 8px;
            box-shadow: #666 0px 0px 0px;
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
                                                            CssPostfix="button" Font-Names="王漢宗細圓體繁" Font-Size="Small" Text="新增登錄服務">
                                                            <ClientSideEvents Click="function(s, e) {
	grid.AddNewRow();
}" />
                                                        </dx:ASPxHyperLink>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" 
                                                            ClientInstanceName="grid" DataSourceID="edsLINE_clientdoc" 
                                                            Font-Names="王漢宗細圓體繁" KeyFieldName="Client_ID" 
                                                            OnCellEditorInitialize="ASPxGridView1_CellEditorInitialize" 
                                                            OnDetailRowExpandedChanged="ASPxGridView1_DetailRowExpandedChanged" 
                                                            OnHtmlDataCellPrepared="ASPxGridView2_HtmlDataCellPrepared" 
                                                            OnHtmlRowCreated="ASPxGridView1_HtmlRowCreated" 
                                                            OnInitNewRow="ASPxGridView1_InitNewRow" 
                                                            OnRowDeleting="ASPxGridView1_RowDeleting" 
                                                            OnRowInserting="ASPxGridView1_RowInserting" 
                                                            OnRowUpdating="ASPxGridView1_RowUpdating" 
                                                            OnRowValidating="ASPxGridView1_RowValidating" 
                                                            OnStartRowEditing="ASPxGridView1_StartRowEditing">
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
                                                                <dx:GridViewDataTextColumn Caption="Client_Secret" FieldName="Client_Secret" 
                                                                    ShowInCustomizationForm="True" VisibleIndex="3">
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="備註" FieldName="REMARK" 
                                                                    ShowInCustomizationForm="True" VisibleIndex="5">
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="通報名稱" FieldName="Client_NAME" 
                                                                    ShowInCustomizationForm="True" VisibleIndex="4">
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="建檔人員" FieldName="CREATE_ID" 
                                                                    ShowInCustomizationForm="True" VisibleIndex="7">
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataDateColumn Caption="建檔日期" FieldName="CREATE_DT" 
                                                                    ShowInCustomizationForm="True" VisibleIndex="8">
                                                                    <PropertiesDateEdit DisplayFormatString="g" EditFormat="DateTime" 
                                                                        EditFormatString="g">
                                                                    </PropertiesDateEdit>
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataDateColumn>
                                                                <dx:GridViewDataTextColumn Caption="Client_ID" FieldName="Client_ID" 
                                                                    ShowInCustomizationForm="True" VisibleIndex="2">
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                            </Columns>
                                                            <SettingsBehavior AllowFocusedRow="True" ConfirmDelete="True" />
                                                            <SettingsPager AlwaysShowPager="True" PageSize="20" Position="TopAndBottom">
                                                            </SettingsPager>
                                                            <SettingsEditing EditFormColumnCount="1" />
                                                            <SettingsDetail AllowOnlyOneMasterRowExpanded="True" ShowDetailRow="True" />
                                                            <SettingsPopup>
                                                                <CustomizationWindow Height="300px" />
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
                                                                    <asp:Panel ID="Panel1" runat="server" Width="100%" Height="400px" 
                                                                        BorderWidth="0px">
                                                                        <dx:ASPxPageControl ID="ASPxPageControl2" runat="server" ActiveTabIndex="1" 
                                                                            Font-Names="王漢宗細圓體繁" Height="100%" 
                                                                            Theme="PlasticBlue">
                                                                            <TabPages>
                                                                                <dx:TabPage Name="Tab011" Text="通報關連作業">
                                                                                    <ContentCollection>
                                                                                        <dx:ContentControl runat="server" SupportsDisabledAttribute="True">
                                                                                            <table>
                                                                                                <tr>
                                                                                                    <td>
                                                                                                        <table border="0" class="style8">
                                                                                                            <tr>
                                                                                                                <td colspan="0">
                                                                                                                    <dx:ASPxComboBox ID="ASPxComboBox3" runat="server" 
                                                                                                                        DataSourceID="edsSYS_procdat" DropDownRows="10" DropDownWidth="100%" 
                                                                                                                        Font-Bold="False" Font-Names="王漢宗細圓體繁" Font-Size="Small" 
                                                                                                                        OnButtonClick="ASPxComboBox3_ButtonClick" TextField="PROC_NAME" 
                                                                                                                        TextFormatString="{0}" ValueField="PROC_TEXT" Width="100%" 
                                                                                                                        BackColor="Gainsboro" Height="20px">
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
                                                                                                        </table>
                                                                                                    </td>
                                                                                                </tr>
                                                                                                <tr>
                                                                                                    <td>
                                                                                                        <dx:ASPxGridView ID="ASPxGridView2" runat="server" AutoGenerateColumns="False" 
                                                                                                            DataSourceID="edsLINE_clientdoc_d" Font-Names="王漢宗細圓體繁" 
                                                                                                            KeyFieldName="MsgId" 
                                                                                                            OnCellEditorInitialize="ASPxGridView2_CellEditorInitialize" 
                                                                                                            OnHtmlDataCellPrepared="ASPxGridView2_HtmlDataCellPrepared" 
                                                                                                            OnHtmlRowCreated="ASPxGridView2_HtmlRowCreated" 
                                                                                                            OnRowDeleted="ASPxGridView2_RowDeleted" OnRowUpdated="ASPxGridView2_RowUpdated" 
                                                                                                            OnRowUpdating="ASPxGridView2_RowUpdating" 
                                                                                                            OnStartRowEditing="ASPxGridView2_StartRowEditing" Width="900px">
                                                                                                            <Columns>
                                                                                                                <dx:GridViewCommandColumn ShowInCustomizationForm="True" VisibleIndex="0">
                                                                                                                    <EditButton Visible="True">
                                                                                                                    </EditButton>
                                                                                                                    <DeleteButton Visible="True">
                                                                                                                    </DeleteButton>
                                                                                                                </dx:GridViewCommandColumn>
                                                                                                                <dx:GridViewDataTextColumn FieldName="MsgId" ShowInCustomizationForm="True" 
                                                                                                                    Visible="False" VisibleIndex="1">
                                                                                                                    <EditCellStyle Font-Names="王漢宗細圓體繁">
                                                                                                                    </EditCellStyle>
                                                                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                                                                    <CellStyle Font-Names="王漢宗細圓體繁">
                                                                                                                    </CellStyle>
                                                                                                                </dx:GridViewDataTextColumn>
                                                                                                                <dx:GridViewDataTextColumn FieldName="Client_ID" ShowInCustomizationForm="True" 
                                                                                                                    Visible="False" VisibleIndex="2">
                                                                                                                    <EditCellStyle Font-Names="王漢宗細圓體繁">
                                                                                                                    </EditCellStyle>
                                                                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                                                                    <CellStyle Font-Names="王漢宗細圓體繁">
                                                                                                                    </CellStyle>
                                                                                                                </dx:GridViewDataTextColumn>
                                                                                                                <dx:GridViewDataTextColumn Caption="作業檔案" FieldName="PROC_NAME" 
                                                                                                                    ShowInCustomizationForm="True" VisibleIndex="3">
                                                                                                                    <EditCellStyle Font-Names="王漢宗細圓體繁">
                                                                                                                    </EditCellStyle>
                                                                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                                                                    <CellStyle Font-Names="王漢宗細圓體繁">
                                                                                                                    </CellStyle>
                                                                                                                </dx:GridViewDataTextColumn>
                                                                                                                <dx:GridViewDataTextColumn Caption="作業名稱" FieldName="PROC_TEXT" 
                                                                                                                    ShowInCustomizationForm="True" VisibleIndex="4">
                                                                                                                    <EditCellStyle Font-Names="王漢宗細圓體繁">
                                                                                                                    </EditCellStyle>
                                                                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                                                                    <CellStyle Font-Names="王漢宗細圓體繁">
                                                                                                                    </CellStyle>
                                                                                                                </dx:GridViewDataTextColumn>
                                                                                                                <dx:GridViewDataTextColumn Caption="作業權限" FieldName="PROC_GROUP" 
                                                                                                                    ShowInCustomizationForm="True" VisibleIndex="5">
                                                                                                                    <EditCellStyle Font-Names="王漢宗細圓體繁">
                                                                                                                    </EditCellStyle>
                                                                                                                    <EditItemTemplate>
                                                                                                                        <dx:ASPxCheckBoxList ID="ASPxCheckBoxList1" runat="server" BackColor="White" 
                                                                                                                            Font-Names="王漢宗細圓體繁" Font-Size="Small" RepeatColumns="10" 
                                                                                                                            Theme="Office2010Blue" Width="100%">
                                                                                                                            <Items>
                                                                                                                                <dx:ListEditItem Text="新增" Value="新增" />
                                                                                                                                <dx:ListEditItem Text="修改" Value="修改" />
                                                                                                                                <dx:ListEditItem Text="刪除" Value="刪除" />
                                                                                                                            </Items>
                                                                                                                        </dx:ASPxCheckBoxList>
                                                                                                                    </EditItemTemplate>
                                                                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                                                                    <CellStyle Font-Names="王漢宗細圓體繁">
                                                                                                                    </CellStyle>
                                                                                                                </dx:GridViewDataTextColumn>
                                                                                                                <dx:GridViewDataTextColumn Caption="建檔人員" FieldName="CREATE_ID" 
                                                                                                                    ShowInCustomizationForm="True" VisibleIndex="6">
                                                                                                                    <EditCellStyle Font-Names="王漢宗細圓體繁">
                                                                                                                    </EditCellStyle>
                                                                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                                                                    <CellStyle Font-Names="王漢宗細圓體繁">
                                                                                                                    </CellStyle>
                                                                                                                </dx:GridViewDataTextColumn>
                                                                                                                <dx:GridViewDataDateColumn Caption="建檔日期" FieldName="CREATE_DT" 
                                                                                                                    ShowInCustomizationForm="True" VisibleIndex="7">
                                                                                                                    <PropertiesDateEdit DisplayFormatString="g" EditFormat="DateTime" 
                                                                                                                        EditFormatString="g">
                                                                                                                    </PropertiesDateEdit>
                                                                                                                    <EditCellStyle Font-Names="王漢宗細圓體繁">
                                                                                                                    </EditCellStyle>
                                                                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                                                                    <CellStyle Font-Names="王漢宗細圓體繁">
                                                                                                                    </CellStyle>
                                                                                                                </dx:GridViewDataDateColumn>
                                                                                                            </Columns>
                                                                                                            <SettingsBehavior AllowFocusedRow="True" AllowSort="False" 
                                                                                                                ConfirmDelete="True" />
                                                                                                            <SettingsPager AlwaysShowPager="True" Position="TopAndBottom">
                                                                                                            </SettingsPager>
                                                                                                            <SettingsEditing EditFormColumnCount="1" />
                                                                                                            <SettingsText CommandDelete="刪除" ConfirmDelete="確認刪除該筆資料?" />
                                                                                                            <Styles>
                                                                                                                <EditFormCell Font-Names="王漢宗細圓體繁">
                                                                                                                </EditFormCell>
                                                                                                            </Styles>
                                                                                                        </dx:ASPxGridView>
                                                                                                    </td>
                                                                                                </tr>
                                                                                            </table>
                                                                                        </dx:ContentControl>
                                                                                    </ContentCollection>
                                                                                </dx:TabPage>
                                                                                <dx:TabPage Name="Tab012" Text="通報註冊會員">
                                                                                    <ContentCollection>
                                                                                        <dx:ContentControl runat="server" SupportsDisabledAttribute="True">
                                                                                            <dx:ASPxGridView ID="ASPxGridView3" runat="server" AutoGenerateColumns="False" 
                                                                                                DataSourceID="sdsLineNotify" Font-Names="王漢宗細圓體繁" 
                                                                                                KeyFieldName="access_token" OnHtmlRowCreated="ASPxGridView3_HtmlRowCreated" 
                                                                                                Width="600px">
                                                                                                <Columns>
                                                                                                    <dx:GridViewCommandColumn ShowInCustomizationForm="True" VisibleIndex="0" 
                                                                                                        Visible="False">
                                                                                                    </dx:GridViewCommandColumn>
                                                                                                    <dx:GridViewDataTextColumn Caption="帳號" FieldName="CREATE_ID" 
                                                                                                        ShowInCustomizationForm="True" VisibleIndex="4">
                                                                                                        <HeaderStyle HorizontalAlign="Center" />
                                                                                                    </dx:GridViewDataTextColumn>
                                                                                                    <dx:GridViewDataDateColumn Caption="登錄時間" FieldName="CREATE_DT" 
                                                                                                        ShowInCustomizationForm="True" VisibleIndex="8">
                                                                                                        <PropertiesDateEdit DisplayFormatString="g" EditFormat="DateTime" 
                                                                                                            EditFormatString="g">
                                                                                                        </PropertiesDateEdit>
                                                                                                        <EditCellStyle Font-Names="王漢宗細圓體繁">
                                                                                                        </EditCellStyle>
                                                                                                        <HeaderStyle HorizontalAlign="Center" />
                                                                                                        <CellStyle Font-Names="王漢宗細圓體繁">
                                                                                                        </CellStyle>
                                                                                                    </dx:GridViewDataDateColumn>
                                                                                                    <dx:GridViewDataTextColumn Caption="名稱" FieldName="USER_NAME" 
                                                                                                        ShowInCustomizationForm="True" VisibleIndex="6">
                                                                                                        <HeaderStyle HorizontalAlign="Center" />
                                                                                                        <CellStyle Font-Names="王漢宗細圓體繁">
                                                                                                        </CellStyle>
                                                                                                    </dx:GridViewDataTextColumn>
                                                                                                    <dx:GridViewDataTextColumn Caption="店別" FieldName="NM_STORE" 
                                                                                                        ShowInCustomizationForm="True" VisibleIndex="1">
                                                                                                        <EditCellStyle Font-Names="王漢宗細圓體繁">
                                                                                                        </EditCellStyle>
                                                                                                        <HeaderStyle HorizontalAlign="Center" />
                                                                                                        <CellStyle Font-Names="王漢宗細圓體繁">
                                                                                                        </CellStyle>
                                                                                                    </dx:GridViewDataTextColumn>
                                                                                                    <dx:GridViewDataTextColumn Caption="店舖型態" FieldName="TYPE_STORE" 
                                                                                                        ShowInCustomizationForm="True" VisibleIndex="2">
                                                                                                        <HeaderStyle HorizontalAlign="Center" />
                                                                                                        <CellStyle Font-Names="王漢宗細圓體繁">
                                                                                                        </CellStyle>
                                                                                                    </dx:GridViewDataTextColumn>
                                                                                                </Columns>
                                                                                                <SettingsBehavior ConfirmDelete="True" />
                                                                                                <SettingsPager AlwaysShowPager="True" Position="TopAndBottom">
                                                                                                </SettingsPager>
                                                                                                <SettingsText CommandDelete="刪除" ConfirmDelete="確認刪除該筆資料?" />
                                                                                                <Styles>
                                                                                                    <EditFormCell Font-Names="王漢宗細圓體繁">
                                                                                                    </EditFormCell>
                                                                                                </Styles>
                                                                                            </dx:ASPxGridView>
                                                                                        </dx:ContentControl>
                                                                                    </ContentCollection>
                                                                                </dx:TabPage>
                                                                            </TabPages>
                                                                            <TabStyle Height="30px">
                                                                            </TabStyle>
                                                                        </dx:ASPxPageControl>
                                                                        <br />
                                                                        <br />
                                                                        <br />
                                                                    </asp:Panel>
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
                    <br />
                    <br />
                        <dx:ASPxRoundPanel ID="ASPxRoundPanel1" runat="server" Font-Names="王漢宗細圓體繁" 
                            Font-Size="12pt" HeaderText="【HQ_LineNotify2】" View="GroupBox" Width="100%" 
                            HorizontalAlign="Center" CssClass="pie_radius" ClientVisible="False">
                            <PanelCollection>
                                <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                                    <br />
                                    <br />
                                    <br />
                                </dx:PanelContent>
                            </PanelCollection>
                            <Border BorderStyle="Double" BorderWidth="3px" />
                        </dx:ASPxRoundPanel>
                        <asp:EntityDataSource ID="edsLINE_clientdoc" runat="server" 
                            ConnectionString="name=NEWPMSEntities" DefaultContainerName="NEWPMSEntities" 
                            EnableDelete="True" EnableFlattening="False" EnableInsert="True" 
                            EnableUpdate="True" EntitySetName="LINE_clientdoc" 
                            OrderBy="" EntityTypeFilter="" Select="">
                        </asp:EntityDataSource>
                        <asp:EntityDataSource ID="edsLINE_clientdoc_d" runat="server" 
                            ConnectionString="name=NEWPMSEntities" DefaultContainerName="NEWPMSEntities" 
                            EnableDelete="True" EnableFlattening="False" EnableInsert="True" 
                            EnableUpdate="True" EntitySetName="LINE_clientdoc_d" OrderBy="">
                        </asp:EntityDataSource>
                        <asp:EntityDataSource ID="edsSYS_procdat" runat="server" 
                            ConnectionString="name=NEWPMSEntities" DefaultContainerName="NEWPMSEntities" 
                            EnableFlattening="False" EntitySetName="SYS_procdat" OrderBy="it.SYS_GROUP" 
                            Where="it.PROC_NAME&lt;&gt;it.PROC_TEXT">
                        </asp:EntityDataSource>
                        <asp:EntityDataSource ID="edsLineNotify" runat="server" 
                            ConnectionString="name=NEWPMSEntities" DefaultContainerName="NEWPMSEntities" 
                            EnableFlattening="False" EntitySetName="LineNotify" OrderBy="" Where="">
                        </asp:EntityDataSource>
                        <asp:SqlDataSource ID="sdsLineNotify" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:NEWPMSConnectionString %>" SelectCommand="select m.CREATE_ID,d.USER_NAME,d2.NM_STORE,
(case when d2.TYPE_STORE='1' then '總公司' else '門市或加盟' end)'TYPE_STORE',
m.CREATE_DT from dbo.LineNotify m
left join dbo.SYS_userdat d on d.USER_ID=m.CREATE_ID
left join dbo.POS_storedat d2 on d2.NO_STORE=d.NO_STORE
where m.Client_ID=@Client_ID
order by d2.TYPE_STORE,d2.NO_STORE
">
                            <SelectParameters>
                                <asp:Parameter Name="Client_ID" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:TabPage>
        </TabPages>
    </dx:ASPxPageControl>
</asp:Content>

