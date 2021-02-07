<%@ page title="" language="C#" masterpagefile="~/MainPage.master" autoeventwireup="true" inherits="STK_M02, App_Web_stk_m02.aspx.cdcab7d2" %>

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
                            <table class="style8">
                                <tr>
                                    <td align="left">
                                        <dx:ASPxHyperLink ID="ASPxHyperLink1" runat="server" CssClass="button add icon" 
                                            CssPostfix="button" Font-Names="王漢宗細圓體繁" Font-Size="Small" Text="新增商品分類">
                                            <ClientSideEvents Click="function(s, e) {
	grid.AddNewRow();
}" />
                                        </dx:ASPxHyperLink>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left">
                                        <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" 
                                            ClientInstanceName="grid" DataSourceID="EntityDataSource1" Font-Names="王漢宗細圓體繁" 
                                            KeyFieldName="MsgId" 
                                            OnCellEditorInitialize="ASPxGridView1_CellEditorInitialize" 
                                            OnHtmlRowCreated="ASPxGridView1_HtmlRowCreated" 
                                            OnInitNewRow="ASPxGridView1_InitNewRow" 
                                            OnRowInserting="ASPxGridView1_RowInserting" 
                                            OnRowValidating="ASPxGridView1_RowValidating">
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
                                                <dx:GridViewDataTextColumn Caption="商品分類" FieldName="CLASS_NO" 
                                                    ShowInCustomizationForm="True" VisibleIndex="2" Width="100px">
                                                    <HeaderStyle HorizontalAlign="Center" />
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn Caption="分類名稱" FieldName="CLASS_NAME" 
                                                    ShowInCustomizationForm="True" VisibleIndex="3" Width="300px">
                                                    <HeaderStyle HorizontalAlign="Center" />
                                                </dx:GridViewDataTextColumn>
                                            </Columns>
                                            <SettingsBehavior AllowFocusedRow="True" AllowSort="False" 
                                                ConfirmDelete="True" />
                                            <SettingsPager AlwaysShowPager="True" PageSize="50" Position="TopAndBottom">
                                            </SettingsPager>
                                            <SettingsEditing EditFormColumnCount="1" Mode="Inline" />
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
                                    </td>
                                </tr>
                            </table>
                            <br />
                        </div>
                    <br />
                    <br />
                    <br />
                        <asp:EntityDataSource ID="EntityDataSource1" runat="server" 
                            ConnectionString="name=NEWPMSEntities" DefaultContainerName="NEWPMSEntities" 
                            EnableDelete="True" EnableFlattening="False" EnableInsert="True" 
                            EnableUpdate="True" EntitySetName="STK_CLASS" EntityTypeFilter="" 
                            OrderBy="it.CLASS_NO" Select="">
                        </asp:EntityDataSource>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:TabPage>
        </TabPages>
    </dx:ASPxPageControl>
</asp:Content>

