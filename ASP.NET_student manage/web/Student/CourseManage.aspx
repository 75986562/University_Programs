<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="Student_ManageMycourse, App_Web_coursemanage.aspx.f0db4b1d" %>

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
        function msg(text) {
            layer.msg(text);
            window.location.reload();
        }
        function dia1()
        {
            return confirm("确认退课？");
        }
        function dia2() {
            return confirm("确认选课？");
        }
    </script>

    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 22px;
        }
    </style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" Runat="Server">

     <asp:UpdatePanel ID="UpdatePanel1" runat="server"> <ContentTemplate>
    <div style="width: 1000px; margin: 20px auto; border-radius:5px;background-color:white;padding:20px;">
          <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>

        <table class="auto-style1">
            <tr>
                <td style="font-family: 微软雅黑;font-size:30px;color: #6495ED;">我的课表</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="5">
                   
                    <asp:GridView ID="GridView_stu" runat="server" AutoGenerateColumns="False" style="width:100%" CellPadding="4" ForeColor="#333333" GridLines="None" EmptyDataText="暂无数据">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:BoundField DataField="s_id" HeaderText="学号" SortExpression="s_id" />
                            <asp:BoundField DataField="s_name" HeaderText="姓名" SortExpression="s_name" />
                            <asp:BoundField DataField="Course_id" HeaderText="课程号" SortExpression="Course_id" />
                            <asp:BoundField DataField="Course_name" HeaderText="课程名" SortExpression="Course_name" />
                            <asp:BoundField DataField="Te_name" HeaderText="任课教师" SortExpression="Te_name" />
                            <asp:BoundField DataField="credit" HeaderText="学分" SortExpression="credit" />
                            <asp:BoundField DataField="time" HeaderText="学时" SortExpression="time" />
                            <asp:BoundField DataField="category" HeaderText="课程类型" SortExpression="category" />
                            <asp:BoundField DataField="Mode" HeaderText="考核方式" SortExpression="Mode" />
                            <asp:BoundField DataField="Number" HeaderText="上课人数" SortExpression="Number" />
                            <asp:BoundField DataField="Time1" HeaderText="上课时间" SortExpression="Time1" />
                            <asp:BoundField DataField="place" HeaderText="上课地点" SortExpression="place" />
                            <asp:TemplateField HeaderText="操作">
                                <ItemTemplate>
                                    <asp:Button ID="Button_delete" runat="server" OnCommand="Button_delete_Command" Text="退课"  CommandArgument='<% #Eval("TC_id") %>' OnClientClick="return dia1()" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" Height="90px" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
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
            <tr>
                <td style="font-family: 微软雅黑;font-size:30px;color: #6495ED;">可选课程</td>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
            </tr>
          
            <tr>
                <td  colspan="5">
                    <asp:GridView ID="GridView_last" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="TC_id" ForeColor="#333333" GridLines="None" Width="100%">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:BoundField DataField="TC_id" HeaderText="编号" ReadOnly="True" SortExpression="TC_id" />
                            <asp:BoundField DataField="Course_id" HeaderText="课程号" SortExpression="Course_id" />
                            <asp:BoundField DataField="Course_name" HeaderText="课程名" SortExpression="Course_name" />
                            <asp:BoundField DataField="Te_name" HeaderText="任课教师" SortExpression="Te_name" />
                            <asp:BoundField DataField="Credit" HeaderText="学分" SortExpression="Credit" />
                            <asp:BoundField DataField="Time" HeaderText="学时" SortExpression="Time" />
                            <asp:BoundField DataField="Category" HeaderText="课程类别" SortExpression="Category" />
                            <asp:BoundField DataField="Mode" HeaderText="考核方式" SortExpression="Mode" />
                            <asp:BoundField DataField="Number" HeaderText="上课人数" SortExpression="Number" />
                            <asp:BoundField DataField="Expr1" HeaderText="上课时间" SortExpression="Expr1" />
                            <asp:BoundField DataField="place" HeaderText="上课地点" SortExpression="place" />
                            <asp:TemplateField HeaderText="操作">
                                <ItemTemplate>
                                    <asp:Button ID="Button_select" runat="server" OnCommand="Button_select_Command" CommandArgument='<%#Eval("TC_id") %>' Text="选课" OnClientClick="return dia2()" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" Height="90px" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                   
                </td>
            </tr>
          
            <tr>
                <td style="font-family: 微软雅黑;font-size:30px;color: #6495ED;">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
          
        </table>
        </div>
     </ContentTemplate> </asp:UpdatePanel>
        <asp:ObjectDataSource ID="ObjectDataSource_Studentcourse" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="DataSetTableAdapters.DataTablestudenthascourseTableAdapter">
          </asp:ObjectDataSource>

    <asp:ObjectDataSource ID="ObjectDataSource_Teachercourse" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="DataSetTableAdapters.DataTableStudetncourseviewTableAdapter">
    </asp:ObjectDataSource>

</asp:Content>

