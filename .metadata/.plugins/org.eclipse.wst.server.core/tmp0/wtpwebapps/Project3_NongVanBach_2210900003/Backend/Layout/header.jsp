<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<style>
    .header {
        display: flex;
        align-items: center;
        justify-content: space-between;
        background: #f8f9fa; /* Màu trắng đậm hơn */
        padding: 10px 15px; /* Giảm chiều rộng thanh */
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        position:sticky;
        top: 0;
    }
    .header .logo {
        display: flex;
        align-items: center;
        font-size: 20px; /* Nhỏ hơn một chút */
        font-weight: bold;
        color: #333;
        white-space: nowrap;
    }
    .header .logo img {
        height: 35px; /* Giảm kích thước logo */
        margin-right: 8px;
        border-radius: 50%; /* Bo tròn logo */
        object-fit: cover; /* Đảm bảo hình ảnh không bị méo */
    }
    .header nav {
        display: flex;
        align-items:center;
        justify-content:space-between;
        /* gap: 12px; /* Giảm khoảng cách giữa các menu */ */
    }
     .header nav span {
    font-weight: bold;
    }
    .header nav a {
        text-decoration: none;
        color: #333;
        font-size: 15px; /* Nhỏ hơn một chút */
        font-weight: 500;
        padding: 6px 10px; /* Giảm padding của menu */
        transition: all 0.3s;
        justify-items:center;
        align-items:center;
        
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
        background-color: #fff;
        color: #007bff;
        border-color: black;
        border-radius: 10px;
        cursor: pointer;
    }
    .fa-solid fa-magnifying-glass{
    	color: #fff;
    }
    .username{
    margin-right:10px;color:black;transition: 0.2s ease-in-out;
    }
        .username:hover{
    color:red;
    }
</style>
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css" rel="stylesheet">
<div class="header">
    <div class="logo">
        <img src="${pageContext.request.contextPath}/images/logopage1.png" alt="Logo" text-alight:center;> 
        Admin 🖊
    </div>

    <!-- Form tìm kiếm -->
    <nav>
        <form action="#" method="GET" class="search-bar" style="flex-grow: 1; display: flex; justify-content: center;">
            <input type="text" name="search" placeholder="Tìm kiếm sản phẩm..." />
            <button type="submit"><i class="fa-solid fa-magnifying-glass" style="color:"  ></i></button>
        </form>
        
        <a href="${pageContext.request.contextPath}/Backend/trangChu.jsp">Trang Chủ</a>
        <a href="#" onclick="alert('Chức năng đang bảo trì!'); return false;">Danh Sách Thành Viên</a>
        <a href="${pageContext.request.contextPath}/Backend/SanPham/listSanPham.jsp"> Danh Sách Sản Phẩm</a>
         <a href="${pageContext.request.contextPath}/Backend/DonHang/NVBListDonHang.jsp">Danh Sách Đơn Hàng</a>

        <%
            String username = (String) session.getAttribute("admin");
            if (username != null) { // Nếu đã đăng nhập
        %>
            <span class= "username">Chào, <%= username %>!</span> <!-- Hiển thị tên người dùng -->
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
