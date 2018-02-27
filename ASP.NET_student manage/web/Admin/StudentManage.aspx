<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="Admin_StudentManager, App_Web_studentmanage.aspx.fdf7a39c" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" type="text/css" href="/css/normalize.css" />
    <link rel="stylesheet" type="text/css" href="/css/htmleaf-demo.css" />
    <link href='https://fonts.googleapis.com/css?family=Lato:400,300,700,900' rel='stylesheet' type='text/css' />
    <link rel="stylesheet" type="text/css" href="/css/input-style.css" />
    <link rel="stylesheet" type="text/css" href="/css/nice-select.css" />
    <link rel="stylesheet" type="text/css" href="/css/pintsize.min.css" />
    <script src="/jquery-3.1.1.min.js"></script>
    <script src="/jquery.nice-select.min.js"></script>
    <script src="/layer.js"></script>
    <script src="/jquery-3.1.1.min.js"></script>
    <script src="/jquery.nice-select.min.js"></script>
    <script src="/layer.js"></script>
    <script>
        $(document).ready(function () {
            $('select').niceSelect();
        });
        function msg(text) {
            layer.msg(text);
            window.location.reload();
        }
        function aa() {
            $('select').niceSelect();
        }
        function pageload() {
            $('select').niceSelect();
        }
        function alert() {
            return confirm("确定删除？");
        }

        <%--         function showNew() {
            layer.open({
                type: 1,
                skin: 'layui-layer-molv',
                btn: ['提交'],
                title: ['新增教师', 'font-family:微软雅黑;font-weight:bold;font-size:18px'],
                area: ['auto'],
                shadeClose: true, //点击遮罩关闭
                content: $("#hiden_table"),
                yes: function (index, layero) {
                    var ob=document.getElementById('<%=Button_hdadd.ClientID%>');
                    ob.focus();
                    ob.click();
                }
            })
            }--%>

        function showNew() {
            layer.open({
                type: 1,
                skin: 'layui-layer-molv',
                btn: ['提交'],
                title: ['新增学生', 'font-family:微软雅黑;font-weight:bold;font-size:18px'],
                area: ['auto'],
                shadeClose: true, //点击遮罩关闭
                content: $("#table"),
                yes: function (index, layero) {
                    var ob = document.getElementById('<%=hbtnNewStudent.ClientID%>').click();
                    ob.focus();
                    ob.click();
                }
            })
            }

        function showEdit(S_id, S_name, S_age,Admission, Address, ID_number, Has_cerdit, Fail_number, clooege, major, class_name, Ps_id, type) {
           document.getElementById('<%=txtEditS_id.ClientID%>').value = S_id;
           document.getElementById('<%=txtEditS_name.ClientID%>').value = S_name;
            document.getElementById('<%=txtEditS_age.ClientID%>').value = S_age;
            document.getElementById('<%=txtEditAdmission.ClientID%>').value = Admission;
           document.getElementById('<%=txtEditAddress.ClientID%>').value = Address;
           document.getElementById('<%=txtEditID_number.ClientID%>').value = ID_number;
           document.getElementById('<%=txtEditHas_cerdit.ClientID%>').value = Has_cerdit;
           document.getElementById('<%=txtEditFail_number.ClientID%>').value = Fail_number;
           layer.open({
               type: 1,
               skin: 'layui-layer-molv',
               btn: ['提交'],
               title: ['修改学生信息', 'font-family:微软雅黑;font-weight:bold;font-size:18px'],
               area: ['auto'],
               shadeClose: true, //点击遮罩关闭
               content: $("#Edittable"),
               yes: function (index, layero) {
                   document.getElementById('<%=hbtnEditStudent.ClientID%>').click();
                    location.reload();
                }
            })
            }

    </script>
    <style>
        .effect-8 ~ .focus-border:before,
        .effect-8 ~ .focus-border:after {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            width: 0;
            height: 2px;
            background-color: rgb(79,157,97);
            transition: 0.3s;
        }

        .effect-8 ~ .focus-border:after {
            top: auto;
            bottom: 0;
            left: auto;
            right: 0;
        }

        .effect-8 ~ .focus-border i:before,
        .effect-8 ~ .focus-border i:after {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            width: 2px;
            height: 0;
            background-color: rgb(79,157,97);
            transition: 0.4s;
        }

        .effect-8 ~ .focus-border i:after {
            left: auto;
            right: 0;
            top: auto;
            bottom: 0;
        }

        .effect-8:focus ~ .focus-border:before,
        .effect-8:focus ~ .focus-border:after {
            width: 100%;
            transition: 0.3s;
        }

        .effect-8:focus ~ .focus-border i:before,
        .effect-8:focus ~ .focus-border i:after {
            height: 100%;
            transition: 0.4s;
        }

        * {
            margin: 0px;
            padding: 0px;
        }

        body {
            background-color: #f5f5f5;
        }

        .ManageForm {
            margin: 10px auto;
            margin-top: 30px;
            width: 1000px;
            height: auto;
            background-color: white;
            border-radius: 10px;
            border: 1px solid #eaeaea;
        }

        .headtop {
            width: 90%;
            height: 50px;
            margin: 10px auto;
        }

        .words {
            font-family: 微软雅黑;
            font-size: 20px;
            margin: 10px;
            float: left;
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
            margin-top: 10px;
        }

         .ManagerButton {
            width: 100px;
            background-color: rgb(0,18, 255);
            height: 30px;
            font-family: 微软雅黑;
            font-size: 15px;
            color: white;
            border: none;
            border-radius: 3px;
            margin-top: 10px;
        }

        .gridView {
            width: 90%;
            height: 500px;
            margin: 10px auto;
        }

        .inputTable {
            height: 300px;
            width: 600px;
            margin: 30px 120px;
        }

            .inputTable tr {
                overflow: hidden;
            }

            .inputTable td {
                width: 20%;
                height: 20%;
                font-family: 微软雅黑;
                font-size: 17px;
                text-align: left;
                padding-left: 10px;
            }

        .search input.inp_srh, .search input.btn_srh {
            border: none;
            background: none;
            height: 35px;
            line-height: 35px;
            float: left;
        }

        .search input.inp_srh {
            outline: none;
            width: 125px;
        }

        .search input.btn_srh {
            background: rgb(79,157,97);
            color: #FFF;
            font-family: "微软雅黑";
            font-size: 15px;
            width: 60px;
            height: 42px;
        }

         .search input.inp_srh, .search input.btn_srh {
                border: none;
                background: none;
                height: 35px;
                line-height: 35px;
                float: left;
            }

            .search input.inp_srh {
                outline: none;
                width: 125px;
            }

            .search input.btn_srh {
                background: rgb(79,157,97);
                color: #FFF;
                font-family: "微软雅黑";
                font-size: 15px;
                width: 60px;
                height: 42px;
            }


    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="Server">
    
    <div style="width: 1000px; margin: 20px auto; border-radius: 5px; background-color: white; padding: 20px;">
        <asp:ScriptManager ID="ScriptManager" runat="server"></asp:ScriptManager>
         <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
        <table>
            <tr>
        <td class="auto-style4">
                <div class="search radius6" style="margin-top:10px;float:right">
	                <form name="searchform" method="post" action="/e/search/index.php" >
		            <input name='ecmsfrom' type='hidden' value='9'/>
		            <input type="hidden" name="show" value="title,newstext"/>
		            <select name="classid" id="choose" >
			        <option value="学号">学号</option>
			        <option value="姓名">姓名</option>
		            </select> 
		            <input class="inp_srh" name="keyboard"  placeholder="请输入关键词"/ >
                        <asp:Button ID="Button_search" runat="server" class="btn_srh" Text="搜索" OnClick="Button_search_Click1" />
		            <%--<input class="btn_srh" type="submit" name="submit" value="搜索"/>--%>
	                </form>
</div>
                &nbsp;</td>
                </tr>
            </table>

         
       
                <table style="width: 100%">
                    <tr>
                        <td style="width: 50px">学院：
                        </td>
                        <td style="width: 100px">
                            <asp:DropDownList ID="ddlCollege" runat="server" AutoPostBack="True" DataSourceID="ObjectDataCollege" DataTextField="C_name" DataValueField="C_id" OnSelectedIndexChanged="ddlCollege_SelectedIndexChanged">
                            </asp:DropDownList>
                        </td>
                        <td style="width: 50px">专业：</td>
                        <td style="width: 100px">

                            <asp:UpdatePanel ID="UpdatePanel8" runat="server">
                                <ContentTemplate>
                                    <asp:DropDownList ID="ddlMajor" runat="server" AutoPostBack="True" DataSourceID="ObjectDataMajor" DataTextField="M_name" DataValueField="M_id">
                                    </asp:DropDownList>
                                </ContentTemplate>
                            </asp:UpdatePanel>


                        </td>
                        <td style="width: 50px">班级：</td>
                        <td style="width: 100px">
                            <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                                <ContentTemplate>
                                    <asp:DropDownList ID="ddlClass" runat="server" AutoPostBack="True" DataSourceID="ObjectDataClass" DataTextField="Class_name" DataValueField="Class_id" OnSelectedIndexChanged="ddlClass_SelectedIndexChanged" OnDataBound="ddlClass_DataBound">
                                    </asp:DropDownList>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </td>



                        <td style="width: 150px">
                            <div style="float: right; height: 50px">
                                <asp:Button ID="btnNewStudent" runat="server" Text="新增学生" OnClientClick="showNew()" CssClass="infoButton" />
                            </div>

                            <asp:Button ID="hbtnNewStudent" runat="server" OnClick="hbtnNewStudent_Click" Style="display: block" Text="隐藏新增" />
                            <asp:Button ID="hbtnEditStudent" runat="server" OnCommand="btnEdit_Command" Style="display: block" Text="隐藏编辑" />

                        </td>
                    </tr>



                    <tr>
                        <td colspan="9">
                            <asp:GridView ID="gvStudent" runat="server" AutoGenerateColumns="False" DataKeyNames="S_id" EmptyDataText="暂无数据" AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="gvStudent_SelectedIndexChanged" AllowSorting="True">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:BoundField DataField="S_id" HeaderText="学生学号" ReadOnly="True" SortExpression="S_id" />
                                    <asp:BoundField DataField="S_name" HeaderText="学生姓名" SortExpression="S_name" />
                                    <asp:BoundField DataField="S_sex" HeaderText="性别" SortExpression="S_sex" />
                                    <asp:BoundField DataField="S_age" HeaderText="年龄" SortExpression="S_age" />
                                    <asp:BoundField DataField="Nation" HeaderText="民族" SortExpression="Nation" />
                                    <asp:BoundField DataField="C_name" HeaderText="学院" SortExpression="C_name" />
                                    <asp:BoundField DataField="M_name" HeaderText="专业" SortExpression="M_name" />
                                    <asp:BoundField DataField="Class_name" HeaderText="班级名" SortExpression="Class_name" />
                                    <asp:BoundField DataField="Admission" HeaderText="入学时间" SortExpression="Admission" />
                                    <asp:BoundField DataField="Address" HeaderText="家庭住址" SortExpression="Address" />
                                    <asp:BoundField DataField="Ps_name" HeaderText="政治面貌" SortExpression="Ps_name" />
                                    <asp:BoundField DataField="ID_number" HeaderText="身份证号" SortExpression="ID_number" />
                                    <asp:BoundField DataField="Has_cerdit" HeaderText="已修学分" SortExpression="Has_cerdit" />
                                    <asp:BoundField DataField="Fail_number" HeaderText="挂科数" SortExpression="Fail_number" />

                                    <asp:TemplateField HeaderText="操作">
                                        <ItemTemplate>
                                            <asp:Button Style="width: 50px; margin-top: 0px" ID="btnEdit" runat="server" CssClass="infoButton" CommandArgument='<%# Eval("S_id") %>' Text="编辑" OnCommand="btnEdit_Command" />
                                            <asp:Button Style="width: 50px; background-color: orangered; margin-top: 0px" ID="btnDelete" runat="server" CssClass="infoButton" OnClientClick="return alert()" OnCommand="btnDelete_Command" CommandArgument='<%# Eval("S_id") %>' Text="删除" OnCome="btnDelete_Click" />
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:HyperLinkField DataNavigateUrlFields="S_id,S_name" DataNavigateUrlFormatString="/Admin/SCManage.aspx?id={0}&amp;name={1}" HeaderText="[课程管理]" NavigateUrl="~/Admin/SCManage.aspx" Text="课程管理" />

                                </Columns>
                                <EditRowStyle BackColor="#7C6F57" />
                                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#E3EAEB" />
                                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                                <SortedAscendingHeaderStyle BackColor="#246B61" />
                                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                                <SortedDescendingHeaderStyle BackColor="#15524A" />
                            </asp:GridView>
                        </td>
                    </tr>
                </table>
     
                      </ContentTemplate>
        </asp:UpdatePanel>
        <table style="display: block" class="inputTable" id="table">
            <tr>
                <td class="auto-style2">学生学号</td>
                <td style="width: 30%">
                    <div class="col-3" style="margin: 0 auto; width: 100%">
                        <asp:TextBox ID="txtS_id" runat="server" CssClass="effect-8" Style="font-family: 微软雅黑;"></asp:TextBox>
                        <span class="focus-border" style="background-color: rgb(79,157,97);">
                            <i></i>
                        </span>
                    </div>
                </td>
                <td style="text-align: center; vertical-align: middle">密码</td>
                <td style="width: 30%">
                    <div class="col-3" style="margin: 0 auto; width: 100%">
                        <asp:TextBox ID="txtS_password" runat="server" class="effect-8" Style="font-family: 微软雅黑"></asp:TextBox>
                        <span class="focus-border" style="background-color: rgb(79,157,97);">
                            <i></i>
                        </span>
                    </div>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">学生姓名</td>
                <td>
                    <div class="col-3" style="margin: 0 auto; width: 100%">
                        <asp:TextBox ID="txtS_name" class="effect-8" Style="font-family: 微软雅黑" runat="server"></asp:TextBox>
                        <span class="focus-border" style="background-color: rgb(79,157,97);"><i></i></span>
                    </div>
                </td>
                <td style="text-align: center">性别</td>
                <td>
                    <asp:DropDownList ID="ddlsex" runat="server" CssClass="wide">
                        <asp:ListItem>男</asp:ListItem>
                        <asp:ListItem>女</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">年龄</td>
                <td>
                    <div class="col-3" style="margin: 0 auto; width: 100%">
                        <asp:TextBox ID="txtage" class="effect-8" Style="font-family: 微软雅黑" runat="server"></asp:TextBox>
                        <span class="focus-border" style="background-color: rgb(79,157,97);"><i></i></span>
                    </div>
                </td>
                <td style="text-align: center">民族</td>
                <td>


                    <asp:UpdatePanel ID="UpdatePanel7" runat="server">

                        <ContentTemplate>
                    <asp:DropDownList ID="ddlnation" runat="server" CssClass="wide" AutoPostBack="True">
                        <asp:ListItem>汉族</asp:ListItem>
                        <asp:ListItem>壮族</asp:ListItem>
                        <asp:ListItem>纳西族</asp:ListItem>
                        <asp:ListItem>其他</asp:ListItem>
                    </asp:DropDownList>
                        </ContentTemplate>
                </asp:UpdatePanel>

                </td>
            </tr>
            <tr>
                <td class="auto-style2">所属学院</td>
                <td>
                    <asp:DropDownList ID="ddlStudentCollege" runat="server" CssClass="wide" AutoPostBack="True" DataSourceID="ObjectDataCollege" DataTextField="C_name" DataValueField="C_id" OnSelectedIndexChanged="ddlStudentCollege_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
                <td style="text-align: center">所属专业</td>
                <td>
                    <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                        <ContentTemplate>
                            <asp:DropDownList ID="ddlStudentMajor" runat="server" CssClass="wide" class="wide" DataSourceID="odsNewMajor" DataTextField="M_name" DataValueField="M_id" OnSelectedIndexChanged="ddlStudentMajor_SelectedIndexChanged">
                            </asp:DropDownList>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
            </tr>

            <tr>
                <td class="auto-style2">所属班级</td>
                <td>
                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                        <ContentTemplate>
                            <asp:DropDownList ID="ddlStudentClass" runat="server" CssClass="wide" AutoPostBack="True" DataSourceID="odsNewClass" DataTextField="Class_name" DataValueField="Class_id" OnSelectedIndexChanged="ddlStudentClass_SelectedIndexChanged">
                            </asp:DropDownList>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
                <td style="text-align: center; vertical-align: middle">入学时间</td>
                <td>
                    <div class="col-3" style="margin: 0 auto; width: 100%">
                        <asp:TextBox ID="txtStudentAdmission" runat="server" CssClass="effect-8" Style="font-family: 微软雅黑;"></asp:TextBox>
                        <span class="focus-border" style="background-color: rgb(79,157,97);">
                            <i></i>
                        </span>
                    </div>

                </td>
            </tr>

            <tr>
                <td class="auto-style2">学生住址</td>
                <td style="width: 30%">
                    <div class="col-3" style="margin: 0 auto; width: 100%">
                        <asp:TextBox ID="txtAddress" runat="server" CssClass="effect-8" Style="font-family: 微软雅黑;"></asp:TextBox>
                        <span class="focus-border" style="background-color: rgb(79,157,97);">
                            <i></i>
                        </span>
                    </div>
                </td>
                <td style="text-align: center; vertical-align: middle">政治面貌</td>
                <td>
                    <asp:UpdatePanel ID="UpdatePanel9" runat="server">
                    <ContentTemplate>

                    <asp:DropDownList ID="ddlStudentPs" runat="server" CssClass="wide" AutoPostBack="True" DataSourceID="ObjectDataPsname" DataTextField="Ps_name" DataValueField="Ps_id">
                    </asp:DropDownList>

                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">身份证号</td>
                <td style="width: 30%">
                    <div class="col-3" style="margin: 0 auto; width: 100%">
                        <asp:TextBox ID="txtID_number" runat="server" CssClass="effect-8" Style="font-family: 微软雅黑;"></asp:TextBox>
                        <span class="focus-border" style="background-color: rgb(79,157,97);">
                            <i></i>
                        </span>
                    </div>
                </td>
                <td style="text-align: center; vertical-align: middle">已修学分</td>
                <td style="width: 30%">
                    <div class="col-3" style="margin: 0 auto; width: 100%">
                        <asp:TextBox ID="cerdit" runat="server" class="effect-8" Style="font-family: 微软雅黑"></asp:TextBox>
                        <span class="focus-border" style="background-color: rgb(79,157,97);">
                            <i></i>
                        </span>
                    </div>
                </td>
            </tr>

            <tr>
                <td class="auto-style2">挂科数</td>
                <td style="width: 30%">
                    <div class="col-3" style="margin: 0 auto; width: 100%">
                        <asp:TextBox ID="txtFail_number" runat="server" CssClass="effect-8" Style="font-family: 微软雅黑;"></asp:TextBox>
                        <span class="focus-border" style="background-color: rgb(79,157,97);">
                            <i></i>
                        </span>
                    </div>
            </tr>

        </table>

        <table style="display: block" class="inputTable" id="Edittable">
            <tr>
                <td class="auto-style2">学生学号</td>
                <td style="width: 30%">
                    <div class="col-3" style="margin: 0 auto; width: 100%">
                        <asp:TextBox ID="txtEditS_id" runat="server" CssClass="effect-8" Style="font-family: 微软雅黑;"></asp:TextBox>
                        <span class="focus-border" style="background-color: rgb(79,157,97);">
                            <i></i>
                        </span>
                    </div>
                </td>
                <td style="text-align: center; vertical-align: middle">密码</td>
                <td style="width: 30%">
                    <div class="col-3" style="margin: 0 auto; width: 100%">
                        <asp:TextBox ID="txtEditS_password" runat="server" class="effect-8" Style="font-family: 微软雅黑"></asp:TextBox>
                        <span class="focus-border" style="background-color: rgb(79,157,97);">
                            <i></i>
                        </span>
                    </div>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">学生姓名</td>
                <td>
                    <div class="col-3" style="margin: 0 auto; width: 100%">
                        <asp:TextBox ID="txtEditS_name" class="effect-8" Style="font-family: 微软雅黑" runat="server"></asp:TextBox>
                        <span class="focus-border" style="background-color: rgb(79,157,97);"><i></i></span>
                    </div>
                </td>
                <td style="text-align: center">性别</td>
                <td>
                    <asp:UpdatePanel ID="UpdatePanel10" runat="server">
                        <ContentTemplate>
                    <asp:DropDownList ID="ddlEditS_sex" runat="server" CssClass="wide">
                        <asp:ListItem>男</asp:ListItem>
                        <asp:ListItem>女</asp:ListItem>
                    </asp:DropDownList>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">年龄</td>
                <td>
                    <div class="col-3" style="margin: 0 auto; width: 100%">
                        <asp:TextBox ID="txtEditS_age" class="effect-8" Style="font-family: 微软雅黑" runat="server"></asp:TextBox>
                        <span class="focus-border" style="background-color: rgb(79,157,97);"><i></i></span>
                    </div>
                </td>
                <td style="text-align: center">民族</td>
                <td>
                    <asp:UpdatePanel ID="UpdatePanel11" runat="server">
                        <ContentTemplate>
                    <asp:DropDownList ID="ddlEditNation" runat="server" CssClass="wide" AutoPostBack="True">
                        <asp:ListItem>汉族</asp:ListItem>
                        <asp:ListItem>壮族</asp:ListItem>
                        <asp:ListItem>纳西族</asp:ListItem>
                        <asp:ListItem>其他</asp:ListItem>
                        
                    </asp:DropDownList>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">所属学院</td>
                <td>
                    <asp:DropDownList ID="ddlEditCollege" runat="server" CssClass="wide" AutoPostBack="True" DataSourceID="ObjectDataCollege" DataTextField="C_name" DataValueField="C_id" OnSelectedIndexChanged="ddlStudentCollege_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
                <td style="text-align: center">所属专业</td>
                <td>
                    <asp:UpdatePanel ID="UpdatePanel5" runat="server">
                        <ContentTemplate>
                            <asp:DropDownList ID="ddlEditMajor" runat="server" CssClass="wide" class="wide" DataSourceID="odsEditMajor" DataTextField="M_name" DataValueField="M_id" OnSelectedIndexChanged="ddlStudentMajor_SelectedIndexChanged">
                            </asp:DropDownList>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
            </tr>

            <tr>
                <td class="auto-style2">所属班级</td>
                <td>
                    <asp:UpdatePanel ID="UpdatePanel6" runat="server">
                        <ContentTemplate>
                            <asp:DropDownList ID="ddlEditClass" runat="server" CssClass="wide" AutoPostBack="True" DataSourceID="ObjectDataClass" DataTextField="Class_name" DataValueField="Class_id">
                            </asp:DropDownList>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
                <td style="text-align: center; vertical-align: middle">入学时间</td>
                <td>
                        <div class="col-3" style="margin: 0 auto; width: 100%">
                        <asp:TextBox ID="txtEditAdmission" runat="server" CssClass="effect-8" Style="font-family: 微软雅黑;"></asp:TextBox>
                        <span class="focus-border" style="background-color: rgb(79,157,97);">
                            <i></i>
                        </span>
                    </div>

                </td>
            </tr>

            <tr>
                <td class="auto-style2">学生住址</td>
                <td style="width: 30%">
                    <div class="col-3" style="margin: 0 auto; width: 100%">
                        <asp:TextBox ID="txtEditAddress" runat="server" CssClass="effect-8" Style="font-family: 微软雅黑;"></asp:TextBox>
                        <span class="focus-border" style="background-color: rgb(79,157,97);">
                            <i></i>
                        </span>
                    </div>
                </td>
                <td style="text-align: center; vertical-align: middle">政治面貌</td>
                <td>
                    <asp:UpdatePanel ID="UpdatePanel12" runat="server">
                        <ContentTemplate>

                    <asp:DropDownList ID="ddlEditPs" runat="server" CssClass="wide" AutoPostBack="True" DataSourceID="ObjectDataPsname" DataTextField="Ps_name" DataValueField="Ps_id">
                    </asp:DropDownList>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">身份证号</td>
                <td style="width: 30%">
                    <div class="col-3" style="margin: 0 auto; width: 100%">
                        <asp:TextBox ID="txtEditID_number" runat="server" CssClass="effect-8" Style="font-family: 微软雅黑;"></asp:TextBox>
                        <span class="focus-border" style="background-color: rgb(79,157,97);">
                            <i></i>
                        </span>
                    </div>
                </td>
                <td style="text-align: center; vertical-align: middle">已修学分</td>
                <td style="width: 30%">
                    <div class="col-3" style="margin: 0 auto; width: 100%">
                        <asp:TextBox ID="txtEditHas_cerdit" runat="server" class="effect-8" Style="font-family: 微软雅黑"></asp:TextBox>
                        <span class="focus-border" style="background-color: rgb(79,157,97);">
                            <i></i>
                        </span>
                    </div>
                </td>
            </tr>

            <tr>
                <td class="auto-style2">挂科数</td>
                <td style="width: 30%">
                    <div class="col-3" style="margin: 0 auto; width: 100%">
                        <asp:TextBox ID="txtEditFail_number" runat="server" CssClass="effect-8" Style="font-family: 微软雅黑;"></asp:TextBox>
                        <span class="focus-border" style="background-color: rgb(79,157,97);">
                            <i></i>
                        </span>
                    </div>
                </td>

            </tr>

        </table>


        <asp:ObjectDataSource ID="ObjectDataStudent" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataByClass" TypeName="DataSetTableAdapters.StudentTableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_S_id" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="S_id" Type="String" />
                <asp:Parameter Name="S_password" Type="String" />
                <asp:Parameter Name="S_name" Type="String" />
                <asp:Parameter Name="S_sex" Type="String" />
                <asp:Parameter Name="S_age" Type="Int32" />
                <asp:Parameter Name="Nation" Type="String" />
                <asp:Parameter Name="C_id" Type="String" />
                <asp:Parameter Name="C_name" Type="String" />
                <asp:Parameter Name="M_id" Type="String" />
                <asp:Parameter Name="M_name" Type="String" />
                <asp:Parameter Name="Class_id" Type="String" />
                <asp:Parameter Name="Class_name" Type="String" />
                <asp:Parameter Name="Admission" Type="DateTime" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="Ps_id" Type="String" />
                <asp:Parameter Name="Ps_name" Type="String" />
                <asp:Parameter Name="ID_number" Type="String" />
                <asp:Parameter Name="Has_cerdit" Type="Double" />
                <asp:Parameter Name="Fail_number" Type="Int32" />
                <asp:Parameter Name="Remark1" Type="String" />
                <asp:Parameter Name="Remark2" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlClass" Name="Class_id" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="S_password" Type="String" />
                <asp:Parameter Name="S_name" Type="String" />
                <asp:Parameter Name="S_sex" Type="String" />
                <asp:Parameter Name="S_age" Type="Int32" />
                <asp:Parameter Name="Nation" Type="String" />
                <asp:Parameter Name="C_id" Type="String" />
                <asp:Parameter Name="C_name" Type="String" />
                <asp:Parameter Name="M_id" Type="String" />
                <asp:Parameter Name="M_name" Type="String" />
                <asp:Parameter Name="Class_id" Type="String" />
                <asp:Parameter Name="Class_name" Type="String" />
                <asp:Parameter Name="Admission" Type="DateTime" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="Ps_id" Type="String" />
                <asp:Parameter Name="Ps_name" Type="String" />
                <asp:Parameter Name="ID_number" Type="String" />
                <asp:Parameter Name="Has_cerdit" Type="Double" />
                <asp:Parameter Name="Fail_number" Type="Int32" />
                <asp:Parameter Name="Remark1" Type="String" />
                <asp:Parameter Name="Remark2" Type="String" />
                <asp:Parameter Name="Original_S_id" Type="String" />
            </UpdateParameters>
        </asp:ObjectDataSource>
        <asp:ObjectDataSource ID="ObjectDataCollege" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="DataSetTableAdapters.CollegeTableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_C_id" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="C_id" Type="String" />
                <asp:Parameter Name="C_name" Type="String" />
                <asp:Parameter Name="C_dean" Type="String" />
                <asp:Parameter Name="Remark1" Type="String" />
                <asp:Parameter Name="Remark2" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="C_name" Type="String" />
                <asp:Parameter Name="C_dean" Type="String" />
                <asp:Parameter Name="Remark1" Type="String" />
                <asp:Parameter Name="Remark2" Type="String" />
                <asp:Parameter Name="Original_C_id" Type="String" />
            </UpdateParameters>
        </asp:ObjectDataSource>
        <asp:ObjectDataSource ID="ObjectDataMajor" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetMajorByCollegeid" TypeName="DataSetTableAdapters.MajorTableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_M_id" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="M_id" Type="String" />
                <asp:Parameter Name="M_name" Type="String" />
                <asp:Parameter Name="M_dean" Type="String" />
                <asp:Parameter Name="C_id" Type="String" />
                <asp:Parameter Name="C_name" Type="String" />
                <asp:Parameter Name="Remark1" Type="String" />
                <asp:Parameter Name="Remark2" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlCollege" Name="College_id" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="M_name" Type="String" />
                <asp:Parameter Name="M_dean" Type="String" />
                <asp:Parameter Name="C_id" Type="String" />
                <asp:Parameter Name="C_name" Type="String" />
                <asp:Parameter Name="Remark1" Type="String" />
                <asp:Parameter Name="Remark2" Type="String" />
                <asp:Parameter Name="Original_M_id" Type="String" />
            </UpdateParameters>
        </asp:ObjectDataSource>
        <asp:ObjectDataSource ID="ObjectDataClass" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetClassByMajor" TypeName="DataSetTableAdapters.ClassTableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_Class_id" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Class_id" Type="String" />
                <asp:Parameter Name="Class_name" Type="String" />
                <asp:Parameter Name="Headmaster" Type="String" />
                <asp:Parameter Name="C_id" Type="String" />
                <asp:Parameter Name="C_name" Type="String" />
                <asp:Parameter Name="Number" Type="Int32" />
                <asp:Parameter Name="Grade" Type="Int32" />
                <asp:Parameter Name="M_id" Type="String" />
                <asp:Parameter Name="M_name" Type="String" />
                <asp:Parameter Name="Remark1" Type="String" />
                <asp:Parameter Name="Remark2" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlMajor" Name="M_id" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Class_name" Type="String" />
                <asp:Parameter Name="Headmaster" Type="String" />
                <asp:Parameter Name="C_id" Type="String" />
                <asp:Parameter Name="C_name" Type="String" />
                <asp:Parameter Name="Number" Type="Int32" />
                <asp:Parameter Name="Grade" Type="Int32" />
                <asp:Parameter Name="M_id" Type="String" />
                <asp:Parameter Name="M_name" Type="String" />
                <asp:Parameter Name="Remark1" Type="String" />
                <asp:Parameter Name="Remark2" Type="String" />
                <asp:Parameter Name="Original_Class_id" Type="String" />
            </UpdateParameters>
        </asp:ObjectDataSource>
        <asp:ObjectDataSource ID="ObjectDataAdmission" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="DataSetTableAdapters.StudentTableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_S_id" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="S_id" Type="String" />
                <asp:Parameter Name="S_password" Type="String" />
                <asp:Parameter Name="S_name" Type="String" />
                <asp:Parameter Name="S_sex" Type="String" />
                <asp:Parameter Name="S_age" Type="Int32" />
                <asp:Parameter Name="Nation" Type="String" />
                <asp:Parameter Name="C_id" Type="String" />
                <asp:Parameter Name="C_name" Type="String" />
                <asp:Parameter Name="M_id" Type="String" />
                <asp:Parameter Name="M_name" Type="String" />
                <asp:Parameter Name="Class_id" Type="String" />
                <asp:Parameter Name="Class_name" Type="String" />
                <asp:Parameter Name="Admission" Type="DateTime" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="Ps_id" Type="String" />
                <asp:Parameter Name="Ps_name" Type="String" />
                <asp:Parameter Name="ID_number" Type="String" />
                <asp:Parameter Name="Has_cerdit" Type="Double" />
                <asp:Parameter Name="Fail_number" Type="Int32" />
                <asp:Parameter Name="Remark1" Type="String" />
                <asp:Parameter Name="Remark2" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="S_password" Type="String" />
                <asp:Parameter Name="S_name" Type="String" />
                <asp:Parameter Name="S_sex" Type="String" />
                <asp:Parameter Name="S_age" Type="Int32" />
                <asp:Parameter Name="Nation" Type="String" />
                <asp:Parameter Name="C_id" Type="String" />
                <asp:Parameter Name="C_name" Type="String" />
                <asp:Parameter Name="M_id" Type="String" />
                <asp:Parameter Name="M_name" Type="String" />
                <asp:Parameter Name="Class_id" Type="String" />
                <asp:Parameter Name="Class_name" Type="String" />
                <asp:Parameter Name="Admission" Type="DateTime" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="Ps_id" Type="String" />
                <asp:Parameter Name="Ps_name" Type="String" />
                <asp:Parameter Name="ID_number" Type="String" />
                <asp:Parameter Name="Has_cerdit" Type="Double" />
                <asp:Parameter Name="Fail_number" Type="Int32" />
                <asp:Parameter Name="Remark1" Type="String" />
                <asp:Parameter Name="Remark2" Type="String" />
                <asp:Parameter Name="Original_S_id" Type="String" />
            </UpdateParameters>
        </asp:ObjectDataSource>
        <asp:ObjectDataSource ID="ObjectDataPsname" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="DataSetTableAdapters.Political_statusTableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_Ps_id" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Ps_id" Type="String" />
                <asp:Parameter Name="Ps_name" Type="String" />
                <asp:Parameter Name="Remark1" Type="String" />
                <asp:Parameter Name="Remark2" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Ps_name" Type="String" />
                <asp:Parameter Name="Remark1" Type="String" />
                <asp:Parameter Name="Remark2" Type="String" />
                <asp:Parameter Name="Original_Ps_id" Type="String" />
            </UpdateParameters>
        </asp:ObjectDataSource>

        <asp:ObjectDataSource ID="odsNewCollege" runat="server"></asp:ObjectDataSource>

        <asp:ObjectDataSource ID="odsNewMajor" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetMajorByCollegeid" TypeName="DataSetTableAdapters.MajorTableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_M_id" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="M_id" Type="String" />
                <asp:Parameter Name="M_name" Type="String" />
                <asp:Parameter Name="M_dean" Type="String" />
                <asp:Parameter Name="C_id" Type="String" />
                <asp:Parameter Name="C_name" Type="String" />
                <asp:Parameter Name="Remark1" Type="String" />
                <asp:Parameter Name="Remark2" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlStudentCollege" Name="College_id" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="M_name" Type="String" />
                <asp:Parameter Name="M_dean" Type="String" />
                <asp:Parameter Name="C_id" Type="String" />
                <asp:Parameter Name="C_name" Type="String" />
                <asp:Parameter Name="Remark1" Type="String" />
                <asp:Parameter Name="Remark2" Type="String" />
                <asp:Parameter Name="Original_M_id" Type="String" />
            </UpdateParameters>
        </asp:ObjectDataSource>
        <asp:ObjectDataSource ID="odsNewClass" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetClassByMajor" TypeName="DataSetTableAdapters.ClassTableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_Class_id" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Class_id" Type="String" />
                <asp:Parameter Name="Class_name" Type="String" />
                <asp:Parameter Name="Headmaster" Type="String" />
                <asp:Parameter Name="C_id" Type="String" />
                <asp:Parameter Name="C_name" Type="String" />
                <asp:Parameter Name="Number" Type="Int32" />
                <asp:Parameter Name="Grade" Type="Int32" />
                <asp:Parameter Name="M_id" Type="String" />
                <asp:Parameter Name="M_name" Type="String" />
                <asp:Parameter Name="Remark1" Type="String" />
                <asp:Parameter Name="Remark2" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlStudentMajor" Name="M_id" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Class_name" Type="String" />
                <asp:Parameter Name="Headmaster" Type="String" />
                <asp:Parameter Name="C_id" Type="String" />
                <asp:Parameter Name="C_name" Type="String" />
                <asp:Parameter Name="Number" Type="Int32" />
                <asp:Parameter Name="Grade" Type="Int32" />
                <asp:Parameter Name="M_id" Type="String" />
                <asp:Parameter Name="M_name" Type="String" />
                <asp:Parameter Name="Remark1" Type="String" />
                <asp:Parameter Name="Remark2" Type="String" />
                <asp:Parameter Name="Original_Class_id" Type="String" />
            </UpdateParameters>
        </asp:ObjectDataSource>
        <asp:ObjectDataSource ID="odsEditCollage" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="DataSetTableAdapters.CourseTableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_Course_id" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Course_id" Type="String" />
                <asp:Parameter Name="Course_name" Type="String" />
                <asp:Parameter Name="Credit" Type="Double" />
                <asp:Parameter Name="Time" Type="String" />
                <asp:Parameter Name="Category" Type="String" />
                <asp:Parameter Name="C_id" Type="String" />
                <asp:Parameter Name="C_name" Type="String" />
                <asp:Parameter Name="url" Type="String" />
                <asp:Parameter Name="Remark2" Type="String" />
                <asp:Parameter Name="M_id" Type="String" />
                <asp:Parameter Name="M_name" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Course_name" Type="String" />
                <asp:Parameter Name="Credit" Type="Double" />
                <asp:Parameter Name="Time" Type="String" />
                <asp:Parameter Name="Category" Type="String" />
                <asp:Parameter Name="C_id" Type="String" />
                <asp:Parameter Name="C_name" Type="String" />
                <asp:Parameter Name="url" Type="String" />
                <asp:Parameter Name="Remark2" Type="String" />
                <asp:Parameter Name="M_id" Type="String" />
                <asp:Parameter Name="M_name" Type="String" />
                <asp:Parameter Name="Original_Course_id" Type="String" />
            </UpdateParameters>
        </asp:ObjectDataSource>
        <asp:ObjectDataSource ID="odsEditMajor" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetMajorByCollegeid" TypeName="DataSetTableAdapters.MajorTableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_M_id" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="M_id" Type="String" />
                <asp:Parameter Name="M_name" Type="String" />
                <asp:Parameter Name="M_dean" Type="String" />
                <asp:Parameter Name="C_id" Type="String" />
                <asp:Parameter Name="C_name" Type="String" />
                <asp:Parameter Name="Remark1" Type="String" />
                <asp:Parameter Name="Remark2" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlEditCollege" Name="College_id" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="M_name" Type="String" />
                <asp:Parameter Name="M_dean" Type="String" />
                <asp:Parameter Name="C_id" Type="String" />
                <asp:Parameter Name="C_name" Type="String" />
                <asp:Parameter Name="Remark1" Type="String" />
                <asp:Parameter Name="Remark2" Type="String" />
                <asp:Parameter Name="Original_M_id" Type="String" />
            </UpdateParameters>
        </asp:ObjectDataSource>
        <asp:ObjectDataSource ID="odsEditClass" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetClassByMajor" TypeName="DataSetTableAdapters.ClassTableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_Class_id" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Class_id" Type="String" />
                <asp:Parameter Name="Class_name" Type="String" />
                <asp:Parameter Name="Headmaster" Type="String" />
                <asp:Parameter Name="C_id" Type="String" />
                <asp:Parameter Name="C_name" Type="String" />
                <asp:Parameter Name="Number" Type="Int32" />
                <asp:Parameter Name="Grade" Type="Int32" />
                <asp:Parameter Name="M_id" Type="String" />
                <asp:Parameter Name="M_name" Type="String" />
                <asp:Parameter Name="Remark1" Type="String" />
                <asp:Parameter Name="Remark2" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlEditMajor" Name="M_id" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Class_name" Type="String" />
                <asp:Parameter Name="Headmaster" Type="String" />
                <asp:Parameter Name="C_id" Type="String" />
                <asp:Parameter Name="C_name" Type="String" />
                <asp:Parameter Name="Number" Type="Int32" />
                <asp:Parameter Name="Grade" Type="Int32" />
                <asp:Parameter Name="M_id" Type="String" />
                <asp:Parameter Name="M_name" Type="String" />
                <asp:Parameter Name="Remark1" Type="String" />
                <asp:Parameter Name="Remark2" Type="String" />
                <asp:Parameter Name="Original_Class_id" Type="String" />
            </UpdateParameters>
        </asp:ObjectDataSource>

        <asp:HiddenField ID="hfStudent" runat="server" />
            
        <asp:HiddenField ID="hfType" runat="server" />

        <br />
    </div>
</asp:Content>


