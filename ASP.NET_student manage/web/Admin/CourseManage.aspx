<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="Admin_CourceManage, App_Web_coursemanage.aspx.fdf7a39c" %>

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
    <script>
        $(document).ready(function () {
            $('select').niceSelect();
        });
        function msg(text) {
            layer.msg(text);
            window.location.reload();
        }
        function pageload() {
            $('select').niceSelect();
        }
        function alert() {
            return confirm("确定删除？");
        }
        function showNew() {
            layer.open({
                type: 1,
                skin: 'layui-layer-molv',
                btn: ['提交'],
                title: ['新增课程', 'font-family:微软雅黑;font-weight:bold;font-size:18px'],
                area: ['auto'],
                shadeClose: true, //点击遮罩关闭
                content: $("#table"),
                yes: function (index, layero) {
                    document.getElementById("<%=hbtnNewCourse.ClientID%>").click();
                }
            })
            }
    </script>
    <script>
        function showEdit(id, name, credit, time, college, major, type) {
            document.getElementById('<%=txtEditCourseID.ClientID%>').value = id;
            document.getElementById('<%=txtEditCourseName.ClientID%>').value = name;
            document.getElementById('<%=txtEditCredit.ClientID%>').value = credit;
            document.getElementById('<%=txtEditTime.ClientID%>').value = time;
            layer.open({
                type: 1,
                skin: 'layui-layer-molv',
                btn: ['提交'],
                title: ['修改课程', 'font-family:微软雅黑;font-weight:bold;font-size:18px'],
                area: ['auto'],
                shadeClose: true, //点击遮罩关闭
                content: $("#Edittable"),
                yes: function (index, layero) {
                    document.getElementById('<%=hbtnEdit.ClientID%>').click();
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
                font-family: 微软雅黑;
                font-size: 17px;
            }

        .table-cell {
            height: 60px;
            width: 20%;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="Server">
    <div style="width: 1000px; margin: 20px auto; border-radius: 5px; background-color: white; padding: 20px;">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <table style="width: 100%">
                    <tr>
                        <td style="width: 50px">学院：
                        </td>
                        <td style="width: 200px">
                            <asp:DropDownList ID="ddlCollege" runat="server" AutoPostBack="True" DataSourceID="odsCollege" DataTextField="C_name" DataValueField="C_id" OnSelectedIndexChanged="ddlCollege_SelectedIndexChanged">
                            </asp:DropDownList>
                        </td>
                        <td style="width: 50px">专业：</td>
                        <td>
                            <asp:DropDownList ID="ddlMajor" runat="server" AutoPostBack="True" DataSourceID="odsMajor" DataTextField="M_name" DataValueField="M_id" OnSelectedIndexChanged="ddlMajor_SelectedIndexChanged">
                            </asp:DropDownList>
                            <asp:Button Style="display: none" ID="hbtnNewCourse" runat="server" OnClick="hbtnNewCourse_Click" Text="Button" />
                            <asp:Button Style="display: none" ID="hbtnEdit" runat="server" Text="Button" OnCommand="hbtnEdit_Command" />
                        </td>
                        <td style="width: 200px">
                            <div style="float: right; height: 50px">
                                <asp:Button ID="btnNewCourse" runat="server" Text="新增课程" OnClientClick="showNew()" CssClass="infoButton" />
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="5">
                            <asp:GridView Style="margin-top: 20px" ID="gvCourse" runat="server" AutoGenerateColumns="False" DataKeyNames="Course_id" DataSourceID="odsCourse" AllowPaging="True" Width="100%" EmptyDataText="没有数据" OnSelectedIndexChanged="gvCourse_SelectedIndexChanged" CellPadding="4" Font-Names="微软雅黑" Font-Size="20px" ForeColor="#333333" GridLines="None">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:ImageField DataImageUrlField="url" HeaderText="课程图片">
                                        <ControlStyle Height="140px" />
                                    </asp:ImageField>
                                    <asp:BoundField DataField="Course_id" HeaderText="课程ID" ReadOnly="True" SortExpression="Course_id" />
                                    <asp:BoundField DataField="Course_name" HeaderText="课程名" SortExpression="Course_name" />
                                    <asp:BoundField DataField="Credit" HeaderText="学分" SortExpression="Credit" />
                                    <asp:BoundField DataField="Time" HeaderText="学时" SortExpression="Time" />
                                    <asp:BoundField DataField="Category" HeaderText="类型" SortExpression="Category" />
                                    <asp:BoundField DataField="C_name" HeaderText="学院" SortExpression="C_name" />
                                    <asp:BoundField DataField="M_name" HeaderText="专业" SortExpression="M_name" />
                                    <asp:TemplateField HeaderText="操作">
                                        <ItemTemplate>
                                            <asp:Button Style="width: 50px; margin-top: 0px" ID="btnEdit" runat="server" CssClass="infoButton" CommandArgument='<%# Eval("Course_id") %>' Text="编辑" OnCommand="btnEdit_Command" />
                                            <asp:Button Style="width: 50px; background-color: orangered; margin-top: 0px" ID="btnDelete" runat="server" CssClass="infoButton" OnClientClick="return alert()" OnCommand="btnDelete_Command" CommandArgument='<%# Eval("Course_id") %>' Text="删除" />
                                        </ItemTemplate>
                                        <ItemStyle Width="120px" Height="50px" />
                                    </asp:TemplateField>
                                </Columns>
                                <EditRowStyle BackColor="#2461BF" />
                                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#EFF3FB" Height="150px" />
                                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                <SortedDescendingHeaderStyle BackColor="#4870BE" />
                            </asp:GridView>
                        </td>
                    </tr>
                </table>
            </ContentTemplate>
        </asp:UpdatePanel>

        <table style="display: block" class="inputTable" id="table">
            <tr>
                <td class="table-cell">课程ID</td>
                <td style="width: 30%">
                    <div class="col-3" style="margin: 0 auto; width: 100%">
                        <asp:TextBox ID="txtCourseID" runat="server" CssClass="effect-8" Style="font-family: 微软雅黑;"></asp:TextBox>
                        <span class="focus-border" style="background-color: rgb(79,157,97);">
                            <i></i>
                        </span>
                    </div>
                </td>
                <td style="text-align: center; vertical-align: middle">课程名称</td>
                <td style="width: 30%">
                    <div class="col-3" style="margin: 0 auto; width: 100%">
                        <asp:TextBox ID="txtCourseName" runat="server" class="effect-8" Style="font-family: 微软雅黑"></asp:TextBox>
                        <span class="focus-border" style="background-color: rgb(79,157,97);">
                            <i></i>
                        </span>
                    </div>
                </td>
            </tr>
            <tr>
                <td class="table-cell">学分</td>
                <td>
                    <div class="col-3" style="margin: 0 auto; width: 100%">
                        <asp:TextBox ID="txtCredit" class="effect-8" Style="font-family: 微软雅黑" runat="server"></asp:TextBox>
                        <span class="focus-border" style="background-color: rgb(79,157,97);"><i></i></span>
                    </div>
                </td>
                <td style="text-align: center">学时</td>
                <td>
                    <div class="col-3" style="margin: 0 auto; width: 100%">
                        <asp:TextBox ID="txtTime" class="effect-8" Style="font-family: 微软雅黑" runat="server"></asp:TextBox>
                        <span class="focus-border" style="background-color: rgb(79,157,97);"><i></i></span>
                    </div>
                </td>
            </tr>
            <tr>
                <td class="table-cell">所属学院</td>
                <td>
                    <asp:DropDownList ID="ddlNewCollege" runat="server" CssClass="wide" AutoPostBack="True" DataSourceID="odsCollege" DataTextField="C_name" DataValueField="C_id">
                    </asp:DropDownList>
                </td>
                <td style="text-align: center">所属专业</td>
                <td>
                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                        <ContentTemplate>
                            <asp:DropDownList ID="ddlNewMajor" runat="server" CssClass="wide" class="wide" DataSourceID="odsNewMajor" DataTextField="M_name" DataValueField="M_id">
                            </asp:DropDownList>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
            </tr>
            <tr>
                <td class="table-cell">课程类型</td>
                <td>
                    <asp:DropDownList ID="ddlCourseType" runat="server" CssClass="wide">
                        <asp:ListItem>必修</asp:ListItem>
                        <asp:ListItem>选修</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="text-align: center;">课程图片</td>
                <td style="text-align: center;">
                    <asp:FileUpload ID="upLoadNewImage" runat="server" Width="200px" />
                </td>
            </tr>
        </table>
        <table style="display: block" class="inputTable" id="Edittable">
            <tr>
                <td class="table-cell">课程ID</td>
                <td style="width: 30%">
                    <div class="col-3" style="margin: 0 auto; width: 100%">
                        <asp:TextBox ID="txtEditCourseID" runat="server" CssClass="effect-8" Style="font-family: 微软雅黑;" onfocus="this.blur()"></asp:TextBox>
                        <span class="focus-border" style="background-color: rgb(79,157,97);">
                            <i></i>
                        </span>
                    </div>
                </td>
                <td style="text-align: center; vertical-align: middle">课程名称</td>
                <td style="width: 30%">
                    <div class="col-3" style="margin: 0 auto; width: 100%">
                        <asp:TextBox ID="txtEditCourseName" runat="server" class="effect-8" Style="font-family: 微软雅黑"></asp:TextBox>
                        <span class="focus-border" style="background-color: rgb(79,157,97);">
                            <i></i>
                        </span>
                    </div>
                </td>
            </tr>
            <tr>
                <td class="table-cell">学分</td>
                <td>
                    <div class="col-3" style="margin: 0 auto; width: 100%">
                        <asp:TextBox ID="txtEditCredit" class="effect-8" Style="font-family: 微软雅黑" runat="server"></asp:TextBox>
                        <span class="focus-border" style="background-color: rgb(79,157,97);"><i></i></span>
                    </div>
                </td>
                <td style="text-align: center">学时</td>
                <td>
                    <div class="col-3" style="margin: 0 auto; width: 100%">
                        <asp:TextBox ID="txtEditTime" class="effect-8" Style="font-family: 微软雅黑" runat="server"></asp:TextBox>
                        <span class="focus-border" style="background-color: rgb(79,157,97);"><i></i></span>
                    </div>
                </td>
            </tr>
            <tr>
                <td class="table-cell">所属学院</td>
                <td>
                    <asp:DropDownList ID="ddlEditCollege" runat="server" CssClass="wide" AutoPostBack="True" DataSourceID="odsCollege" DataTextField="C_name" DataValueField="C_id">
                    </asp:DropDownList>
                </td>
                <td style="text-align: center">所属专业</td>
                <td>
                    <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                        <ContentTemplate>
                            <asp:DropDownList ID="ddlEditMajor" runat="server" CssClass="wide" class="wide" DataSourceID="odsEditMajor" DataTextField="M_name" DataValueField="M_id">
                            </asp:DropDownList>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
            </tr>
            <tr>
                <td class="table-cell">课程类型</td>
                <td>
                    <asp:DropDownList ID="ddlEditType" runat="server" CssClass="wide">
                        <asp:ListItem>必修</asp:ListItem>
                        <asp:ListItem>选修</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="text-align: center;">课程图片</td>
                <td>
                    <asp:FileUpload ID="upLoadEditImage" runat="server" Width="200px" />
                </td>
            </tr>
        </table>
        <asp:ObjectDataSource ID="odsCollege" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="DataSetTableAdapters.CollegeTableAdapter" UpdateMethod="Update">
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
        <asp:ObjectDataSource ID="odsMajor" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetMajorByCollege" TypeName="DataSetTableAdapters.MajorTableAdapter" UpdateMethod="Update">
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
                <asp:ControlParameter ControlID="ddlCollege" DefaultValue="-1" Name="College" PropertyName="SelectedValue" Type="String" />
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
        <asp:ObjectDataSource ID="odsNewMajor" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetMajorByCollege" TypeName="DataSetTableAdapters.MajorTableAdapter" UpdateMethod="Update">
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
                <asp:ControlParameter ControlID="ddlNewCollege" DefaultValue="-1" Name="College" PropertyName="SelectedValue" Type="String" />
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
        <asp:ObjectDataSource ID="odsEditMajor" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetMajorByCollege" TypeName="DataSetTableAdapters.MajorTableAdapter" UpdateMethod="Update">
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
                <asp:ControlParameter ControlID="ddlEditCollege" DefaultValue="-1" Name="College" PropertyName="SelectedValue" Type="String" />
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
        <asp:ObjectDataSource ID="odsCourse" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataByMID" TypeName="DataSetTableAdapters.CourseTableAdapter" DeleteMethod="Delete" InsertMethod="Insert" UpdateMethod="Update">
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
                <asp:Parameter Name="Remark1" Type="String" />
                <asp:Parameter Name="Remark2" Type="String" />
                <asp:Parameter Name="M_id" Type="String" />
                <asp:Parameter Name="M_name" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlMajor" Name="Mid" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Course_name" Type="String" />
                <asp:Parameter Name="Credit" Type="Double" />
                <asp:Parameter Name="Time" Type="String" />
                <asp:Parameter Name="Category" Type="String" />
                <asp:Parameter Name="C_id" Type="String" />
                <asp:Parameter Name="C_name" Type="String" />
                <asp:Parameter Name="Remark1" Type="String" />
                <asp:Parameter Name="Remark2" Type="String" />
                <asp:Parameter Name="M_id" Type="String" />
                <asp:Parameter Name="M_name" Type="String" />
                <asp:Parameter Name="Original_Course_id" Type="String" />
            </UpdateParameters>
        </asp:ObjectDataSource>
    </div>
</asp:Content>
