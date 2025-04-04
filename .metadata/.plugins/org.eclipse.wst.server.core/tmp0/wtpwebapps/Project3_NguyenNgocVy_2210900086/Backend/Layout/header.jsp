<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<style>
    .header {
        display: flex;
        align-items: center;
        justify-content: space-between;
        background: #f8f9fa; /* Màu trắng đậm hơn */
        padding: 10px 15px; /* Giảm chiều rộng thanh */
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    }
    .header .logo {
        display: flex;
        align-items: center;
        font-size: 20px; /* Nhỏ hơn một chút */
        font-weight: bold;
        color: #333;
    }
    .header .logo img {
        height: 35px; /* Giảm kích thước logo */
        margin-right: 8px;
        border-radius: 50%; /* Bo tròn logo */
        object-fit: cover; /* Đảm bảo hình ảnh không bị méo */
    }
    .header nav {
        display: flex;
        gap: 12px; /* Giảm khoảng cách giữa các menu */
    }
    .header nav a {
        text-decoration: none;
        color: #333;
        font-size: 15px; /* Nhỏ hơn một chút */
        font-weight: 500;
        padding: 6px 10px; /* Giảm padding của menu */
        transition: all 0.3s;
    }
    .header nav a:hover {
        color: #007bff;
    }
</style>

<div class="header">
    <div class="logo">
        <img src="${pageContext.request.contextPath}/images/logo.jpg" alt="Logo">
        Adminator
    </div>
    <nav>
        <a href="${pageContext.request.contextPath}/Backend/trangchu.jsp">Trang Chủ</a>
    	<a href="${pageContext.request.contextPath}/Backend/NhanVien/listNhanVien.jsp">Nhân Viên</a>
    	<a href="${pageContext.request.contextPath}/Backend/SanPham/listSanPham.jsp">Sản Phẩm</a>
        <a href="#" onclick="alert('Chức năng đang bảo trì!'); return false;">Hóa Đơn</a>
		<a href="#" onclick="alert('Chức năng đang bảo trì!'); return false;">Đăng Nhập</a>

    </nav>
</div>
