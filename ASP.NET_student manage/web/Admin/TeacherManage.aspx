<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="Admin_TeacherManager, App_Web_teachermanage.aspx.fdf7a39c" %>

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
            }
            function showEdit(Te_id, name, sex, age, nation, tel, politicol, ID) {
                   document.getElementById('<%=HiddenField_Teid.ClientID%>').value = Te_id;
             document.getElementById('<%=Textbox_teacherid2.ClientID%>').value = Te_id;
            document.getElementById('<%=Textbox_teachername2.ClientID%>').value = name;
            document.getElementById('<%=Textbox_teacherSex2.ClientID%>').value = sex;
            document.getElementById('<%=Textbox_teacherage2.ClientID%>').value = age;
            document.getElementById('<%=Textbox_teachernation2.ClientID%>').value = nation;
            document.getElementById('<%=TextBox_tel2.ClientID%>').value = tel;
            document.getElementById('<%=TextBox_ID2.ClientID%>').value = ID;
            layer.open({
                type: 1,
                skin: 'layui-layer-molv',
                btn: ['提交'],
                title: ['修改教师信息', 'font-family:微软雅黑;font-weight:bold;font-size:18px'],
                area: ['auto'],
                shadeClose: true, //点击遮罩关闭
                content: $("#Edit_table"),
                yes: function (index, layero) {
                    document.getElementById('<%=Button_hdedit.ClientID%>').click();
                        location.reload();
                    }
                })
                }


    </script>
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

        .auto-style4 {
            height: 50px;
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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" Runat="Server">

    <div style="width: 1000px; margin: 20px auto; border-radius: 5px; background-color: white; padding: 20px;">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
      <asp:updatepanel id="UpdatePanel1" runat="server">
            <ContentTemplate>
                <table class="auto-style3">
        <tr>
            <td   style="height:50px; width:70px;">学院：
                
            </td>
            <td style="height:50px; width:170px;">
                
                <asp:DropDownList ID="DropDownList_college" runat="server" AutoPostBack="True" DataSourceID="ObjectDataSource_College" DataTextField="C_name" DataValueField="C_id" OnDataBound="DropDownList_college_DataBound" OnSelectedIndexChanged="DropDownList_college_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td class="auto-style4">
                <div class="search radius6" style="margin-top:10px;float:right">
	                <form name="searchform" method="post" action="/e/search/index.php" >
		            <input name='ecmsfrom' type='hidden' value='9'/>
		            <input type="hidden" name="show" value="title,newstext"/>
		            <select name="classid" id="choose" >
			        <option value="学工号">学工号</option>
			        <option value="姓名">姓　名</option>
		            </select> 
		            <input class="inp_srh" name="keyboard"  placeholder="请输入关键词"/ >
                        <asp:Button ID="Button_search" runat="server" class="btn_srh" Text="搜索" OnClick="Button1_Click" />
		            <%--<input class="btn_srh" type="submit" name="submit" value="搜索"/>--%>
	                </form>
</div>
                &nbsp;</td>
            <td class="auto-style4">
               <div style="float:right">
                   <asp:Button Style="display:none" ID="Button_hdadd" runat="server" OnClick="Button_hdadd_Click" Text="Button" Height="26px" />
                   <asp:Button style="display:none" ID="Button_hdedit" runat="server" Text="隐藏2" OnCommand="Button_hdedit_Command" />
                   <input type="button" onclick="showNew()" style="margin-left:150px;" class="infoButton" value="添加教师"/>
       </div> </td>
                 </tr>
        <tr>
            <td colspan="4">
                <div>
                    
                    <asp:GridView   Style="margin-top: 20px" ID="GridView_show" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Te_id" CellPadding="4" GridLines="None" Width="100%" ForeColor="#333333" Font-Names="微软雅黑" Font-Size="20px" Height="20px" EmptyDataText="无数据" PageSize="5">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="Te_id" HeaderText="学工号" ReadOnly="True" SortExpression="Te_id" />
                            <asp:BoundField DataField="Te_name" HeaderText="姓名" SortExpression="Te_name" />
                            <asp:BoundField DataField="Te_sex" HeaderText="性别" SortExpression="Te_sex" />
                            <asp:BoundField DataField="Te_age" HeaderText="年龄" SortExpression="Te_age" />
                            <asp:BoundField DataField="Nation" HeaderText="汉" SortExpression="Nation" />
                            <asp:BoundField DataField="C_name" HeaderText="所属学院" SortExpression="C_name" />
                            <asp:BoundField DataField="T_name" HeaderText="职称" SortExpression="T_name" />
                            <asp:BoundField DataField="Tel_number" HeaderText="电话号码" SortExpression="Tel_number" />
                            <asp:BoundField DataField="Ps_name" HeaderText="政治面貌" SortExpression="Ps_name" />
                            <asp:BoundField DataField="ID_number" HeaderText="身份证号" SortExpression="ID_number" />
                            <asp:TemplateField HeaderText="操作">
                                <ItemTemplate>
                                   <asp:Button ID="Button_edit" runat="server" Text="编辑" OnCommand="Button_edit_Command"  CommandArgument='<%# Eval("Te_id") %>' />
                                    <asp:Button ID="Button_delete" runat="server" Text="删除" OnClientClick="return alert()" CommandArgument='<%# Eval("Te_id") %>' OnCommand="Button_delete_Command" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:HyperLinkField DataNavigateUrlFields="Te_id,Te_name" DataNavigateUrlFormatString="/Admin/TeacherManage2.aspx?id={0}&amp;name={1}" HeaderText="管理" NavigateUrl="/Admin/TeacherManage2.aspx?id={0}" Text="[课程管理]" />
                        </Columns>
                        <EditRowStyle BackColor="#7C6F57" />
                        <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#E3EAEB" Height="20px" /><RowStyle HorizontalAlign="Center" />    <RowStyle Height="60px" />
                        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F8FAFA" />
                        <SortedAscendingHeaderStyle BackColor="#246B61" />
                        <SortedDescendingCellStyle BackColor="#D4DFE1" />
                        <SortedDescendingHeaderStyle BackColor="#15524A" />
                    </asp:GridView>
                    
                </div>
            </td>
        </tr>
    </table>
   </ContentTemplate>
</asp:updatepanel>
    
         <table style="display: block" class="inputTable" id="hiden_table">
            <tr>
                <td class="auto-style2">教师ID</td>
                <td style="width: 30%">
                    <div class="auto-style13" style="margin: 0 auto; ">
                        <asp:textbox id="txtteacherID" runat="server" cssclass="effect-8" style="font-family: 微软雅黑;"></asp:textbox>
                        <span class="focus-border" style="background-color: rgb(79,157,97);">
                            <i></i>
                        </span>
                    </div>
                </td>
                <td style="text-align: center; vertical-align: middle" colspan="2">教师名</td>
                <td style="width: 30%">
                    <div class="col-3" style="margin: 0 auto; width: 100%">
                        <asp:textbox id="txtteacherName" runat="server" class="effect-8" style="font-family: 微软雅黑"></asp:textbox>
                        <span class="focus-border" style="background-color: rgb(79,157,97);">
                            <i></i>
                        </span>
                    </div>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">性别</td>
                <td>
                    <div class="col-3" style="margin: 0 auto; width: 100%">
                        <asp:textbox id="txtteacherSex" class="effect-8" style="font-family: 微软雅黑" runat="server"></asp:textbox>
                        <span class="focus-border" style="background-color: rgb(79,157,97);"><i></i></span>
                    </div>
                </td>
                <td style="text-align: center" colspan="2">年龄</td>
                <td>
                    <div class="col-3" style="margin: 0 auto; width: 100%">
                        <asp:textbox id="txtage" class="effect-8" style="font-family: 微软雅黑" runat="server"></asp:textbox>
                        <span class="focus-border" style="background-color: rgb(79,157,97);"><i></i></span>
                    </div>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">名族</td>
                <td class="auto-style10">
                     <div class="col-3" style="margin: 0 auto; width: 100%">
                   <asp:textbox id="txt_nation" class="effect-8" style="font-family: 微软雅黑" runat="server"></asp:textbox>
                    <span class="focus-border" style="background-color: rgb(79,157,97);"><i></i></span>
                         </div>
                </td>
                <td style="text-align: center" class="auto-style10" colspan="2">所属学院</td>
                <td class="auto-style10">
                    <asp:updatepanel id="UpdatePanel_college" runat="server">
                        <ContentTemplate>
                            <asp:DropDownList ID="DropDownList_newcollege" runat="server" CssClass="wide" class="wide" DataSourceID="ObjectDataSource_College" DataTextField="C_name" DataValueField="C_id">
                            </asp:DropDownList>
                        </ContentTemplate>
                    </asp:updatepanel>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">职称</td>
                <td class="auto-style12">
                    <asp:DropDownList ID="DropDownList_title" CssClass="wide" runat="server" DataSourceID="ObjectDataSource_Title" DataTextField="T_name" DataValueField="T_id">
                    </asp:DropDownList>
                </td>
                <td style="text-align: center" class="auto-style12" colspan="2">电话号码</td>
                <td class="auto-style12">
                    <div class="col-3" style="margin: 0 auto; width: 100%">
                    <asp:TextBox ID="txtNum" class="effect-8" runat="server"></asp:TextBox>
                        <span class="focus-border" style="background-color: rgb(79,157,97);"><i></i></span>
                       </div>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">政治面貌</td>
                <td  class="auto-style12">
                    <asp:DropDownList ID="DropDownList_ps" runat="server" DataSourceID="ObjectDataSource_PS" DataTextField="Ps_name" DataValueField="Ps_id">
                    </asp:DropDownList>
                    </td>
                <td style="text-align: center" class="auto-style12">
                    登录密码</td>
                <td colspan="2" class="auto-style12">

                    <div class="col-3" style="margin: 0 auto; width: 100%">
                    <asp:TextBox ID="TextBox_password"  class="effect-8" runat="server"></asp:TextBox>
                        <span class="focus-border" style="background-color: rgb(79,157,97);"><i></i></span>
                       </div>
                   
                </td>
            </tr>
             <tr >
              <td class="auto-style8">身份证号</td>
                <td class="auto-style9" colspan="4">
                    <div class="col-3" style="margin: 0 auto; width: 100%">
                    <asp:TextBox ID="txtID" runat="server" Height="25px"  ></asp:TextBox>
                    <span class="focus-border" style="background-color: rgb(79,157,97);"><i></i></span>
                    </div>
                </td>
             </tr>
             </table>
         <table style="display: block" class="inputTable" id="Edit_table">
            <tr>
                <td class="auto-style2">教师ID</td>
                <td style="width: 30%">
                    <div class="auto-style13" style="margin: 0 auto; ">
                        <asp:textbox id="Textbox_teacherid2" runat="server" cssclass="effect-8" style="font-family: 微软雅黑;"></asp:textbox>
                        <span class="focus-border" style="background-color: rgb(79,157,97);">
                            <i></i>
                        </span>
                    </div>
                </td>
                <td style="text-align: center; vertical-align: middle">教师名</td>
                <td style="width: 30%">
                    <div class="col-3" style="margin: 0 auto; width: 100%">
                        <asp:textbox id="Textbox_teachername2" runat="server" class="effect-8" style="font-family: 微软雅黑" OnTextChanged="Textbox2_TextChanged"></asp:textbox>
                        <span class="focus-border" style="background-color: rgb(79,157,97);">
                            <i></i>
                        </span>
                    </div>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">性别</td>
                <td>
                    <div class="col-3" style="margin: 0 auto; width: 100%">
                        <asp:textbox id="Textbox_teacherSex2" class="effect-8" style="font-family: 微软雅黑" runat="server"></asp:textbox>
                        <span class="focus-border" style="background-color: rgb(79,157,97);"><i></i></span>
                    </div>
                </td>
                <td style="text-align: center">年龄</td>
                <td>
                    <div class="col-3" style="margin: 0 auto; width: 100%">
                        <asp:textbox id="Textbox_teacherage2" class="effect-8" style="font-family: 微软雅黑" runat="server"></asp:textbox>
                        <span class="focus-border" style="background-color: rgb(79,157,97);"><i></i></span>
                    </div>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">名族</td>
                <td class="auto-style10">
                     <div class="col-3" style="margin: 0 auto; width: 100%">
                   <asp:textbox id="Textbox_teachernation2" class="effect-8" style="font-family: 微软雅黑" runat="server"></asp:textbox>
                    <span class="focus-border" style="background-color: rgb(79,157,97);"><i></i></span>
                         </div>
                </td>
                <td style="text-align: center" class="auto-style10">所属学院</td>
                <td class="auto-style10">
                    <asp:updatepanel id="UpdatePanel2" runat="server">
                        <ContentTemplate>
                            <asp:DropDownList ID="DropDownList_college2" runat="server" CssClass="wide" class="wide" DataSourceID="ObjectDataSource_College" DataTextField="C_name" DataValueField="C_id">
                            </asp:DropDownList>
                        </ContentTemplate>
                    </asp:updatepanel>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">职称</td>
                <td class="auto-style9">
                    <asp:DropDownList ID="DropDownList_title2" CssClass="wide" runat="server" DataSourceID="ObjectDataSource_Title" DataTextField="T_name" DataValueField="T_id">
                    </asp:DropDownList>
                </td>
                <td style="text-align: center" class="auto-style9">电话号码</td>
                <td class="auto-style9">
                    <div class="col-3" style="margin: 0 auto; width: 100%">
                    <asp:TextBox ID="TextBox_tel2" class="effect-8" runat="server"></asp:TextBox>
                        <span class="focus-border" style="background-color: rgb(79,157,97);"><i></i></span>
                       </div>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">政治面貌</td>
                <td colspan="3" class="auto-style12">
                    <asp:DropDownList ID="DropDownList_ps2" runat="server" DataSourceID="ObjectDataSource_PS" DataTextField="Ps_name" DataValueField="Ps_id">
                    </asp:DropDownList>
                    </td>
            </tr>
             <tr >
              <td class="auto-style8">身份证号</td>
                <td class="auto-style9" colspan="3">
                    <div class="col-3" style="margin: 0 auto; width: 100%">
                    <asp:TextBox ID="TextBox_ID2" runat="server" Height="25px"  ></asp:TextBox>
                    <span class="focus-border" style="background-color: rgb(79,157,97);"><i></i></span>
                    </div>
                </td>
             </tr>
             </table>
        <asp:ObjectDataSource ID="ObjectDataSource_TeacherG" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataByCID" TypeName="DataSetTableAdapters.TeacherTableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_Te_id" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Te_id" Type="String" />
                <asp:Parameter Name="Te_password" Type="String" />
                <asp:Parameter Name="Te_name" Type="String" />
                <asp:Parameter Name="Te_sex" Type="String" />
                <asp:Parameter Name="Te_age" Type="Int32" />
                <asp:Parameter Name="Nation" Type="String" />
                <asp:Parameter Name="C_id" Type="String" />
                <asp:Parameter Name="C_name" Type="String" />
                <asp:Parameter Name="T_id" Type="String" />
                <asp:Parameter Name="T_name" Type="String" />
                <asp:Parameter Name="Tel_number" Type="String" />
                <asp:Parameter Name="Ps_id" Type="String" />
                <asp:Parameter Name="Ps_name" Type="String" />
                <asp:Parameter Name="ID_number" Type="String" />
                <asp:Parameter Name="Remark1" Type="String" />
                <asp:Parameter Name="Remark2" Type="String" />
                <asp:Parameter Name="Remark3" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList_college" Name="C_id" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Te_password" Type="String" />
                <asp:Parameter Name="Te_name" Type="String" />
                <asp:Parameter Name="Te_sex" Type="String" />
                <asp:Parameter Name="Te_age" Type="Int32" />
                <asp:Parameter Name="Nation" Type="String" />
                <asp:Parameter Name="C_id" Type="String" />
                <asp:Parameter Name="C_name" Type="String" />
                <asp:Parameter Name="T_id" Type="String" />
                <asp:Parameter Name="T_name" Type="String" />
                <asp:Parameter Name="Tel_number" Type="String" />
                <asp:Parameter Name="Ps_id" Type="String" />
                <asp:Parameter Name="Ps_name" Type="String" />
                <asp:Parameter Name="ID_number" Type="String" />
                <asp:Parameter Name="Remark1" Type="String" />
                <asp:Parameter Name="Remark2" Type="String" />
                <asp:Parameter Name="Remark3" Type="String" />
                <asp:Parameter Name="Original_Te_id" Type="String" />
            </UpdateParameters>
        </asp:ObjectDataSource>
        <asp:ObjectDataSource ID="ObjectDataSource_College" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="DataSetTableAdapters.CollegeTableAdapter" DeleteMethod="Delete" InsertMethod="Insert" UpdateMethod="Update">
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
        <asp:ObjectDataSource ID="ObjectDataSource_PS" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="DataSetTableAdapters.Political_statusTableAdapter" UpdateMethod="Update">
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
        <asp:ObjectDataSource ID="ObjectDataSource_Title" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="DataSetTableAdapters.TitleTableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_T_id" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="T_id" Type="String" />
                <asp:Parameter Name="T_name" Type="String" />
                <asp:Parameter Name="Remark" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="T_name" Type="String" />
                <asp:Parameter Name="Remark" Type="String" />
                <asp:Parameter Name="Original_T_id" Type="String" />
            </UpdateParameters>
        </asp:ObjectDataSource>
        <asp:HiddenField ID="HiddenField_Teid" runat="server" />
        </div>
</asp:Content>

