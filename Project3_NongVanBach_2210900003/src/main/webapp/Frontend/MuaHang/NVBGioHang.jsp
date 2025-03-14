<%@ page import="java.util.List" %>
<%@ page import="Model.NVBCartItem" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Giỏ hàng</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f7fc;
            padding: 20px;
            text-align: center;
        }
        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            background: white;
        }
        th, td {
            padding: 10px;
            border: 1px solid #ddd;
            text-align: center;
        }
        th {
            background-color: #007bff;
            color: white;
        }
        .buttons {
            margin-top: 20px;
        }
        .buttons a, .buttons button {
            text-decoration: none;
            padding: 10px 20px;
            border-radius: 5px;
            font-size: 16px;
            color: white;
            border: none;
            cursor: pointer;
            margin: 5px;
            display: inline-block;
        }
        .continue-btn { background-color: #28a745; }
        .pay-btn { background-color: #007bff; }
        .payment-form-container {
            max-width: 500px;
            margin: 20px auto;
            background-color: #fff;
            padding: 30px;
            border: 1px solid #ddd;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: left;
            display: none; /* Ẩn ban đầu */
        }
        .payment-form-container h2 {
            text-align: center;
            color: #333;
        }
        .payment-form-container label {
            display: block;
            font-weight: bold;
            color: #555;
            margin-bottom: 5px;
        }
        .payment-form-container input,
        .payment-form-container textarea {
            width: 100%;
            padding: 12px;
            font-size: 14px;
            border: 1px solid #ccc;
            border-radius: 4px;
            margin-bottom: 15px;
            box-sizing: border-box;
        }
        .payment-form-container button {
            width: 100%;
            padding: 12px;
            background-color: #007bff;
            color: white;
            font-size: 16px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        .payment-form-container button:hover {
            background-color: #0056b3;
        }
    </style>
    <script>
        function togglePaymentForm() {
            var formDiv = document.getElementById('paymentForm');
            formDiv.style.display = formDiv.style.display === 'block' ? 'none' : 'block';
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
    
    <!-- Form thanh toán ẩn ban đầu --> 
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
                <input type="checkbox" name="payLater" value="true"> Thanh toán trả sau
            </label>
        </fieldset>
					<button type="submit" class="pay-btn">Xác Nhận Thanh Toán</button>
        </form>
    </div>
</body>
</html>
