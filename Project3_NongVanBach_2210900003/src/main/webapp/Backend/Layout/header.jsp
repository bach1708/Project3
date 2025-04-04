<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/Backend/Layout/cssHeader.css">
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
