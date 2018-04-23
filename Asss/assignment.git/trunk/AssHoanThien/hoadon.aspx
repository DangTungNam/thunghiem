<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="giohang.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <form id="form1" runat="server">
            <article class="nd-giohang">
    <div class="form-giohang">
        
            
			<div class="thanhtoan">
            	<h3>PHƯƠNG THỨC THANH TOÁN</h3>
            	<div class="checkoutStep">
                	<div id="paymentMethod">
                    <input class="checkCity" type="hidden">
                    <input class="checkPaymentMethod" type="hidden">
                    <div class="b">
                    <label><input type="radio" name="group-radio" checked="checked"> Thanh toán tại nhà </label>
					</div>
                    <div class="b">
					<label><input type="radio" name="group-radio"> Bằng ví điện tử Bảo Kim</label>
					</div>
                
                	</div>
           		</div>
            </div>
            
    </div>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Purchase_id" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                        <asp:BoundField DataField="Purchase_id" HeaderText="Purchase_id" ReadOnly="True" SortExpression="Purchase_id" />
                        <asp:BoundField DataField="Purchase_no" HeaderText="Purchase_no" SortExpression="Purchase_no" />
                        <asp:BoundField DataField="Client_id" HeaderText="Client_id" SortExpression="Client_id" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Nhom6_QuanLyBanHangConnectionString1 %>" SelectCommand="SELECT * FROM [Purchase]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Purchase] WHERE [Purchase_id] = @original_Purchase_id AND (([Purchase_no] = @original_Purchase_no) OR ([Purchase_no] IS NULL AND @original_Purchase_no IS NULL)) AND (([Client_id] = @original_Client_id) OR ([Client_id] IS NULL AND @original_Client_id IS NULL))" InsertCommand="INSERT INTO [Purchase] ([Purchase_id], [Purchase_no], [Client_id]) VALUES (@Purchase_id, @Purchase_no, @Client_id)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Purchase] SET [Purchase_no] = @Purchase_no, [Client_id] = @Client_id WHERE [Purchase_id] = @original_Purchase_id AND (([Purchase_no] = @original_Purchase_no) OR ([Purchase_no] IS NULL AND @original_Purchase_no IS NULL)) AND (([Client_id] = @original_Client_id) OR ([Client_id] IS NULL AND @original_Client_id IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_Purchase_id" Type="Int32" />
                        <asp:Parameter Name="original_Purchase_no" Type="String" />
                        <asp:Parameter Name="original_Client_id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Purchase_id" Type="Int32" />
                        <asp:Parameter Name="Purchase_no" Type="String" />
                        <asp:Parameter Name="Client_id" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Purchase_no" Type="String" />
                        <asp:Parameter Name="Client_id" Type="Int32" />
                        <asp:Parameter Name="original_Purchase_id" Type="Int32" />
                        <asp:Parameter Name="original_Purchase_no" Type="String" />
                        <asp:Parameter Name="original_Client_id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
    <div class="form-dathang" >
    	<h3>NỘI DUNG ĐẶT HÀNG</h3>
    	<table style="border-bottom:1px solid gray;border-collapse: collapse; color:#9a9a9a;">
        	<tr style="background-color: rgb(212, 212, 212); height:45px;">
            	<th style="width:50%;">Sản phẩm</th>
                <th style="width:25%;">Số lượng</th>
                <th style="width:25%;">Đơn giá</th>
            </tr>
            <tr>
            	<td style="padding-left:10px; line-height:100px;"><p><img src="images/giay1.jpg" width="100" height="100" style="float:left;" />Palladium _cổ gập trắng</p></td>
                <td style="text-align:center; padding:0 45px;"><input type="text" value="1" style="width:50px; text-align:center"/></td>
                <td style="float:right; padding-right:10px;line-height:100px;"><p>580,000 VND</p></td>
            </tr>
        </table>
        
        <div style="width:70%; float:right; color:#9a9a9a;">
        	<p>Tổng tiền<span style="width:100px; display:block; float:right; clear:right;">550,000 VND</span></p>
            <p>Phí vận chuyển<span style="width:90px; display:block; float:right; clear:right;">30,000 VND</span></p>
            <p style="font-size:20px;border-top:solid 1px #aaa;font-weight:bold; padding-top:10px;">Tổng cộng <span style="width:137px; display:block; float:right; clear:right;">580,000 VND</span></p>
           
            
        </div>
        
    </div>
    
	</article>
        </form>
</asp:Content>

