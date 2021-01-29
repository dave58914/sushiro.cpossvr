<%@ page title="" language="C#" masterpagefile="~/MainPage.master" autoeventwireup="true" inherits="STK_Estimated, App_Web_stk_estimated.aspx.cdcab7d2" %>

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
                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <ContentTemplate>
                                    <table style="width:100%;">
                                        <tr>
                                            <td colspan="3">
                                                <div align="center">
                                                    <asp:Panel ID="Panel3" runat="server" Font-Names="王漢宗細圓體繁" Width="890px">
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
                                                                    營業日起</td>
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
                                                                    營業日迄</td>
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
                                                                        Font-Size="Small" Height="28px" OnClick="btnQUERY_Click" Text="查詢" Width="90px">
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
                                                                    <dx:ASPxButton ID="btnEXCEL" runat="server" AutoPostBack="False" 
                                                                        CssClass="button add icon" CssPostfix="button" Font-Names="王漢宗細圓體繁" 
                                                                        Font-Size="Small" Height="28px" Text="整批帶入" Width="100px">
                                                                        <ClientSideEvents Click="function(s, e) {
    if (clientPopup.IsVisible == true)
    	return;
	csSTORE_NO2.SetSelectedIndex(0);
	var dob = new Date();
	csBEGDT2.SetDate(dob);
	csENDDT2.SetDate(dob);
	csSALE_AMT.SetText('');
	clientPopup.Show();	
}" />
                                                                    </dx:ASPxButton>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="right" colspan="9" style="font-family: 王漢宗細圓體繁; font-size: small">
                                                                    <div align="left">
                                                                        <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" 
                                                                            ClientInstanceName="grid" DataSourceID="edsPOS_BUDGET" 
                                                                            Font-Names="王漢宗細圓體繁" KeyFieldName="MsgId" 
                                                                            OnCellEditorInitialize="ASPxGridView1_CellEditorInitialize" 
                                                                            OnHtmlDataCellPrepared="ASPxGridView1_HtmlDataCellPrepared" 
                                                                            OnHtmlRowCreated="ASPxGridView1_HtmlRowCreated" 
                                                                            OnInitNewRow="ASPxGridView1_InitNewRow" 
                                                                            OnRowInserted="ASPxGridView1_RowInserted" 
                                                                            OnRowInserting="ASPxGridView1_RowInserting" 
                                                                            OnRowUpdated="ASPxGridView1_RowUpdated" 
                                                                            OnRowUpdating="ASPxGridView1_RowUpdating" 
                                                                            OnRowValidating="ASPxGridView1_RowValidating" Width="100%">
                                                                            <Columns>
                                                                                <dx:GridViewCommandColumn VisibleIndex="0" 
                                                                                    Width="60px">
                                                                                    <EditButton Visible="True">
                                                                                    </EditButton>
                                                                                    <DeleteButton Visible="True">
                                                                                    </DeleteButton>
                                                                                </dx:GridViewCommandColumn>
                                                                                <dx:GridViewDataTextColumn FieldName="MsgId" ReadOnly="True" Visible="False" 
                                                                                    VisibleIndex="1">
                                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                                </dx:GridViewDataTextColumn>
                                                                                <dx:GridViewDataTextColumn Caption="店別" FieldName="NO_STORE" VisibleIndex="2">
                                                                                    <Settings AllowSort="False" />
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
                                                                                <dx:GridViewDataDateColumn Caption="營業日期" FieldName="SALE_DATE" 
                                                                                    VisibleIndex="3">
                                                                                    <PropertiesDateEdit DisplayFormatString="yyyy年MM月dd日" EditFormat="Custom" 
                                                                                        EditFormatString="yyyy年MM月dd日">
                                                                                    </PropertiesDateEdit>
                                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                                    <CellStyle HorizontalAlign="Center">
                                                                                    </CellStyle>
                                                                                </dx:GridViewDataDateColumn>
                                                                                <dx:GridViewDataTextColumn Caption="目標業績" FieldName="SALE_AMT" VisibleIndex="4">
                                                                                    <PropertiesTextEdit DisplayFormatString="#,##0">
                                                                                    </PropertiesTextEdit>
                                                                                    <Settings AllowSort="False" />
                                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                                    <CellStyle HorizontalAlign="Right">
                                                                                    </CellStyle>
                                                                                </dx:GridViewDataTextColumn>
                                                                                <dx:GridViewDataTextColumn Caption="建檔人員" FieldName="CREATE_ID" 
                                                                                    VisibleIndex="5">
                                                                                    <Settings AllowSort="False" />
                                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                                </dx:GridViewDataTextColumn>
                                                                                <dx:GridViewDataDateColumn Caption="建檔日期" FieldName="CREATE_DT" 
                                                                                    VisibleIndex="6">
                                                                                    <PropertiesDateEdit DisplayFormatString="yyyy年MM月dd日" EditFormat="Custom" 
                                                                                        EditFormatString="yyyy年MM月dd日">
                                                                                    </PropertiesDateEdit>
                                                                                    <Settings AllowSort="False" />
                                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                                    <CellStyle HorizontalAlign="Center">
                                                                                    </CellStyle>
                                                                                </dx:GridViewDataDateColumn>
                                                                            </Columns>
                                                                            <SettingsBehavior AllowFocusedRow="True" ConfirmDelete="True" />
                                                                            <SettingsPager AlwaysShowPager="True" PageSize="50" Position="TopAndBottom">
                                                                            </SettingsPager>
                                                                            <SettingsEditing EditFormColumnCount="1" />
                                                                            <Styles>
                                                                                <AlternatingRow Enabled="True">
                                                                                </AlternatingRow>
                                                                                <FilterRow Font-Names="王漢宗細圓體繁" Font-Size="Small">
                                                                                </FilterRow>
                                                                            </Styles>
                                                                            <StylesEditors>
                                                                                <TextBox Font-Names="王漢宗細圓體繁">
                                                                                </TextBox>
                                                                            </StylesEditors>
                                                                        </dx:ASPxGridView>
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </asp:Panel>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="3">
                                                &nbsp;</td>
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
                                    <br />
                                    <dx:ASPxPopupControl ID="ASPxPopupControl1" runat="server" AllowDragging="True" 
                                        ClientInstanceName="clientPopup" CloseAction="CloseButton" 
                                        CssClass="pie_radius" EnableTheming="True" Font-Bold="True" 
                                        Font-Names="王漢宗細圓體繁" Font-Size="Small" HeaderText="整批帶入" 
                                        PopupHorizontalAlign="WindowCenter" PopupVerticalAlign="WindowCenter" 
                                        ShowShadow="False" Target="_blank" Theme="Office2010Silver">
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
                                                                                    店別</td>
                                                                                <td>
                                                                                    <dx:ASPxComboBox ID="cbSTORE_NO2" runat="server" 
                                                                                        ClientInstanceName="csSTORE_NO2" DataSourceID="edsPOS_storedat" 
                                                                                        Font-Names="王漢宗細圓體繁" Height="28px" TextField="NM_STORE" 
                                                                                        TextFormatString="{0}; {1}; {2}" ValueField="NO_STORE" Width="200px">
                                                                                        <Columns>
                                                                                            <dx:ListBoxColumn Caption="店號" FieldName="NO_STORE" Name="NO_STORE" />
                                                                                            <dx:ListBoxColumn Caption="店名" FieldName="NM_STORE" Name="NM_STORE" />
                                                                                            <dx:ListBoxColumn Caption="店鋪類型" FieldName="KEY_TEXT" Name="KEY_TEXT" />
                                                                                        </Columns>
                                                                                    </dx:ASPxComboBox>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td>
                                                                                    營業日期起</td>
                                                                                <td>
                                                                                    <dx:ASPxDateEdit ID="deBEGDT2" runat="server" ClientInstanceName="csBEGDT2" 
                                                                                        DisplayFormatString="yyyy-MM-dd" EditFormat="Custom" 
                                                                                        EditFormatString="yyyy-MM-dd" Font-Names="王漢宗細圓體繁" Height="28px" Width="100px">
                                                                                        <CalendarProperties>
                                                                                            <ControlStyle Font-Names="王漢宗細圓體繁" />
                                                                                            <Style Font-Names="王漢宗細圓體繁">
                                                                                            </Style>
                                                                                        </CalendarProperties>
                                                                                    </dx:ASPxDateEdit>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td>
                                                                                    營業日期迄</td>
                                                                                <td>
                                                                                    <dx:ASPxDateEdit ID="deENDDT2" runat="server" ClientInstanceName="csENDDT2" 
                                                                                        DisplayFormatString="yyyy-MM-dd" EditFormat="Custom" 
                                                                                        EditFormatString="yyyy-MM-dd" Font-Names="王漢宗細圓體繁" Height="28px" Width="100px">
                                                                                        <CalendarProperties>
                                                                                            <ControlStyle Font-Names="王漢宗細圓體繁" />
                                                                                            <Style Font-Names="王漢宗細圓體繁">
                                                                                            </Style>
                                                                                        </CalendarProperties>
                                                                                    </dx:ASPxDateEdit>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td>
                                                                                    目標業績</td>
                                                                                <td>
                                                                                    <dx:ASPxTextBox ID="tbSALE_AMT" runat="server" ClientInstanceName="csSALE_AMT" 
                                                                                        Height="28px" Width="170px" Font-Names="王漢宗細圓體繁">
                                                                                    </dx:ASPxTextBox>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td>
                                                                                    &nbsp;</td>
                                                                                <td>
                                                                                    <dx:ASPxButton ID="btnBUDGET" runat="server" CssClass="button arrowup icon" 
                                                                                        CssPostfix="button" Font-Names="王漢宗細圓體繁" onclick="btnBUDGET_Click" Text="帶入確定" 
                                                                                        Width="100px">
                                                                                        <ClientSideEvents Click="function(s, e) {
	clientPopup.Hide();
}" />
                                                                                    </dx:ASPxButton>
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </ContentTemplate>
                                                                </asp:UpdatePanel>
                                                            </dx:PanelContent>
                                                        </PanelCollection>
                                                    </dx:ASPxPanel>
                                                </div>
                                            </dx:PopupControlContentControl>
                                        </ContentCollection>
                                    </dx:ASPxPopupControl>
                                    <br />
                                    <br />
                                    <br />
                                </ContentTemplate>
                            </asp:UpdatePanel>
                            <br />
                        </div>
                    <br />
                    <br />
                    <br />
                        <asp:EntityDataSource ID="edsPOS_BUDGET" runat="server" 
                            ConnectionString="name=NEWPMSEntities" DefaultContainerName="NEWPMSEntities" 
                            EnableDelete="True" EnableFlattening="False" EnableInsert="True" 
                            EnableUpdate="True" EntitySetName="POS_BUDGET" 
                            OrderBy="it.SALE_DATE">
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

