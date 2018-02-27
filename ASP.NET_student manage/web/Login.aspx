<%@ page language="C#" autoeventwireup="true" inherits="Login, App_Web_login.aspx.cdcab7d2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style>
        * {
            margin: 0;
            padding: 0;
        }

        body {
            font-family: "微软雅黑",Verdana, Geneva, sans-serif;
            font-size: 16px;
            background: #fff;
        }

        .head {
            height: 80px;
            background: #f5f5f5;
            border-bottom: 1px solid #e5ecf0;
            overflow: hidden;
        }

        .headcontainer {
            width: 1000px;
            margin: 0 auto;
        }

        .logo {
            padding-top: 10px;
            float: left;
        }

        .main {
            width: 1000px;
            height: 563px;
            margin: 20px auto 0 auto;
            background: url(/Images/homepageImage.jpg) no-repeat;
            position: relative;
        }

        .box {
            width: 400px;
            position: absolute;
            background: rgba(79,175,97,0.7);
            left: 0;
            right: auto;
            top: 60px;
        }

        .loginbox {
            width: 360px;
            margin: 20px auto;
        }

        .smallcell {
            height: 40px;
        }

        .bigcell {
            height: 55px;
        }

        .inputdiv {
            width: 100%;
            height: 40px;
            border-radius: 6px;
            border: 1px solid #eaeaea;
            background-color: white;
        }

        .input {
            position: relative;
            display: block;
            border: 0px;
            width: 94%;
            padding: 8px 3%;
            font-size: 18px;
        }

        .passport-btn {
            font-family: "微软雅黑";
            width: 100%;
            height: 40px;
            border-radius: 4px;
            font-size: 22px;
            border: 1px solid #eaeaea;
            color: rgb(79,175,97);
            text-align: center;
            cursor: pointer;
        }

        .tab {
            margin: 0 auto;
            height: 40px;
            width: 360px;
            overflow: hidden;
        }

            .tab li {
                font-family: "微软雅黑";
                font-size: 22px;
                color: rgb(79,175,97);
                list-style-type: none;
                height: 40px;
                line-height: 40px;
                float: left;
                width: 120px;
                text-align: center;
                cursor: pointer;
            }

        li.opt0 {
            background-image: url("/Images/01.png");
            color: white;
        }

        li.opt1 {
            background-image: url("/Images/02.png");
            color: white;
        }

        li.opt2 {
            background-image: url("/Images/03.png");
            color: white;
        }
    </style>
    <script>
        function refreshVcode() {
            var Image = document.getElementById("img");
            if (Image != null) {
                Image.src = Image.src + "?";
            }
        }
        function tabClick(tab) {
            var c = tab.className;
            var liList = tab.parentNode.getElementsByTagName('li');
            for (var i = liList.length - 1; i >= 0; i--) {
                if (tab == liList[i]) {
                    tab.className = 'opt' + i;
                    document.getElementById('<%=hfType.ClientID%>').value = i;
                }
                else {
                    liList[i].className = '';
                }
            }
        }
    </script>
</head>

<body>
    <form runat="server">
        <asp:ScriptManager ID="scriptmanager" runat="server"></asp:ScriptManager>
        <div class="head">
            <div class="headcontainer">
                <div class="logo">
                    <img src="/Images/logo.png" />
                </div>
            </div>
        </div>
        <div class="main">
            <div class="box">
                <table class="loginbox">
                    <tr class="smallcell">
                        <td style="color: white" colspan="2"><a>选择登录身份</a></td>
                    </tr>
                    <tr class="bigcell">
                        <td colspan="2">
                            <div style="width: 100%; height: 80%; background-color: white; border-radius: 6px; border: 1px solid #eaeaea;">
                                <ul id="choice" class="tab">
                                    <li id="student" onclick="tabClick(this)" class="opt1" runat="server">学生</li>
                                    <li id="teacher" onclick="tabClick(this)" class="" runat="server">教师</li>
                                    <li id="admin" onclick="tabClick(this)" class="" runat="server">管理员</li>
                                </ul>
                            </div>
                        </td>
                    </tr>
                    <tr class="smallcell">
                        <td style="color: white" colspan="2"><a>输入登录信息</a></td>
                    </tr>
                    <tr class="bigcell">
                        <td colspan="2">
                            <div class="inputdiv">
                                <asp:TextBox placeholder="请输入用户名" ID="txtUserName" runat="server" CssClass="input"></asp:TextBox>
                            </div>
                        </td>
                    </tr>
                    <tr class="bigcell">
                        <td colspan="2">
                            <div class="inputdiv">
                                <asp:TextBox placeholder="请输入密码" ID="txtPassword" runat="server" CssClass="input" MaxLength="16" TextMode="Password" Wrap="False"></asp:TextBox>
                            </div>
                        </td>
                    </tr>
                    <tr class="bigcell">
                        <td style="width: 180px;">
                            <div class="inputdiv">
                                <asp:TextBox placeholder="请输入验证码"  ID="txtValidateCode" runat="server" CssClass="input" Style="padding: 8px 6%; width: 88%" MaxLength="4"></asp:TextBox>
                            </div>
                        </td>
                        <td>
                            <img id="img" src="ValidateCode.aspx" style="float: right" onclick="refreshVcode()" />
                        </td>
                    </tr>
                    <tr class="bigcell">
                        <td colspan="2">
                            <asp:Button ID="btnLogin" runat="server" Text="登录" CssClass="passport-btn" OnClick="btnLogin_Click" /></td>
                    </tr>
                    <tr class="bigcell" style="height: auto;">
                        <td colspan="2">
                            <asp:UpdatePanel ID="uppMsg" runat="server">
                                <ContentTemplate>
                                    <asp:Panel ID="pMsg" runat="server" Style="padding-bottom: 10px; border-radius: 6px;">
                                        <asp:Label ID="lblType" runat="server" Style="font-size: 20px; padding-left: 12px; color: white;"></asp:Label><br />
                                        <asp:Label ID="lblMsg" runat="server" Style="padding-left: 12px; color: white;"></asp:Label>
                                    </asp:Panel>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <asp:HiddenField ID="hfType" runat="server" />
    </form>
</body>
</html>
