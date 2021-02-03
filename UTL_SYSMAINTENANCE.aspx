<%@ page title="" language="C#" autoeventwireup="true" inherits="UTL_SYSMAINTENANCE, App_Web_utl_sysmaintenance.aspx.cdcab7d2" %>

<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxTabControl" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxClasses" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxRoundPanel" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPanel" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.ASPxEditors.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<%@ Register assembly="DevExpress.XtraScheduler.v12.1.Core, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.XtraScheduler" tagprefix="cc1" %>
<%@ Register assembly="DevExpress.Web.ASPxScheduler.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxScheduler" tagprefix="dxwschs" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link href="App_Themes/CustomTheme/Css/Button/Button2/gh-buttons.css" rel="stylesheet"
        type="text/css" />
    <style type="text/css">
	    BODY {
		    font-size: 14px; 
		    font-family: verdana; 
		    background-color: #FFFFFF; 
		    background-position: center;
		    margin: 5px;
		    height: 100%
	    }	
        .menuroot
        { 
            border-radius: 0 0 10px 0;
            box-shadow: #666 5px 5px 5px;
        }   
        .top
        {
            display:none;
            position:fixed;
            bottom:10px;
            right:10px;
        }    
    </style>
    <script src="Scripts/jquery-1.4.1.js" type="text/javascript"></script>
    <script type="text/javascript">
        //防止誤觸Backspace鍵跳離編輯中網頁
        function killBackSpace(e) {
            e = e ? e : window.event;
            var t = e.target ? e.target : e.srcElement ? e.srcElement : null;
            if (t && t.tagName && (t.type && /(password)|(text)|(file)/.test(t.type.toLowerCase())) || t.tagName.toLowerCase() == 'textarea')
                return true;
            var k = e.keyCode ? e.keyCode : e.which ? e.which : null;
            if (k == 8) {
                if (e.preventDefault)
                    e.preventDefault();
                return false;
            };
            return true;
        };
        if (typeof document.addEventListener != 'undefined')
            document.addEventListener('keydown', killBackSpace, false);
        else if (typeof document.attachEvent != 'undefined')
            document.attachEvent('onkeydown', killBackSpace);
        else {
            if (document.onkeydown != null) {
                var oldOnkeydown = document.onkeydown;
                document.onkeydown = function (e) {
                    oldOnkeydown(e);
                    killBackSpace(e);
                };
            }
            else
                document.onkeydown = killBackSpace;
        }
        //jQuery : for Back to Top
        $(window).ready(function () {
            $(window).scroll(function () {
                var _jumpOutHeight = 100;
                //取得目前捲動的高度
                var height = $(window).scrollTop();
                if (height > _jumpOutHeight && $(".top").css("display") == "none") {
                    $(".top").fadeIn(500);
                }
                if (height < _jumpOutHeight && $(".top").css("display") == "block") {
                    $(".top").fadeOut(500);
                }
            });
        });
    </script>
</head>
<body>
<form id="form1" runat="server" target="_blank">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div>
                <asp:Image ID="Image1" runat="server" 
                    ImageUrl="~/App_Themes/Basic/process.jpg" />
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</form>
<div class="top">
<a class="btn btn-inverse btn-large" href="#top" title=""><i class="icon-chevron-up icon-white"></i>
<img alt='' border='0' onmouseover="this.src='App_Themes/Basic/Top.png'" onmouseout="this.src='App_Themes/Basic/Top_medium.png'" src="App_Themes/Basic/Top_medium.png" />
</a>
</div>
</body>
</html>



