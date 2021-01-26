<%@ page title="" language="C#" masterpagefile="~/MainPage.master" autoeventwireup="true" inherits="HQ_LineNotify1, App_Web_hq_linenotify1.aspx.cdcab7d2" %>

<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxTabControl" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxClasses" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxRoundPanel" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPanel" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.ASPxEditors.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>
<%@ Register namespace="DevExpress.Web.ASPxEditors" tagprefix="ASPxEditors" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
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
    <script type="text/javascript">
    </script>
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
                            <asp:Panel ID="Panel1" runat="server" Width="850px" HorizontalAlign="Left">
                                <table style="width:100%;">
                                    <tr>
                                        <td align="left">
                                            <dx:ASPxComboBox ID="cbClient_ID" runat="server" 
                                                DataSourceID="edsLINE_clientdoc" Font-Names="王漢宗細圓體繁" Height="28px" 
                                                TextField="Client_NAME" TextFormatString="{0}" ValueField="Client_ID" 
                                                Width="200px">
                                                <Columns>
                                                    <dx:ListBoxColumn Caption="通報名稱" FieldName="Client_NAME" Name="Client_NAME" />
                                                    <dx:ListBoxColumn Caption="Client_ID" FieldName="Client_ID" Name="Client_ID" 
                                                        Visible="False" />
                                                </Columns>
                                            </dx:ASPxComboBox>
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td align="left">
                                            <dx:aspxbutton ID="btnAuthorize" runat="server" Font-Names="王漢宗細圓體繁" 
                                                Font-Size="Small" Height="28px" OnClick="btnAuthorize_Click" Text="我要註冊" 
                                                xmlns:dx="devexpress.web.aspxeditors">
                                            </dx:aspxbutton>
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                </table>
                                <table style="width:100%;">
                                    <tr>
                                        <td style="font-size: small">
                                            <dx:ASPxLabel ID="ASPxLabel1" runat="server" Font-Bold="True" 
                                                Font-Names="王漢宗細圓體繁" Font-Size="Small" ForeColor="#FF3300" 
                                                Text="＊註冊前請先登入LINE網站並加入連動後(可點選以下網址或掃二維碼)，才能接受到相關通報訊息。">
                                            </dx:ASPxLabel>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <a href="https://notify-bot.line.me/zh_TW/" style="font-size: small" 
                                                target="_blank">https://notify-bot.line.me/zh_TW/</a></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:HyperLink ID="HyperLink3" runat="server" 
                                                ImageUrl="~/App_Themes/LINENotify.png" 
                                                NavigateUrl="https://notify-bot.line.me/zh_TW/" Target="_blank" 
                                                ToolTip="https://notify-bot.line.me/zh_TW/">HyperLink</asp:HyperLink>
                                        </td>
                                    </tr>
                                </table>
                                <br />
                                <br />
                                <br/>
                            </asp:Panel>
                            <br />
                        </div>
                    <br />
                        <dx:ASPxTextBox ID="ASPxTextBox1" runat="server" ClientVisible="False">
                        </dx:ASPxTextBox>
                        <dx:ASPxTextBox ID="ASPxTextBox2" runat="server" ClientVisible="False">
                        </dx:ASPxTextBox>
                        <dx:ASPxTextBox ID="ASPxTextBox3" runat="server" ClientVisible="False">
                        </dx:ASPxTextBox>
                        <dx:ASPxTextBox ID="ASPxTextBox4" runat="server" ClientVisible="False">
                        </dx:ASPxTextBox>
                    <br />
                    <br />
                        <asp:EntityDataSource ID="edsLINE_clientdoc" runat="server" 
                            ConnectionString="name=NEWPMSEntities" DefaultContainerName="NEWPMSEntities" 
                            EnableDelete="True" EnableFlattening="False" EnableInsert="True" 
                            EnableUpdate="True" EntitySetName="LINE_clientdoc" OrderBy="">
                        </asp:EntityDataSource>
                        <br />
                        <br />
                        <br />
                    </dx:ContentControl>
                </ContentCollection>
            </dx:TabPage>
        </TabPages>
    </dx:ASPxPageControl>
</asp:Content>

