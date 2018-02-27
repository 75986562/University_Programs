<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="SelfCenter, App_Web_selfcenter.aspx.a1ee16cd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" type="text/css" href="../css/normalize.css" />
    <link rel="stylesheet" type="text/css" href="../css/htmleaf-demo.css" />
    <link href='https://fonts.googleapis.com/css?family=Lato:400,300,700,900' rel='stylesheet' type='text/css' />
    <link rel="stylesheet" type="text/css" href="../css/input-style.css" />
    <script src="/jquery-3.1.1.min.js"></script>
    <script src="/jquery.nice-select.min.js"></script>
    <script src="/layer.js"></script>
    <script>
        function showEdit() {
            layer.open({
                type: 1,
                skin: 'layui-layer-molv',
                btn: ['提交'],
                title: ['修改密码', 'font-family:微软雅黑;font-weight:bold;font-size:18px'],
                area: ['auto'],
                shadeClose: true, //点击遮罩关闭
                content: $("#table"),
                yes: function (index, layero) {
                    document.getElementById("<%=hbtnChangePassword.ClientID%>").click();
                }
            })
            }
    </script>
    <script>
        function msg(text)
        {
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
        .auto-style1 {
            width: 164px;
        }
    </style>
    <div class="selfInfoForm">
        <div class="familyInfo">
            <div class="InfoLogo">
                <img src="/Images/selfInfoLogo.png" />
                <asp:Button style="display:none" ID="hbtnChangePassword" runat="server" OnClick="hbtnChangePassword_Click" Text="Button" />
            </div>
            <div style="margin: 10px 20px">
                <table style="width: 100%; margin-top: 30px">
                    <tr>
                        <td class="leftInfo">姓名</td>
                        <td>
                            <div class="col-3" style="margin: 10px auto; margin-left: 20px; width: 200px;">
                                <asp:Label ID="lblName" runat="server"></asp:Label>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td class="leftInfo">年龄</td>
                        <td>
                            <div class="col-3" style="margin: 10px auto; margin-left: 20px; width: 200px">
                                <asp:Label ID="lblAge" runat="server"></asp:Label>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td class="leftInfo">性别</td>
                        <td>
                            <div class="col-3" style="margin: 10px auto; margin-left: 20px; width: 200px">
                                <asp:Label ID="lblSex" runat="server"></asp:Label>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td class="leftInfo">籍贯</td>
                        <td>
                            <div class="col-3" style="margin: 10px auto; margin-left: 20px; width: 200px">
                                <asp:Label ID="lblNation" runat="server"></asp:Label>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td class="leftInfo">政治面貌</td>
                        <td>
                            <div class="col-3" style="margin: 10px auto; margin-left: 20px; width: 200px">
                                <asp:Label ID="lblPs" runat="server"></asp:Label>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td class="leftInfo">身份证号</td>
                        <td>
                            <div class="col-3" style="margin: 10px auto; margin-left: 20px; width: 200px">
                                <asp:Label ID="lblIDnumber" runat="server"></asp:Label>
                            </div>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="InfoLogo">
                <img src="/Images/schoolInfoLogo.png" />
            </div>
            <div style="margin: 10px 20px">
                <table style="width: 100%; margin-top: 30px">
                    <tr>
                        <td class="leftInfo">教工号</td>
                        <td>
                            <div class="col-3" style="margin: 10px auto; margin-left: 20px; width: 200px">
                                <asp:Label ID="lblID" runat="server"></asp:Label>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td class="leftInfo">学院</td>
                        <td>
                            <div class="col-3" style="margin: 10px auto; margin-left: 20px; width: 200px">
                                <asp:Label ID="lblCollege" runat="server"></asp:Label>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td class="leftInfo">职称</td>
                        <td>
                            <div class="col-3" style="margin: 10px auto; margin-left: 20px; width: 200px">
                                <asp:Label ID="lblTname" runat="server"></asp:Label>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td class="leftInfo">备注</td>
                        <td>
                            <div class="col-3" style="margin: 10px auto; margin-left: 20px; width: 200px">
                                <asp:Label ID="lblOther" runat="server"></asp:Label>
                            </div>
                        </td>
                    </tr>
                </table>
            </div>
            <div style="width: 100%; margin-top: 30px">
                <input type="button" class="infoButton" value="修改密码" style="margin-left: 360px; width: 200px; height: 35px" onclick="showEdit()" />
            </div>
        </div>
    </div>

    <table id="table" style="display:none">
        <tr>
            <td class="leftInfo" style="width: 100px">原密码</td>
            <td class="auto-style1">
                <div style="margin-left: 20px; margin-right: auto; margin-top: 10px; margin-bottom: 10px;">
                    <asp:TextBox ID="txtOldPwd" runat="server" TextMode="Password"></asp:TextBox>
                </div>
            </td>
        </tr>
        <tr>
            <td class="leftInfo" style="width: 100px">新密码</td>
            <td class="auto-style1">
                <div style="margin-left: 20px; margin-right: auto; margin-top: 10px; margin-bottom: 10px;">
                    <asp:TextBox ID="txtNewPwd" runat="server" TextMode="Password"></asp:TextBox>
                </div>
            </td>
        </tr>
        <tr>
            <td class="leftInfo" style="width: 120px">重复新密码</td>
            <td class="auto-style1">
                <div style="margin-left: 20px; margin-right: 20px; margin-top: 10px; margin-bottom: 10px;">
                    <asp:TextBox ID="txtNewPwd2" runat="server" TextMode="Password"></asp:TextBox>
                </div>
            </td>
        </tr>
    </table>
</asp:Content>
