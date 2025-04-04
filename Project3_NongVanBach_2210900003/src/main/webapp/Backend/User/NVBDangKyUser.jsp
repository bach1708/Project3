<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Đăng ký thành viên</title>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/Backend/css/formdangky.css">
    <style>
    body {
    background-color: #f4f7fc;
    margin: 0;
    padding: 0;
    font-family: Arial, sans-serif;
    text-align: center;
}

/* Khung chứa form đăng ký */
.form-container {
    max-width: 400px;
    margin: 60px auto;
    background-color: #ffffff;
    padding: 30px 40px;
    border-radius: 8px;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
    text-align: left;
}

/* Tiêu đề form */
.form-container h2 {
    text-align: center;
    margin-bottom: 20px;
    color: #333;
}

/* Định dạng nhãn và các trường nhập liệu */
.form-container label {
    display: block;
    font-weight: bold;
    color: #555;
    margin-bottom: 5px;
}

.form-container input[type="text"],
.form-container input[type="email"],
.form-container input[type="password"],
.form-container textarea {
    width: 100%;
    padding: 10px;
    margin-bottom: 15px;
    font-size: 14px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

/* Nút submit */
.form-container button {
    display: block;
    width: 100%;
    padding: 12px;
    background-color: #007bff;
    color: #fff;
    border: none;
    border-radius: 4px;
    font-size: 16px;
    cursor: pointer;
}

.form-container button:hover {
    background-color: #0056b3;
}

/* Đoạn văn bản bên dưới form (đăng nhập) */
.form-container p {
    text-align: center;
    margin-top: 20px;
}

.form-container p a {
    color: #007bff;
    text-decoration: none;
}

.form-container p a:hover {
    text-decoration: underline;
}</style>
    <script>
        function toggleSubmit() {
            var checkbox = document.getElementById("agreeTerms");
            var submitBtn = document.getElementById("submitBtn");
            submitBtn.disabled = !checkbox.checked;
        }
        window.onload = function(){
            toggleSubmit();
        };
    </script>
</head>
<body>
    <div class="form-container">
        <h2>Đăng ký thành viên</h2>
        <form action="<%= request.getContextPath() %>/NVBDangKy" method="post">
            <label for="taiKhoan">Tài khoản:</label>
            <input type="text" id="taiKhoan" name="taiKhoan" required>

            <label for="hoTen">Họ tên:</label>
            <input type="text" id="hoTen" name="hoTen" required>

            <label for="soDienThoai">Số điện thoại:</label>
            <input type="text" id="soDienThoai" name="soDienThoai" required>

            <label for="diaChi">Địa chỉ:</label>
            <textarea id="diaChi" name="diaChi" required></textarea>

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>

            <label for="matKhau">Mật khẩu:</label>
            <input type="password" id="matKhau" name="matKhau" required>

            <!-- Checkbox thỏa thuận --> 
            <label style="display: flex; align-items: center; margin-bottom: 15px;"> 
                <input type="checkbox" id="agreeTerms" name="agreeTerms" onchange="toggleSubmit()">
                <span style="margin-left: 8px;">Tôi đồng ý với quy tắc của cửa hàng, không bom hàng hay đặt hàng để spam</span>
            </label>

            <button type="submit" id="submitBtn">Đồng ý</button>
        </form>
        <p>Bạn đã có tài khoản?  
            <a href="userLogin.jsp">Đăng nhập ở đây</a>.
        </p>
    </div>
</body>
</html>
