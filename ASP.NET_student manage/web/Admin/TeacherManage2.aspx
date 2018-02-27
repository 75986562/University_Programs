<%@ page title="" language="C#" enableeventvalidation="false" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="Admin_TeacherManage2, App_Web_teachermanage2.aspx.fdf7a39c" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

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
        function pageload() {
            $('select').niceSelect();
        }
        function msg(text) {
            layer.msg(text);
            window.location.reload();
        }
        function showEdit(tcid, course_id, Mode, Number, Time) {
             document.getElementById('<%=Textbox_ID.ClientID%>').value = tcid;
            document.getElementById('<%=Textbox_Courseid.ClientID%>').value = course_id;
           <%-- document.getElementById('<%=DropDownList_mode.ClientID%>').onselect = Mode;--%>
            document.getElementById('<%=Textbox_number.ClientID%>').value = Number;
            document.getElementById('<%=Textbox_time.ClientID%>').value = Time;

            layer.open({
                type: 1,
                skin: 'layui-layer-molv',
                btn: ['提交'],
                title: ['修改课程信息', 'font-family:微软雅黑;font-weight:bold;font-size:18px'],
                area: ['auto'],
                shadeClose: true, //点击遮罩关闭
                content: $("#Edit_table"),
                yes: function (index, layero) {
                   document.getElementById('<%=Button_hd1.ClientID%>').click();
                        location.reload();
                    }
                })
        }
        function showNew() {
            layer.open({
                type: 1,
                skin: 'layui-layer-molv',
                btn: ['提交'],
                title: ['新增课程', 'font-family:微软雅黑;font-weight:bold;font-size:18px'],
                area: ['auto'],
                shadeClose: true, //点击遮罩关闭
                content: $("#Add_table"),
                yes: function (index, layero) {
                    var ob=document.getElementById('<%=Button_hd2.ClientID%>');
                    ob.focus();
                    ob.click();
                }
            })
            }
        function checkTxt(coursename)
        {
           
           
            

        }

       <%-- function checkTxt()
        {
            var coursename = "<%= txtCourseID() %>";
            alert(coursename);
            document.getElementById('<%=Textbox_Coursename.ClientID%>').value = coursename;

        }--%>
    </script>
    <style type="text/css">
        .auto-style3 {
            width: 100%;
        }

        <style type="text/css">
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

        .auto-style3 {
            width: 100%;
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

        .auto-style8 {
            width: 20%;
            height: 21%;
        }

        .auto-style9 {
            height: 21%;
        }

        .auto-style10 {
            height: 13%;
        }


        .auto-style13 {
            float: left;
            width: 100%;
            margin: 40px 3%;
            position: relative;
            top: 0px;
            left: 0px;
        }

        .auto-style14 {
            height: 22px;
            width:90px;
        }

        .auto-style15 {
            width: 447px;
        }
        .auto-style16 {
            height: 22px;
            width: 447px;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" Runat="Server">
    

        <div style="width: 1000px; margin: 20px auto; border-radius: 5px; background-color: white; padding: 20px;">
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>

   

            <table class="auto-style3">
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style15">
                        <asp:Button ID="Button_hd1" style="display:none" runat="server" Text="隐藏1" OnCommand="Button_hd1_Command" />
                    <asp:Button ID="Button_hd2" style="display:none" runat="server" Text="隐藏2" OnClick="Button_hd2_Click" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style14"></td>
                    <td class="auto-style16" style="text-align: center;font-family: 微软雅黑;font-size:30px">教师课表</td>
                    <td class="auto-style14">

                        <input type="button" onclick="showNew()" style="margin-left:150px;" class="infoButton" value="添加课程"/>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3">




    <asp:GridView ID="GridView_show"    Style="margin-top: 20px;width:100%" runat="server" AutoGenerateColumns="False" DataKeyNames="TC_id" EmptyDataText="无数据" AllowPaging="True" CellPadding="4" Font-Names="微软雅黑" Font-Size="20px" ForeColor="#333333" GridLines="None" PageSize="6" OnPageIndexChanging="GridView_show_PageIndexChanging">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="TC_id" HeaderText="编号" ReadOnly="True" SortExpression="TC_id"  />
            <asp:BoundField DataField="Course_id" HeaderText="课程号" SortExpression="Course_id" /> 
            <asp:BoundField DataField="Course_name" HeaderText="课程名" SortExpression="Course_name" />
            <asp:BoundField DataField="Te_id" HeaderText="教师工号" SortExpression="Te_id" />
            <asp:BoundField DataField="Te_name" HeaderText="教师姓名" SortExpression="Te_name" />
            <asp:BoundField DataField="Mode" HeaderText="考核方式" SortExpression="Mode" />
            <asp:BoundField DataField="Number" HeaderText="上课人数" SortExpression="Number" />
            <asp:BoundField DataField="Time" HeaderText="上课时间" SortExpression="Time" />
            <asp:TemplateField HeaderText="操作">
                <ItemTemplate>
                    <%--<input type="button" onclick="showEdit()" style="margin-left:5px;" class="infoButton" value="编辑"/>--%>
                    <asp:Button ID="Button_edit" runat="server" Text="编辑"  CommandArgument='<%# Eval("Tc_id") %>' OnCommand="Button_edit_Command"/>
                    <asp:Button ID="Button_delete" runat="server"  Text="删除"   OnClientClick="return confirm('确认删除？')" CommandArgument='<%# Eval("Tc_id") %>' OnCommand="Button_delete_Command"/>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" Height="60px" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
                        <table style="display: none" class="inputTable" id="Edit_table">
            <tr>
                <td class="auto-style2">　　ID</td>
                <td style="width: 30%">
                    <div class="auto-style13" style="margin: 0 auto; ">
                        <asp:textbox id="Textbox_ID" runat="server" cssclass="effect-8" style="font-family: 微软雅黑;"></asp:textbox>
                        <span class="focus-border" style="background-color: rgb(79,157,97);">
                            <i></i>
                        </span>
                    </div>
                </td>
                <td style="text-align: center; vertical-align: middle">课程号</td>
                <td style="width: 30%">
                    <div class="col-3" style="margin: 0 auto; width: 100%">
                        <asp:textbox id="Textbox_Courseid" runat="server" class="effect-8" style="font-family: 微软雅黑" OnTextChanged="Textbox_Courseid_TextChanged"></asp:textbox>
                        <span class="focus-border" style="background-color: rgb(79,157,97);">
                            <i></i>
                        </span>
                    </div>
                </td>
            </tr>
                            <tr>
                                <td class="auto-style2">&nbsp;</td>
                                <td style="width: 30%">&nbsp;</td>
                                <td style="text-align: center; vertical-align: middle">&nbsp;</td>
                                <td style="width: 30%">&nbsp;</td>
                            </tr>
            <tr>
                <td class="auto-style2">上课时间</td>
                <td>
                    <div class="col-3" style="margin: 0 auto; width: 100%">
                        <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                         <ContentTemplate>
                              <div class="col-3" style="margin: 0 auto; width: 100%">
                    <asp:TextBox ID="Textbox_time" runat="server" class="effect-8" style="font-family: 微软雅黑"></asp:TextBox>
                    <span class="focus-border" style="background-color: rgb(79,157,97);"><i></i></span>
                         </div>
                              </ContentTemplate>
                       </asp:UpdatePanel>
                             <span class="focus-border" style="background-color: rgb(79,157,97);"><i></i></span>
                    </div>
                </td>
                <td style="text-align: center">考核方式</td>
                <td>
                    <div class="col-3" style="margin: 0 auto; width: 100%">
                        <span class="focus-border" style="background-color: rgb(79,157,97);"><i></i>
                        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                            <ContentTemplate>
                                <asp:DropDownList ID="DropDownList_mode" runat="server" class="wide" CssClass="wide">
                                    <asp:ListItem Selected="True">考试</asp:ListItem>
                                    <asp:ListItem>考查</asp:ListItem>
                                </asp:DropDownList>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                        </span>
                    </div>
                </td>
            </tr>
                            <tr>
                                <td class="auto-style2">&nbsp;</td>
                                <td>&nbsp;</td>
                                <td style="text-align: center">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
            <tr>
                <td class="auto-style5">上课人数</td>
                <td class="auto-style10">
                     <div class="col-3" style="margin: 0 auto; width: 100%">
                   <asp:textbox id="Textbox_number" class="effect-8" style="font-family: 微软雅黑" runat="server"></asp:textbox>
                    <span class="focus-border" style="background-color: rgb(79,157,97);"><i></i></span>
                         </div>
                </td>
                <td style="text-align: center" class="auto-style10">&nbsp;</td>
                <td class="auto-style10">
                  
                </td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style9">
                    &nbsp;</td>
                <td style="text-align: center" class="auto-style9">&nbsp;</td>
                <td class="auto-style9">
                    &nbsp;</td>
            </tr>
             </table>
                 <br />
                         <table style="display: none" class="inputTable" id="Add_table">
            <tr>
                <td class="auto-style2">　　ID</td>
                <td style="width: 30%">
                    <div class="auto-style13" style="margin: 0 auto; ">
                        <asp:textbox id="Textbox_IDAdd" runat="server" cssclass="effect-8" style="font-family: 微软雅黑;"></asp:textbox>
                        <span class="focus-border" style="background-color: rgb(79,157,97);">
                            <i></i>
                        </span>
                    </div>
                </td>
                <td style="text-align: center; vertical-align: middle">课程号</td>
                <td style="width: 30%">
                    <div class="col-3" style="margin: 0 auto; width: 100%">
                        <asp:textbox id="Textbox_courseidAdd" runat="server" class="effect-8" style="font-family: 微软雅黑" ></asp:textbox>
                        <span class="focus-border" style="background-color: rgb(79,157,97);">
                            <i></i>
                        </span>
                    </div>
                </td>
            </tr>
                            <tr>
                                <td class="auto-style2">&nbsp;</td>
                                <td style="width: 30%">&nbsp;</td>
                                <td style="text-align: center; vertical-align: middle">&nbsp;</td>
                                <td style="width: 30%">&nbsp;</td>
                            </tr>
            <tr>
                <td class="auto-style2">上课时间</td>
                <td>
                    <div class="col-3" style="margin: 0 auto; width: 100%">
                        <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                         <ContentTemplate>
                              <div class="col-3" style="margin: 0 auto; width: 100%">
                    <asp:TextBox ID="Textbox_TimeAdd" runat="server" class="effect-8" style="font-family: 微软雅黑"></asp:TextBox>
                    <span class="focus-border" style="background-color: rgb(79,157,97);"><i></i></span>
                         </div>
                              </ContentTemplate>
                       </asp:UpdatePanel>
                             <span class="focus-border" style="background-color: rgb(79,157,97);"><i></i></span>
                    </div>
                </td>
                <td style="text-align: center">考核方式</td>
                <td>
                    <div class="col-3" style="margin: 0 auto; width: 100%">
                        <span class="focus-border" style="background-color: rgb(79,157,97);"><i></i>
                        <asp:UpdatePanel ID="UpdatePanel5" runat="server">
                            <ContentTemplate>
                                <asp:DropDownList ID="DropDownList_modeAdd" runat="server" class="wide" CssClass="wide">
                                    <asp:ListItem Selected="True">考试</asp:ListItem>
                                    <asp:ListItem>考查</asp:ListItem>
                                </asp:DropDownList>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                        </span>
                    </div>
                </td>
            </tr>
                            <tr>
                                <td class="auto-style2">&nbsp;</td>
                                <td>&nbsp;</td>
                                <td style="text-align: center">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
            <tr>
                <td class="auto-style5">上课人数</td>
                <td class="auto-style10">
                     <div class="col-3" style="margin: 0 auto; width: 100%">
                   <asp:textbox id="Textbox_numberAdd" class="effect-8" style="font-family: 微软雅黑" runat="server"></asp:textbox>
                    <span class="focus-border" style="background-color: rgb(79,157,97);"><i></i></span>
                         </div>
                </td>
                <td style="text-align: center" class="auto-style10">&nbsp;</td>
                <td class="auto-style10">
                  
                </td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style9">
                    &nbsp;</td>
                <td style="text-align: center" class="auto-style9">&nbsp;</td>
                <td class="auto-style9">
                    &nbsp;</td>
            </tr>
             </table>
                    </td>
                </tr>
            </table>
         </ContentTemplate>
    </asp:UpdatePanel>
            
    <asp:ObjectDataSource ID="ObjectDataSource_TC" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetAll" TypeName="DataSetTableAdapters.Teacher_CourseTableAdapter" UpdateMethod="Update">
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

            <asp:HiddenField ID="HiddenField_tcid" runat="server" />
</div>

</asp:Content>

