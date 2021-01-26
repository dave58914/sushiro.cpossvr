<%@ page title="" language="C#" masterpagefile="~/MainPage.master" autoeventwireup="true" inherits="ECR_PosPWSetup, App_Web_ecr_pospwsetup.aspx.cdcab7d2" %>

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
            border: 3px solid #8B8B8B;
            width:100%;
            height:100%;
            border-radius: 8px 8px 8px 8px;
            box-shadow: #666 5px 5px 5px;
            position:relative;
            top: 0px;
            left: 0px;
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
                            <dx:ASPxPanel ID="ASPxPanel1" runat="server" RenderMode="Table" Width="800px">
                                <PanelCollection>
                                    <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                                        <div align="left">
                                            <table class="style8">
                                                <tr>
                                                    <td>
                                                        <dx:ASPxHyperLink ID="ASPxHyperLink1" runat="server" CssClass="button add icon" 
                                                            CssPostfix="button" Font-Names="王漢宗細圓體繁" Font-Size="Small" Text="新增收銀人員">
                                                            <ClientSideEvents Click="function(s, e) {
	grid.AddNewRow();
}" />
                                                        </dx:ASPxHyperLink>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" 
                                                            ClientInstanceName="grid" DataSourceID="edsPOS_passwd" Font-Names="王漢宗細圓體繁" 
                                                            Font-Size="Small" KeyFieldName="MsgId" 
                                                            OnCellEditorInitialize="ASPxGridView1_CellEditorInitialize" 
                                                            OnHtmlDataCellPrepared="ASPxGridView1_HtmlDataCellPrepared" 
                                                            OnHtmlRowCreated="ASPxGridView1_HtmlRowCreated" 
                                                            OnInitNewRow="ASPxGridView1_InitNewRow" 
                                                            OnRowInserting="ASPxGridView1_RowInserting" 
                                                            OnRowUpdating="ASPxGridView1_RowUpdating" 
                                                            OnRowValidating="ASPxGridView1_RowValidating" 
                                                            OnStartRowEditing="ASPxGridView1_StartRowEditing" Width="100%" 
                                                            OnHeaderFilterFillItems="ASPxGridView1_HeaderFilterFillItems">
                                                            <Columns>
                                                                <dx:GridViewCommandColumn ShowInCustomizationForm="True" VisibleIndex="0">
                                                                    <EditButton Visible="True">
                                                                    </EditButton>
                                                                    <DeleteButton Visible="True">
                                                                    </DeleteButton>
                                                                </dx:GridViewCommandColumn>
                                                                <dx:GridViewDataTextColumn Caption="帳號" FieldName="USER_ID" 
                                                                    ShowInCustomizationForm="True" VisibleIndex="3">
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="名稱" FieldName="SALE_NAME" 
                                                                    ShowInCustomizationForm="True" VisibleIndex="5">
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="密碼" FieldName="SALE_PID" 
                                                                    ShowInCustomizationForm="True" VisibleIndex="4">
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="作廢" FieldName="VOID_CODE" 
                                                                    ShowInCustomizationForm="True" VisibleIndex="6">
                                                                    <DataItemTemplate>
                                                                        <dx:ASPxLabel ID="labVOID_CODE" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                            Font-Size="Small" Text="labVOID_CODE" Width="100%">
                                                                        </dx:ASPxLabel>
                                                                    </DataItemTemplate>
                                                                    <EditItemTemplate>
                                                                        <dx:ASPxComboBox ID="cbVOID_CODE" runat="server" DataSourceID="edsSYS_voidtype" 
                                                                            Font-Names="王漢宗細圓體繁" Font-Size="Small" Text='<%# Eval("VOID_CODE") %>' 
                                                                            TextField="CODE_TEXT" TextFormatString="{0}" Value='<%# Bind("VOID_CODE") %>' 
                                                                            ValueField="CODE_ID" Width="100%">
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
                                                                    <CellStyle HorizontalAlign="Center">
                                                                    </CellStyle>
                                                                </dx:GridViewDataDateColumn>
                                                                <dx:GridViewDataTextColumn Caption="MsgId" FieldName="MsgId" 
                                                                    ShowInCustomizationForm="True" Visible="False" VisibleIndex="1">
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="店別" FieldName="comcode" 
                                                                    ShowInCustomizationForm="True" VisibleIndex="2">
                                                                    <Settings AllowHeaderFilter="True" HeaderFilterMode="CheckedList" />
                                                                    <DataItemTemplate>
                                                                        <dx:ASPxLabel ID="labNO_STORE" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                            Text="labNO_STORE" Width="100%">
                                                                        </dx:ASPxLabel>
                                                                    </DataItemTemplate>
                                                                    <EditItemTemplate>
                                                                        <dx:ASPxComboBox ID="cbNO_STORE" runat="server" DataSourceID="edsPOS_storedat" 
                                                                            Font-Names="王漢宗細圓體繁" TextField="NM_STORE" TextFormatString="{0}; {1}; {2}" 
                                                                            Value='<%# Bind("comcode") %>' ValueField="NO_STORE" Width="100%">
                                                                            <Columns>
                                                                                <dx:ListBoxColumn Caption="店號" FieldName="NO_STORE" Name="NO_STORE" />
                                                                                <dx:ListBoxColumn Caption="店名" FieldName="NM_STORE" Name="NM_STORE" />
                                                                                <dx:ListBoxColumn Caption="店鋪類型" FieldName="KEY_TEXT" Name="KEY_TEXT" />
                                                                            </Columns>
                                                                        </dx:ASPxComboBox>
                                                                    </EditItemTemplate>
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                            </Columns>
                                                            <SettingsBehavior AllowFocusedRow="True" ConfirmDelete="True" />
                                                            <SettingsPager AlwaysShowPager="True" PageSize="20" Position="TopAndBottom">
                                                            </SettingsPager>
                                                            <SettingsEditing EditFormColumnCount="1" />
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
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:NEWPMSConnectionString %>" 
                            ProviderName="<%$ ConnectionStrings:NEWPMSConnectionString.ProviderName %>">
                        </asp:SqlDataSource>
                        <asp:EntityDataSource ID="edsPOS_passwd" runat="server" 
                            ConnectionString="name=NEWPMSEntities" DefaultContainerName="NEWPMSEntities" 
                            EnableDelete="True" EnableFlattening="False" EnableInsert="True" 
                            EnableUpdate="True" EntitySetName="POS_passwd" 
                            OrderBy="it.comcode,it.USER_ID">
                        </asp:EntityDataSource>
                        <asp:EntityDataSource ID="edsSYS_voidtype" runat="server" 
                            ConnectionString="name=NEWPMSEntities" DefaultContainerName="NEWPMSEntities" 
                            EnableFlattening="False" EntitySetName="SYS_voidtype" EntityTypeFilter="" 
                            OrderBy="it.CODE_ID" Select="">
                        </asp:EntityDataSource>
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

