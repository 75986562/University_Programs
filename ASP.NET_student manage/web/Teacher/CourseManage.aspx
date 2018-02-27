<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="Teacher_CourseManage, App_Web_coursemanage.aspx.a1ee16cd" enableeventvalidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" type="text/css" href="/css/normalize.css" />
    <link rel="stylesheet" type="text/css" href="/css/htmleaf-demo.css" />
    <link href='https://fonts.googleapis.com/css?family=Lato:400,300,700,900' rel='stylesheet' type='text/css' />
    <link rel="stylesheet" type="text/css" href="/css/input-style.css" />
    <link rel="stylesheet" type="text/css" href="/css/nice-select.css" />
    <link rel="stylesheet" type="text/css" href="/css/pintsize.min.css" />
    <link href="css/base.css" type="text/css" rel="stylesheet" />
    <script src="/jquery-3.1.1.min.js"></script>
    <script src="/jquery.nice-select.min.js"></script>
    <script src="/layer.js"></script>
    <script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="js/jquery.select.js"></script>
    <script>
        $(document).ready(function () {
            $('select').niceSelect();
        });
        function msg(text) {
            layer.msg(text);
            window.location.reload();
        }
        function dia() {
            return confirm("确认删除？");
        }
    </script>

    <script>
        function showNew() {
            layer.open({
                type: 1,
                skin: 'layui-layer-molv',
                btn: ['提交'],
                title: ['选课', 'font-family:微软雅黑;font-weight:bold;font-size:18px'],
                area: ['auto'],
                shadeClose: true, //点击遮罩关闭
                content: $("#hiden_table"),
                yes: function (index, layero) {
                    var ob = document.getElementById('<%=Button_hd.ClientID%>');
                        ob.focus();
                        ob.click();
                    }
                })
                }
    </script>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            height: 22px;
        }

        body {
            background-color: #f5f5f5;
        }

        <style type="text/css" > .effect-8 ~ .focus-border:before,
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
                width: 20%;
                height: 20%;
                font-family: 微软雅黑;
                font-size: 17px;
                text-align: left;
                padding-left: 10px;
            }

        .auto-style2 {
            width: 20%;
        }

        .inputTable {
            height: 300px;
            width: 600px;
            margin: 30px 120px;
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


        .auto-style5 {
            width: 20%;
            height: 13%;
        }

        .auto-style10 {
            height: 13%;
        }


        .auto-style11 {
            width: 20%;
            height: 20%;
        }

        .auto-style12 {
            height: 20%;
        }


        .auto-style13 {
            float: left;
            width: 100%;
            margin: 40px 3%;
            position: relative;
            top: 0px;
            left: 0px;
        }



        /* search */
        .search {
            border: 2px solid rgb(79,157,97);
            height: 45px;
            margin: 40px auto 0 auto;
            width: 280px;
        }

            .search select {
                display: none;
            }

            .search .select_box {
                font-size: 12px;
                color: #999999;
                width: 80px;
                line-height: 35px;
                float: left;
                position: relative;
            }

            .search .select_showbox {
                height: 35px;
                background: url(images/search_ico.png) no-repeat 60px center;
                text-indent: 1.5em;
            }

                .search .select_showbox.active {
                    background: url(images/search_ico_hover.png) no-repeat 60px center;
                }

            .search .select_option {
                border: 2px solid rgb(79,157,97);
                border-top: none;
                display: none;
                left: -2px;
                top: 35px;
                position: absolute;
                z-index: 99;
                background: #fff;
            }

                .search .select_option li {
                    text-indent: 1.5em;
                    width: 90px;
                    cursor: pointer;
                }

                    .search .select_option li.selected {
                        background-color: #F3F3F3;
                        color: #999;
                    }

                    .search .select_option li.hover {
                        background: #BEBEBE;
                        color: #fff;
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

        .auto-style14 {
            width: 30%;
        }

        .auto-style15 {
            height: 13%;
            width: 30%;
        }

        .auto-style16 {
            height: 20%;
            width: 30%;
        }

        .auto-style17 {
            width: 25%;
        }

        .auto-style18 {
            width: 25%;
            height: 20%;
        }

        .auto-style19 {
            width: 25%;
            height: 13%;
        }

        .auto-style20 {
            height: 39px;
        }
    </style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="Server">
    <div style="width: 1000px; margin: 20px auto; border-radius: 5px; background-color: white; padding: 20px;">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style2"></td>
                        <td class="auto-style2">
                            <asp:Button ID="Button_hd" Style="display: none;" runat="server" Text="Button" OnClick="Button_hd_Click" />
                        </td>
                        <td class="auto-style2"></td>
                        <td class="auto-style2"></td>
                        <td class="auto-style2"></td>
                    </tr>
                    <tr>
                        <td style="font-family: 微软雅黑; font-size: 30px; color: #6495ED;">我的课表</td>
                        <td colspan="3"></td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="5">
                            <asp:GridView ID="GridView_show" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="TC_id" ForeColor="#333333" GridLines="None" PageSize="5" Width="100%" Font-Names="微软雅黑" Font-Size="20px" EmptyDataText="无数据" Height="20px" HorizontalAlign="Center" OnPageIndexChanging="GridView_show_PageIndexChanging">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:BoundField DataField="TC_id" HeaderText="编号" ReadOnly="True" SortExpression="TC_id" />
                                    <asp:BoundField DataField="Course_id" HeaderText="课程号" SortExpression="Course_id" />
                                    <asp:BoundField DataField="Course_name" HeaderText="课程名" SortExpression="Course_name" />
                                    <asp:BoundField DataField="Te_id" HeaderText="学工号" SortExpression="Te_id" />
                                    <asp:BoundField DataField="Te_name" HeaderText="教师姓名" SortExpression="Te_name" />
                                    <asp:BoundField DataField="Mode" HeaderText="考核方式" SortExpression="Mode" />
                                    <asp:BoundField DataField="Number" HeaderText="上课人数" SortExpression="Number" />
                                    <asp:BoundField DataField="Time" HeaderText="上课时间" SortExpression="Time" />
                                    <asp:TemplateField HeaderText="操作">
                                        <ItemTemplate>
                                            <asp:Button ID="Button_delete" runat="server" CausesValidation="false" CommandName="Delete" Text="退课" CommandArgument='<%# Eval("Tc_id") %>' OnCommand="Button_delete_Command" OnClientClick="return dia()" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                                <EditRowStyle BackColor="#2461BF" />
                                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" Height="50px" />
                                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#EFF3FB" Height="80px" HorizontalAlign="Center" />
                                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                <SortedDescendingHeaderStyle BackColor="#4870BE" />
                            </asp:GridView>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>


                </table>
                <asp:ObjectDataSource ID="ObjectDataSource_teachercourse" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="DataSetTableAdapters.Teacher_CourseTableAdapter" UpdateMethod="Update">
                    <DeleteParameters>
                        <asp:Parameter Name="Original_TC_id" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="TC_id" Type="String" />
                        <asp:Parameter Name="Course_id" Type="String" />
                        <asp:Parameter Name="Course_name" Type="String" />
                        <asp:Parameter Name="Te_id" Type="String" />
                        <asp:Parameter Name="Te_name" Type="String" />
                        <asp:Parameter Name="Mode" Type="String" />
                        <asp:Parameter Name="Number" Type="Int32" />
                        <asp:Parameter Name="Time" Type="String" />
                        <asp:Parameter Name="Remark1" Type="String" />
                        <asp:Parameter Name="Remark2" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Course_id" Type="String" />
                        <asp:Parameter Name="Course_name" Type="String" />
                        <asp:Parameter Name="Te_id" Type="String" />
                        <asp:Parameter Name="Te_name" Type="String" />
                        <asp:Parameter Name="Mode" Type="String" />
                        <asp:Parameter Name="Number" Type="Int32" />
                        <asp:Parameter Name="Time" Type="String" />
                        <asp:Parameter Name="Remark1" Type="String" />
                        <asp:Parameter Name="Remark2" Type="String" />
                        <asp:Parameter Name="Original_TC_id" Type="String" />
                    </UpdateParameters>
                </asp:ObjectDataSource>





                </div>

     <div style="margin: 0px; border-radius: 5px; background-color: white;">
         <table class="auto-style1" style="margin-left: 0;">
             <tr>
                 <td style="font-family: 微软雅黑; font-size: 30px; color: #6495ED" class="auto-style20">可选课程</td>
                 <td class="auto-style20"></td>
                 <td class="auto-style20"></td>
                 <td class="auto-style20"></td>
                 <td class="auto-style20"></td>
             </tr>
             <tr>
                 <td colspan="5">
                     <asp:GridView ID="GridView_select" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Course_id" ForeColor="#333333" GridLines="None" Width="100%">
                         <AlternatingRowStyle BackColor="White" />
                         <Columns>
                             <asp:BoundField DataField="Course_id" HeaderText="课程号" ReadOnly="True" SortExpression="Course_id" />
                             <asp:BoundField DataField="Course_name" HeaderText="课程名" SortExpression="Course_name" />
                             <asp:BoundField DataField="Credit" HeaderText="学分" SortExpression="Credit" />
                             <asp:BoundField DataField="Time" HeaderText="学时" SortExpression="Time" />
                             <asp:BoundField DataField="Category" HeaderText="课程类型" SortExpression="Category" />
                             <asp:BoundField DataField="C_id" HeaderText="所属学院编号" SortExpression="C_id" />
                             <asp:BoundField DataField="C_name" HeaderText="学院名" SortExpression="C_name" />
                             <asp:TemplateField HeaderText="操作">
                                 <ItemTemplate>
                                     <asp:Button ID="Button_select" runat="server" CausesValidation="false" CommandName="Cancel" CommandArgument='<%# Eval("Course_id") %>' Text="选课" OnCommand="Button_select_Command" />
                                 </ItemTemplate>
                             </asp:TemplateField>
                         </Columns>
                         <EditRowStyle BackColor="#2461BF" />
                         <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                         <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                         <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                         <RowStyle BackColor="#EFF3FB" Height="90px" HorizontalAlign="Center" />
                         <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                         <SortedAscendingCellStyle BackColor="#F5F7FB" />
                         <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                         <SortedDescendingCellStyle BackColor="#E9EBEF" />
                         <SortedDescendingHeaderStyle BackColor="#4870BE" />
                     </asp:GridView>
                 </td>
             </tr>
         </table>
         <div>
         </div>
         <table style="display: none" class="inputTable" id="hiden_table">
             <tr>
                 <td class="auto-style2">&nbsp;</td>
                 <td class="auto-style14"></td>
                 <td style="text-align: center; vertical-align: middle" class="auto-style17">&nbsp;</td>
                 <td style="width: 30%"></td>
             </tr>
             <tr>
                 <td class="auto-style11"></td>
                 <td class="auto-style16">上课时间</td>
                 <td style="text-align: center" class="auto-style18">
                     <div class="auto-style13" style="margin: 0 auto;">
                         <asp:TextBox ID="txttime" runat="server" CssClass="effect-7" Style="font-family: 微软雅黑;" Width="186px" OnTextChanged="txttime_TextChanged"></asp:TextBox>
                         <span class="focus-border" style="background-color: rgb(79,157,97);">
                             <i></i>
                         </span>
                     </div>
                 </td>
                 <td class="auto-style12"></td>
             </tr>
             <tr>
                 <td style="height: 10px;"></td>
                 <td style="height: 10px;"></td>
                 <td style="height: 10px;"></td>
                 <td style="height: 10px;"></td>
             </tr>
             <tr>
                 <td class="auto-style5">&nbsp;</td>
                 <td class="auto-style15">考核方式</td>
                 <td class="auto-style19">
                     <asp:DropDownList ID="DropDownList_mode" runat="server">
                         <asp:ListItem>考试</asp:ListItem>
                         <asp:ListItem>考查</asp:ListItem>
                     </asp:DropDownList></td>
                 <td class="auto-style10">&nbsp;</td>
             </tr>
         </table>
            </ContentTemplate>
        </asp:UpdatePanel>
        <asp:ObjectDataSource ID="ObjectDataSource_course" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="DataSetTableAdapters.CourseTableAdapter" UpdateMethod="Update">
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
    </div>
</asp:Content>