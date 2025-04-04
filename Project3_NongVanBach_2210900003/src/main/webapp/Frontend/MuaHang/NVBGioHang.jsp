<%@ page import="java.util.List" %>
<%@ page import="Model.NVBCartItem" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Giỏ hàng</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/Frontend/MuaHang/cssGioHang.css">
    <script>
        function togglePaymentForm() {
            var formDiv = document.getElementById('paymentForm');
            formDiv.style.display = formDiv.style.display === 'block' ? 'none' : 'block';
        }
        
        function confirmPayment() {
            alert('Thanh toán thành công, đơn hàng sẽ giao tới bạn sau vài ngày!');
            return true; 
        }
    </script>
</head>
<body>
    <h2>Giỏ hàng của bạn</h2>
    <%
        List<NVBCartItem> gioHang = (List<NVBCartItem>) session.getAttribute("gioHang");
        if (gioHang == null || gioHang.isEmpty()) {
    %>
        <p>Giỏ hàng trống!</p>
    <%
        } else {
    %>
        <table cellpadding="10" cellspacing="0">
            <tr>
                <th>Tên sản phẩm</th>
                <th>Hình Ảnh</th>
                <th>Giá</th>
                <th>Số lượng</th>
                <th>Tổng tiền</th>
                <th>Xóa</th>
            </tr>
            <%
                int tongThanhToan = 0;
                for (NVBCartItem item : gioHang) {
                    int tongTien = item.getTongTien();
                    tongThanhToan += tongTien;
            %>
            <tr>
                <td><%= item.getTenSanPham() %></td>
                <td>
                    <img src="<%= request.getContextPath() %>/images/<%= item.getHinhAnh() %>" 
                         alt="<%= item.getTenSanPham() %>" 
                         style="width: 80px; height: auto; border-radius: 5px;">
                </td>
                <td><%= item.getGia() %> VND</td>
                <td><%= item.getSoLuong() %></td>
                <td><%= tongTien %> VND</td>
                <td><a href="<%= request.getContextPath() %>/NVBGioHang?action=remove&id=<%= item.getSanPhamId() %>">Xóa</a></td>
            </tr>
            <%
                }
            %>
            <tr>
                <td colspan="3" align="right">Tổng thanh toán:</td>
                <td colspan="2"><%= tongThanhToan %> VND</td>
            </tr>
        </table>
    <%
        }
    %>
    <div class="buttons">
        <a href="<%= request.getContextPath() %>/Frontend/MuaHang/NVBListSanPham.jsp" class="continue-btn">Tiếp tục mua hàng</a>
        <button type="button" class="pay-btn" onclick="togglePaymentForm()">Thanh toán</button>
    </div>

    <!-- Form thanh toán -->
    <div id="paymentForm" class="payment-form-container">
        <h2>Thanh Toán</h2>
        <form action="<%= request.getContextPath() %>/NVBThanhToan" method="POST">
            <label for="hoTen">Họ Tên:</label>
            <input type="text" id="hoTen" name="hoTen" placeholder="Nhập họ tên của bạn" required>
            
            <label for="soDienThoai">Số Điện Thoại:</label>
            <input type="text" id="soDienThoai" name="soDienThoai" placeholder="Nhập số điện thoại của bạn" required>
            
            <label for="diaChi">Địa Chỉ:</label>
            <textarea id="diaChi" name="diaChi" placeholder="Nhập địa chỉ của bạn" required></textarea>
            
            <!-- Lựa chọn thanh toán --> 
            <fieldset class="payment-options-fieldset">
                <legend>Chọn phương thức thanh toán:</legend>
                <label class="payment-option">
                    <input type="radio" name="paymentMethod" value="qr" checked> Thanh toán qua QR
                </label>
                <label class="payment-option">
                    <input type="radio" name="paymentMethod" value="card"> Thanh toán bằng Visa/Thẻ ghi nợ
                </label>
                <label class="payment-option">
                    <input type="radio" name="paymentMethod" value="true"> Thanh toán trả sau
                </label>
            </fieldset>
            <button type="submit" class="pay-btn-succes" onclick="return confirmPayment();">Xác Nhận Thanh Toán</button>
        </form>
    </div>
</body>
</html>
