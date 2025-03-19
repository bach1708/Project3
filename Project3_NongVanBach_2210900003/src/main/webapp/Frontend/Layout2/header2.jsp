<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath}/Frontend/Layout2/cssHeader.css">

<div class="header">
    <div class="logo">
        <img src="${pageContext.request.contextPath}/images/logopage1.png" alt="Logo">
        User 🛒
    </div>

    <!-- Form tìm kiếm -->
    <nav>
        <form action="#" method="GET" class="search-bar" style="flex-grow: 1; display: flex; justify-content: center;">
            <input type="text" name="search" placeholder="Tìm kiếm sản phẩm..." />
            <button type="submit"><i class="fa-solid fa-magnifying-glass"></i></button>
        </form>

        <a href="${pageContext.request.contextPath}/Frontend/userLayout.jsp">Trang Chủ</a>
        <a href="${pageContext.request.contextPath}/Frontend/MuaHang/NVBListSanPham.jsp">Sản Phẩm</a>
        <a href="${pageContext.request.contextPath}/Frontend/MuaHang/NVBGioHang.jsp">Giỏ Hàng</a>

        <%
            String username = (String) session.getAttribute("username");
            if (username != null) { // Nếu đã đăng nhập
        %>
            <span class="username">Chào, <%= username %>!</span>
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
