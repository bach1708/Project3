<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="DAO.SanPhamDAO" %>
<%@ page import="Model.SanPham" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Danh Sách Sản Phẩm Văn Phòng Phẩm</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/Frontend/MuaHang/cssListSanPham.css">
</head>
<body>
<div class="top-nav">
    <%@ include file="../Layout/header.jsp" %>
</div>
<div class="body">
    <section>
    <div class="h2" style=padding-top:70px;><h2>Danh Sách Sản Phẩm</h2></div>
    
        
        <div class="product-container">
            <% 
            SanPhamDAO dao = new SanPhamDAO();
            List<SanPham> sanPhamList = dao.getAllSanPham();
            
            if (sanPhamList != null && !sanPhamList.isEmpty()) {
                for (SanPham sp : sanPhamList) {
            %>
                <div class="product-card">
                    <img src="${pageContext.request.contextPath}/images/<%= sp.getHinhAnh() %>" alt="<%= sp.getTenSanPham() %>">
                    <h3 class="product-title"><%= sp.getTenSanPham() %></h3>
                    <p class="product-info">Mã: <%= sp.getSanPhamId() %></p>
                    <p class="product-info">Giá: <%= sp.getGia() %> VND</p>
                    <p class="product-info">Số Lượng Còn: <%= sp.getSoLuong() %> Cái</p>
                    <p class="product-info">Danh Mục: <%= sp.getDanhMuc() %></p>
                    <p class="product-info">Mô Tả: <%= sp.getMoTa() %> </p>
                    <div class="button-group">
                        <a href="updateSanPham?sanPhamId=<%= sp.getSanPhamId() %>" class="btn-edit">Sửa</a>
                        <a href="deleteSanPham?sanPhamId=<%= sp.getSanPhamId() %>" class="btn-delete" onclick="return confirm('Bạn có chắc chắn muốn xóa?')">Xóa</a>
                    </div>
                </div>
            <% 
                }
            } else { 
            %>
                <p>Không có sản phẩm nào để hiển thị.</p>
            <% } %>
        </div>
        <br>
        <div class="button-group">
            <a href="addSanPham.jsp" class="btn-add">Thêm Sản Phẩm</a>
            <a href="${pageContext.request.contextPath}/Backend/trangChu.jsp" class="btn-back">Quay lại trang chủ</a>
        </div>
    </section>
</div>
<%@ include file="../Layout/footer.jsp" %>    
</body>
</html>
