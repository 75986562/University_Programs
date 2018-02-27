<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="Admin_AllCourses, App_Web_allcourses.aspx.fdf7a39c" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="Server">
    <div style="width: 1000px; margin: 20px auto; border-radius: 5px; background-color: white; padding: 20px;">




        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="100%" DataSourceID="odsCourse">
            <Columns>
                <asp:ImageField>
                </asp:ImageField>
                <asp:TemplateField></asp:TemplateField>
                <asp:ImageField>
                </asp:ImageField>
                <asp:TemplateField></asp:TemplateField>
                <asp:ImageField>
                </asp:ImageField>
                <asp:TemplateField></asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:ObjectDataSource ID="odsCourse" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="DataSetTableAdapters.CollegeTableAdapter" UpdateMethod="Update">
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
    </div>
</asp:Content>