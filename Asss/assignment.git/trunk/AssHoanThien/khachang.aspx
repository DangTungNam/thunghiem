<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="khachang.aspx.vb" Inherits="khachang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Client_id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="Client_id" HeaderText="Client_id" ReadOnly="True" SortExpression="Client_id" />
            <asp:BoundField DataField="Fullname" HeaderText="Fullname" SortExpression="Fullname" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
        </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Nhom6_QuanLyBanHangConnectionString1 %>" SelectCommand="SELECT * FROM [Client]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Client] WHERE [Client_id] = @original_Client_id AND (([Fullname] = @original_Fullname) OR ([Fullname] IS NULL AND @original_Fullname IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL))" InsertCommand="INSERT INTO [Client] ([Client_id], [Fullname], [Email]) VALUES (@Client_id, @Fullname, @Email)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Client] SET [Fullname] = @Fullname, [Email] = @Email WHERE [Client_id] = @original_Client_id AND (([Fullname] = @original_Fullname) OR ([Fullname] IS NULL AND @original_Fullname IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_Client_id" Type="Int32" />
                <asp:Parameter Name="original_Fullname" Type="String" />
                <asp:Parameter Name="original_Email" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Client_id" Type="Int32" />
                <asp:Parameter Name="Fullname" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Fullname" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="original_Client_id" Type="Int32" />
                <asp:Parameter Name="original_Fullname" Type="String" />
                <asp:Parameter Name="original_Email" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</asp:Content>

