<%@ page title="" language="C#" masterpagefile="~/MainPage.master" autoeventwireup="true" inherits="ECR_PosFunSetup, App_Web_ecr_posfunsetup.aspx.cdcab7d2" %>

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
                            <dx:ASPxPanel ID="ASPxPanel1" runat="server" RenderMode="Table" Width="500px">
                                <PanelCollection>
                                    <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                                        <div align="left">
                                            <table class="style8">
                                                <tr>
                                                    <td>
                                                        <dx:ASPxHyperLink ID="ASPxHyperLink1" runat="server" CssClass="button add icon" 
                                                            CssPostfix="button" Font-Names="王漢宗細圓體繁" Font-Size="Small" Text="新增功能">
                                                            <ClientSideEvents Click="function(s, e) {
	grid.AddNewRow();
}" />
                                                        </dx:ASPxHyperLink>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" 
                                                            ClientInstanceName="grid" DataSourceID="EntityDataSource1" Font-Names="王漢宗細圓體繁" 
                                                            Font-Size="Small" KeyFieldName="MsgId" 
                                                            OnCellEditorInitialize="ASPxGridView1_CellEditorInitialize" 
                                                            OnHtmlDataCellPrepared="ASPxGridView1_HtmlDataCellPrepared" 
                                                            OnHtmlRowCreated="ASPxGridView1_HtmlRowCreated" 
                                                            OnInitNewRow="ASPxGridView1_InitNewRow" 
                                                            OnRowInserting="ASPxGridView1_RowInserting" 
                                                            OnRowValidating="ASPxGridView1_RowValidating" Width="100%">
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
                                                                <dx:GridViewDataTextColumn Caption="功能代碼" FieldName="FUNCODE" 
                                                                    ShowInCustomizationForm="True" VisibleIndex="2">
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                    <CellStyle HorizontalAlign="Center">
                                                                    </CellStyle>
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="功能名稱" FieldName="FUNNAME" 
                                                                    ShowInCustomizationForm="True" VisibleIndex="3">
                                                                    <Settings AllowSort="False" />
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="功能說明" FieldName="FUNDESC" 
                                                                    ShowInCustomizationForm="True" VisibleIndex="4">
                                                                    <Settings AllowSort="False" />
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataComboBoxColumn Caption="作廢別" FieldName="VOID_CODE" 
                                                                    ShowInCustomizationForm="True" VisibleIndex="5">
                                                                    <PropertiesComboBox DataSourceID="edsSYS_VOIDTYPE" TextField="CODE_TEXT" 
                                                                        TextFormatString="{0}" ValueField="CODE_ID">
                                                                        <Columns>
                                                                            <dx:ListBoxColumn Caption="說明" FieldName="CODE_TEXT" Name="CODE_TEXT" />
                                                                            <dx:ListBoxColumn Caption="值" FieldName="CODE_ID" Name="CODE_ID" />
                                                                        </Columns>
                                                                    </PropertiesComboBox>
                                                                    <DataItemTemplate>
                                                                        <dx:ASPxLabel ID="labVOID_CODE" runat="server" Font-Names="王漢宗細圓體繁" 
                                                                            Text="labVOID_CODE">
                                                                        </dx:ASPxLabel>
                                                                    </DataItemTemplate>
                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                    <CellStyle HorizontalAlign="Center">
                                                                    </CellStyle>
                                                                </dx:GridViewDataComboBoxColumn>
                                                            </Columns>
                                                            <SettingsBehavior AllowFocusedRow="True" ConfirmDelete="True" />
                                                            <SettingsPager AlwaysShowPager="True" PageSize="20" Position="TopAndBottom">
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
                                                    </td>
                                                </tr>
                                            </table>
                                            <br />
                                        </div>
                                    </dx:PanelContent>
                                </PanelCollection>
                            </dx:ASPxPanel>
                            <br />
                            <br />
                        </div>
                    <br />
                        <asp:EntityDataSource ID="EntityDataSource1" runat="server" 
                            ConnectionString="name=NEWPMSEntities" DefaultContainerName="NEWPMSEntities" 
                            EnableDelete="True" EnableFlattening="False" EnableInsert="True" 
                            EnableUpdate="True" EntitySetName="POS_keyfunc" EntityTypeFilter="" 
                            OrderBy="it.FUNCODE" Select="">
                        </asp:EntityDataSource>
                        <asp:EntityDataSource ID="edsSYS_VOIDTYPE" runat="server" 
                            ConnectionString="name=NEWPMSEntities" DefaultContainerName="NEWPMSEntities" 
                            EnableFlattening="False" EntitySetName="SYS_voidtype">
                        </asp:EntityDataSource>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:TabPage>
        </TabPages>
    </dx:ASPxPageControl>
</asp:Content>

