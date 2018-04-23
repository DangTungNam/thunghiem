<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="quan.aspx.vb" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <article>
    	<h2>SẢN PHẨM MỚI</h2>
        <hr />
        <div class="col">
        <div class="khung">
            </div>
        </div>
        

        <div class="col">
        <div class="khung">
            
        	<a href="#"><img src="images/quan/2.jpg"/></a>
            <div class="tensp"><a href="#">BLACK/ WHITE STRIPE</a></div>
            <div class="gia">385.000 đ</div>        
        </div>
        </div>
        <div class="col">
        <div class="khung">
        	<a href="#"><img src="images/quan/3.jpg"/></a>
            <div class="tensp"><a href="#">SHORT - RED/ BLACK STRIPE</a></div>
            <div class="gia">385.000 đ</div>        
        </div>
        </div>
        
        <div class="col">
        <div class="khung">
        	<a href="#"><img src="images/quan/4.jpg"/></a>
            <div class="tensp"><a href="#">TRACK PANT - GREY/ BLACK STRIPE</a></div>
            <div class="gia">490.000 đ</div>        
        </div>
        </div>
        <div class="col">
        <div class="khung">
        	<a href="#"><img src="images/quan/5.jpg"/></a>
            <div class="tensp"><a href="#">TRACK PANT - BLACK/ WHITE STRIPE</a></div>
            <div class="gia">490.000 đ</div>        
        </div>
        </div>
        <div class="col">
        <div class="khung">
        	<a href="#"><img src="images/quan/6.jpg"/></a>
            <div class="tensp"><a href="#">TRACK PANT - RED/ BLACK STRIPE</a></div>
            <div class="gia">490.000 đ</div>        
        </div>
        </div>
        
        <div class="col">
        <div class="khung">
        	<a href="#"><img src="images/quan/7.jpg"/></a>
            <div class="tensp"><a href="#">BASIC SPLATTER DENIM - BLEACH BLUE</a></div>
            <div class="gia">645.000 đ</div>        
        </div>
        </div>
        <div class="col">
        <div class="khung">
        	<a href="#"><img src="images/quan/8.jpg"/></a>
            <div class="tensp"><a href="#">BASIC SPLATTER DENIM - BLUE</a></div>
            <div class="gia">645.000 đ</div>        
        </div>
        </div>
        <div class="col">
        <div class="khung">
        	<a href="#"><img src="images/quan/9.jpg"/></a>
            <div class="tensp"><a href="#">DESTROYER SPLATTER DENIM - BLEACH BLUE</a></div>
            <div class="gia">645.000 đ</div>        
        </div>
        </div>
         <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Product_id" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="Product_id" HeaderText="Product_id" ReadOnly="True" SortExpression="Product_id" />
                    <asp:BoundField DataField="Product_category_id" HeaderText="Product_category_id" SortExpression="Product_category_id" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                    <asp:BoundField DataField="Descriptions" HeaderText="Descriptions" SortExpression="Descriptions" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Nhom6_QuanLyBanHangConnectionString1 %>" SelectCommand="SELECT * FROM [Product]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Product] WHERE [Product_id] = @original_Product_id AND (([Product_category_id] = @original_Product_category_id) OR ([Product_category_id] IS NULL AND @original_Product_category_id IS NULL)) AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL)) AND (([Descriptions] = @original_Descriptions) OR ([Descriptions] IS NULL AND @original_Descriptions IS NULL)) AND (([image] = @original_image) OR ([image] IS NULL AND @original_image IS NULL))" InsertCommand="INSERT INTO [Product] ([Product_id], [Product_category_id], [Name], [Price], [Descriptions], [image]) VALUES (@Product_id, @Product_category_id, @Name, @Price, @Descriptions, @image)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Product] SET [Product_category_id] = @Product_category_id, [Name] = @Name, [Price] = @Price, [Descriptions] = @Descriptions, [image] = @image WHERE [Product_id] = @original_Product_id AND (([Product_category_id] = @original_Product_category_id) OR ([Product_category_id] IS NULL AND @original_Product_category_id IS NULL)) AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL)) AND (([Descriptions] = @original_Descriptions) OR ([Descriptions] IS NULL AND @original_Descriptions IS NULL)) AND (([image] = @original_image) OR ([image] IS NULL AND @original_image IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_Product_id" Type="Int32" />
                    <asp:Parameter Name="original_Product_category_id" Type="Int32" />
                    <asp:Parameter Name="original_Name" Type="String" />
                    <asp:Parameter Name="original_Price" Type="Decimal" />
                    <asp:Parameter Name="original_Descriptions" Type="String" />
                    <asp:Parameter Name="original_image" Type="Object" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Product_id" Type="Int32" />
                    <asp:Parameter Name="Product_category_id" Type="Int32" />
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Price" Type="Decimal" />
                    <asp:Parameter Name="Descriptions" Type="String" />
                    <asp:Parameter Name="image" Type="Object" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Product_category_id" Type="Int32" />
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Price" Type="Decimal" />
                    <asp:Parameter Name="Descriptions" Type="String" />
                    <asp:Parameter Name="image" Type="Object" />
                    <asp:Parameter Name="original_Product_id" Type="Int32" />
                    <asp:Parameter Name="original_Product_category_id" Type="Int32" />
                    <asp:Parameter Name="original_Name" Type="String" />
                    <asp:Parameter Name="original_Price" Type="Decimal" />
                    <asp:Parameter Name="original_Descriptions" Type="String" />
                    <asp:Parameter Name="original_image" Type="Object" />
                </UpdateParameters>
        </asp:SqlDataSource>
       
        <input type="button" value="XEM THÊM"  class="xemthem"/>
    </article>
       </form>
</asp:Content>

