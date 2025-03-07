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
    .search-bar input {
        padding: 8px;
        border: none;
        border-radius: 5px;
        width: 300px;
        outline: none;
        background-color: #dcdcdc;
        color: black;
    }
    .search-bar button {
        margin-left: 5px;
        padding: 8px 15px;
        background-color: red;
        color: #007bff;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }
</style>

<div class="header">
    <div class="logo">
        <img src="${pageContext.request.contextPath}/images/logopage1.png" alt="Logo">
        Adminator 🖊
    </div>

    <!-- Form tìm kiếm -->
    <nav>
        <form action="#" method="GET" class="search-bar" style="flex-grow: 1; display: flex; justify-content: center;">
            <input type="text" name="search" placeholder="Tìm kiếm sản phẩm..." />
            <button type="submit">🔍</button>
        </form>
        
        <a href="${pageContext.request.contextPath}/Backend/trangChu.jsp">Trang Chủ</a>
        <a href="#" onclick="alert('Chức năng đang bảo trì!'); return false;">Thành Viên</a>
        <a href="${pageContext.request.contextPath}/Backend/SanPham/listSanPham.jsp">Sản Phẩm</a>
        <a href="#" onclick="alert('Chức năng đang bảo trì!'); return false;">Hóa Đơn</a>

        <%
            String username = (String) session.getAttribute("username");
            if (username != null) { // Nếu đã đăng nhập
        %>
            <span>Chào, <%= username %>!</span> <!-- Hiển thị tên người dùng -->
            <a href="<%= request.getContextPath() + "/Backend/User/logout" %>" style="padding: 10px; background-color: #ff4d4d; color: white; border-radius: 4px;">Đăng Xuất</a>
        <%
            } else { // Nếu chưa đăng nhập
        %>
            <a href="<%= request.getContextPath() + "/Backend/User/userLogin.jsp" %>" style="padding: 10px; background-color: #4CAF50; color: white; border-radius: 4px;">Đăng Nhập</a>
        <%
            }
        %>
    </nav>
</div>
