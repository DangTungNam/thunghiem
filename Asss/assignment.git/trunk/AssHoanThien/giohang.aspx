<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="giohang.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Purchase_items_id" DataSourceID="SqlDataSource1" Width="666px">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="Purchase_items_id" HeaderText="Purchase_items_id" ReadOnly="True" SortExpression="Purchase_items_id" />
            <asp:BoundField DataField="Purchase_id" HeaderText="Purchase_id" SortExpression="Purchase_id" />
            <asp:BoundField DataField="Product_id" HeaderText="Product_id" SortExpression="Product_id" />
            <asp:BoundField DataField="amount" HeaderText="amount" SortExpression="amount" />
        </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Nhom6_QuanLyBanHangConnectionString1 %>" SelectCommand="SELECT * FROM [Purchase_items]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Purchase_items] WHERE [Purchase_items_id] = @original_Purchase_items_id AND (([Purchase_id] = @original_Purchase_id) OR ([Purchase_id] IS NULL AND @original_Purchase_id IS NULL)) AND (([Product_id] = @original_Product_id) OR ([Product_id] IS NULL AND @original_Product_id IS NULL)) AND (([amount] = @original_amount) OR ([amount] IS NULL AND @original_amount IS NULL))" InsertCommand="INSERT INTO [Purchase_items] ([Purchase_items_id], [Purchase_id], [Product_id], [amount]) VALUES (@Purchase_items_id, @Purchase_id, @Product_id, @amount)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Purchase_items] SET [Purchase_id] = @Purchase_id, [Product_id] = @Product_id, [amount] = @amount WHERE [Purchase_items_id] = @original_Purchase_items_id AND (([Purchase_id] = @original_Purchase_id) OR ([Purchase_id] IS NULL AND @original_Purchase_id IS NULL)) AND (([Product_id] = @original_Product_id) OR ([Product_id] IS NULL AND @original_Product_id IS NULL)) AND (([amount] = @original_amount) OR ([amount] IS NULL AND @original_amount IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_Purchase_items_id" Type="Int32" />
                <asp:Parameter Name="original_Purchase_id" Type="Int32" />
                <asp:Parameter Name="original_Product_id" Type="Int32" />
                <asp:Parameter Name="original_amount" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Purchase_items_id" Type="Int32" />
                <asp:Parameter Name="Purchase_id" Type="Int32" />
                <asp:Parameter Name="Product_id" Type="Int32" />
                <asp:Parameter Name="amount" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Purchase_id" Type="Int32" />
                <asp:Parameter Name="Product_id" Type="Int32" />
                <asp:Parameter Name="amount" Type="Int32" />
                <asp:Parameter Name="original_Purchase_items_id" Type="Int32" />
                <asp:Parameter Name="original_Purchase_id" Type="Int32" />
                <asp:Parameter Name="original_Product_id" Type="Int32" />
                <asp:Parameter Name="original_amount" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <button type="submit" name="OK" class="themgiohang">Thanh toán</button>
    
            
			
    </form>
            
			
    </form>
            
			
</asp:Content>

