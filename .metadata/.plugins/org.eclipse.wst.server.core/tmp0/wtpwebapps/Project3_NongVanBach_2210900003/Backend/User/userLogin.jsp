<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Đăng Nhập User</title>
</head>
<body style="font-family: Arial, sans-serif; background-color: #f4f7fc; padding: 20px;">
    <div style="max-width: 400px; margin: 0 auto; background-color: #fff; padding: 30px; border-radius: 8px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);">
        <h2 style="text-align: center; color: #333;">Đăng Nhập Khách Hàng</h2>
        <form action="${pageContext.request.contextPath}/Backend/User/userLogin" method="POST">
            <div style="margin-bottom: 15px;">
                <label for="username" style="font-weight: bold; color: #555;">Tên người dùng:</label>
                <input type="text" id="username" name="username" required style="width: 100%; padding: 12px; font-size: 14px; border: 1px solid #ccc; border-radius: 4px; box-sizing: border-box;">
            </div>
            <div style="margin-bottom: 15px;">
                <label for="password" style="font-weight: bold; color: #555;">Mật khẩu:</label>
                <input type="password" id="password" name="password" required style="width: 100%; padding: 12px; font-size: 14px; border: 1px solid #ccc; border-radius: 4px; box-sizing: border-box;">
            </div>
            <div style="text-align: center;">
                <button type="submit" style="width: 100%; padding: 12px; background-color: #4CAF50; color: white; font-size: 16px; border: none; border-radius: 4px; cursor: pointer;">Đăng Nhập</button>
            </div>
            <div style="text-align: center; margin-top: 20px;">
            <a href="${pageContext.request.contextPath}/Backend/User/NVBDangKyUser.jsp" style="text-decoration: none; color: #007bff; font-size: 14px;">Đăng ký tài khoản</a>
        </div>
        </form>
        <div style="text-align: center; margin-top: 15px;">
            <%= request.getAttribute("errorMessage") != null ? "<p style='color: red;'>" + request.getAttribute("errorMessage") + "</p>" : "" %>
        </div>
        <!-- Liên kết tới trang đăng nhập Admin -->
        <div style="text-align: center; margin-top: 20px;">
            <a href="${pageContext.request.contextPath}/Backend/User/adminLogin.jsp" style="text-decoration: none; color: #007bff; font-size: 14px;">Đăng nhập với tài khoản Admin</a>
        </div>
        <div style="text-align: center; margin-top: 20px;">
            <a href="${pageContext.request.contextPath}/Frontend/userLayout.jsp" style="text-decoration: none; color: #007bff; font-size: 14px;">Quay lại trang chủ</a>
        </div>
    </div>
</body>
</html>
