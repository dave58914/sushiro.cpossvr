<%@ page title="" language="C#" masterpagefile="~/MasterPageLogin.master" autoeventwireup="true" inherits="Login, App_Web_login.aspx.cdcab7d2" %>

<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxMenu" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxRoundPanel" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPanel" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxEditors.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 28px;
        }
        .content {
		    width: 100%;
	    }
        .style3
        {
            width: 100%;
        }
        .pie_radius_w{
            width:100%;
            height:100%;
            border-right: lightblue 5px solid; 
            border-top: lightblue 5px solid; 
            border-left: lightblue 5px solid; 
            border-bottom: lightblue 5px solid;
            border-radius: 0 0 20px 0;
            box-shadow: #666 -5px 5px 5px;
            position:relative;
        }
        .style4
        {
            width: 47px;
        }
        .form-control-login {
            width: 100%;
            border: 1px solid #aaa;
            border-radius: 4px;
            margin: 0px 0;
            outline: none;
            padding: 8px;
            box-sizing: border-box;
            transition: 0.3s;
            background-image:url(App_Themes/Basic/baseline_account_circle_black_18dp.png);
            background-repeat:no-repeat;
        }
        .form-control-login:focus {
            border-color: dodgerBlue;
            box-shadow: 0 0 8px 0 dodgerBlue;
        }
        .inputWithIcon  .form-control-login {
            padding-left: 40px;
        }
        .inputWithIcon {
            position: relative;
            top: 3px;
            left: 6px;
        }
        .inputWithIcon i {
            position: absolute;
            left: 0;
            top: 2px;
            padding: 9px 8px;
            color: #aaa;
            transition: 0.3s;
        }
        .inputWithIcon  .form-control-login:focus + i {
            color: dodgerBlue;
        }
        .inputWithIcon.inputIconBg i {
            background-color: #aaa;
            color: #fff;
            padding: 9px 4px;
            border-radius: 4px 0 0 4px;
        }
        .inputWithIcon.inputIconBg  .form-control-login:focus + i {
            color: #fff;
            background-color: dodgerBlue;
        }
        .form-control-pwd {
            width: 100%;
            border: 1px solid #aaa;
            border-radius: 4px;
            margin: 0px 0;
            outline: none;
            padding: 8px;
            box-sizing: border-box;
            transition: 0.3s;
            background-image:url(App_Themes/Basic/baseline_password_black_18dp.png);
            background-repeat:no-repeat;
        }
        .form-control-pwd:focus {
            border-color: dodgerBlue;
            box-shadow: 0 0 8px 0 dodgerBlue;
        }
        .inputWithIcon  .form-control-pwd {
            padding-left: 40px;
        }
        .inputWithIcon {
            position: relative;
            top: 3px;
            left: 6px;
        }
        .inputWithIcon i {
            position: absolute;
            left: 0;
            top: 2px;
            padding: 9px 8px;
            color: #aaa;
            transition: 0.3s;
        }
        .inputWithIcon  .form-control-pwd:focus + i {
            color: dodgerBlue;
        }
        .inputWithIcon.inputIconBg i {
            background-color: #aaa;
            color: #fff;
            padding: 9px 4px;
            border-radius: 4px 0 0 4px;
        }
        .inputWithIcon.inputIconBg  .form-control-pwd:focus + i {
            color: #fff;
            background-color: dodgerBlue;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div align="center">
        <div>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <dx:ASPxPanel ID="ASPxPanel1" runat="server" Height="515px" Width="100%">
                        <PanelCollection>
                            <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                                <div align="center">
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <asp:Panel ID="Panel1" runat="server" BackColor="White" CssClass="pie_radius_w" 
                                        Height="205px" style="top: -8px; left: 5px" Width="360px">
                                        <table class="style3">
                                            <tr>
                                                <td align="left">
                                                    <asp:Panel ID="Panel2" runat="server" Height="60px" Width="100%">
                                                        <table style="width:100%;">
                                                            <tr>
                                                                <td align="center" class="style4">
                                                                    <dx:ASPxImage ID="ASPxImage3" runat="server" Height="36px" 
                                                                        ImageUrl="~/App_Themes/Basic/logo.png">
                                                                    </dx:ASPxImage>
                                                                </td>
                                                                <td>
                                                                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Broadway" 
                                                                        Font-Size="16pt" Text="sushiro"></asp:Label>
                                                                </td>
                                                                <td>
                                                                    &nbsp;</td>
                                                            </tr>
                                                        </table>
                                                    </asp:Panel>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <table style="width: 100%">
                                                        <tr>
                                                            <td align="center">
                                                                <div class="col-sm-6">
                                                                    <div class="inputWithIcon">
                                                                        <span style="color: black;">
                                                                        <asp:TextBox ID="TextBox1" runat="server" PlaceHolder="請輸入您的帳號"
                                                                            CausesValidation="True" CssClass="form-control-login" Font-Names="王漢宗細圓體繁" 
                                                                            Font-Size="Small" ToolTip="大小寫有分" Width="285px" 
                                                                            AutoCompleteType="Disabled"></asp:TextBox>
                                                                        <i aria-hidden="true" class="fa fa-user fa-lg fa-fw"></i></span>
                                                                        <br />
                                                                    </div>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td align="center">
<div class="col-sm-6">
    <div class="inputWithIcon"> 
        <span style="color: black;"> 
			<asp:TextBox ID="TextBox2" runat="server" PlaceHolder="請輸入您的密碼" CausesValidation="True" 
                 CssClass="form-control-pwd" Font-Names="王漢宗細圓體繁" 
				 TextMode="Password"
                 Font-Size="Small" ToolTip="大小寫有分" Width="285px" 
            AutoCompleteType="Disabled"></asp:TextBox>
            <i class="fa fa-user fa-lg fa-fw" aria-hidden="true"></i>
        </span> 
        <br /> 
    </div>
</div>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            
                                        </table>
                                        <table style="margin-top: 5px; width: 100%;">
                                        <tr>
                                                <td align="right" style="padding-right: 5px">
                                                    <dx:ASPxButton ID="ASPxButton1" runat="server" AutoPostBack="False" 
                                                        CssClass="button pill" CssPostfix="button" Font-Bold="False" 
                                                        Font-Names="王漢宗細圓體繁" Font-Size="Small" HorizontalAlign="Center" 
                                                        OnClick="ASPxButton1_Click" Text="確認" Width="120px">
                                                        <Image Url="~/App_Themes/Basic/ok.png" Width="22px">
                                                        </Image>
                                                    </dx:ASPxButton>
                                                </td>
                                                <td align="left" style="padding-left: 10px">
                                                    <dx:ASPxButton ID="ASPxButton2" runat="server" AllowFocus="False" 
                                                        CssClass="button pill" CssPostfix="button" 
                                                        Font-Bold="False" Font-Names="王漢宗細圓體繁" Font-Size="Small" 
                                                        HorizontalAlign="Center" OnClick="ASPxButton2_Click" Text="重置" 
                                                        Width="120px">
                                                        <Image Url="~/App_Themes/Basic/cancel.png" Width="22px">
                                                        </Image>
                                                    </dx:ASPxButton>
                                                </td>

                                        </tr>
                                        </table>


                                    </asp:Panel>
                                </div>
                            </dx:PanelContent>
                        </PanelCollection>
                    </dx:ASPxPanel>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>
</asp:Content>

