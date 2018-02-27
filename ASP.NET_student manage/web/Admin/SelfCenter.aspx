<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="SelfCenter, App_Web_selfcenter.aspx.fdf7a39c" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" type="text/css" href="../css/normalize.css" />
    <link rel="stylesheet" type="text/css" href="../css/htmleaf-demo.css" />
    <link href='https://fonts.googleapis.com/css?family=Lato:400,300,700,900' rel='stylesheet' type='text/css' />
    <link rel="stylesheet" type="text/css" href="../css/input-style.css" /> 
    <script src="/jquery-3.1.1.min.js"></script>
    <script src="/layer.js"></script>
    <script>
        function msg(text) {
            layer.msg(text);
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="Server">
   
    <style>
        body {
            background-color: #f5f5f5;
        }

        .selfInfoForm {
            margin: 10px auto;
            margin-top: 30px;
            width: 1000px;
            height: 800px;
            background-color: white;
            border-radius: 10px;
            border: 1px solid #eaeaea;
        }

        .InfoLogo {
            width: 96%;
            height: 55px;
            margin-left: 20px;
            padding-top: 20px;
            padding-bottom: 10px;
            margin-bottom: 10px;
            border-bottom: 2px solid #e5ecf0;
        }

        .familyInfo {
            height: 50%;
            width: 100%;
        }

        .leftItem {
            height: 600px;
            width: 30%;
            margin-left: 20px;
            float: left;
        }

        .rightItem {
            height: 600px;
            width: 65%;
            margin-left: 10px;
            float: left;
        }

        .selfInfoItems {
        }

            .selfInfoItems li {
                font-family: "微软雅黑";
                font-size: 18px;
                list-style-type: none;
                line-height: 30px;
            }

        .leftInfo {
            width: 35%;
            text-align: right;
            font-family: "微软雅黑";
            font-size: 18px;
            padding: 10px;
        }

        .infoButton {
            width: 100px;
            background-color: rgb(79,157,97);
            height: 30px;
            font-family: 微软雅黑;
            font-size: 15px;
            color: white;
            border: none;
            border-radius: 3px;
            margin-top: -7px;
        }

        .auto-style3 {
            float: left;
            width: 200px;
            margin: 40px 3%;
            position: relative;
            top: 0px;
            left: 0px;
        }

        .auto-style4 {
            text-align: right;
            font-family: "微软雅黑";
            font-size: 18px;
            padding: 10px;
        }
    </style>
    <div class="selfInfoForm">
        <div class="familyInfo">
            <div class="InfoLogo">
                <img src="/Images/selfInfoLogo.png" />
            </div>
            <div style="margin: 10px 20px">
                <table style="width: 100%; margin-top: 30px">
                    <tr>
                        <td class="leftInfo">姓名</td>
                        <td>
                            <div class="auto-style3" style="margin-left: 20px; margin-right: auto; margin-top: 10px; margin-bottom: 10px;">
                                <asp:Label ID="lblAdminName" runat="server"></asp:Label>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td class="leftInfo">原密码</td>
                        <td>
                            <div class="auto-style3" style="margin-left: 20px; margin-right: auto; margin-top: 10px; margin-bottom: 10px;">
                                <asp:TextBox ID="txtOldPwd" runat="server" TextMode="Password"></asp:TextBox>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td class="leftInfo">新密码</td>
                        <td>
                            <div class="auto-style3" style="margin-left: 20px; margin-right: auto; margin-top: 10px; margin-bottom: 10px;">
                                <asp:TextBox ID="txtNewPwd" runat="server" TextMode="Password"></asp:TextBox>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td class="leftInfo">重复新密码</td>
                        <td>
                            <div class="auto-style3" style="margin-left: 20px; margin-right: auto; margin-top: 10px; margin-bottom: 10px;">
                                <asp:TextBox ID="txtNewPwd2" runat="server" TextMode="Password"></asp:TextBox>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4" colspan="2" style="text-align:center">
                            <div>
                                <asp:Button runat="server" CssClass="infoButton" Text="修改密码" ID="btnChangePwd" OnClick="btnChangePwd_Click"/>
                            </div>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</asp:Content>

