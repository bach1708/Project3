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

<%@ include file="../Layout2/header2.jsp" %>
    <section>
        <h2 class="title" style=padding-top:70px;>Danh Sách Sản Phẩm</h2>
        <div class="product-container">
            <% 
            SanPhamDAO dao = new SanPhamDAO();
            List<SanPham> sanPhamList = dao.getAllSanPham();  
            
            if (sanPhamList != null && !sanPhamList.isEmpty()) {
                for (SanPham sp : sanPhamList) {
            %>
                <div class="product-card">
                    <img src="${pageContext.request.contextPath}/images/<%= sp.getHinhAnh() %>" alt="<%= sp.getTenSanPham() %>" class="product-image">
                    <h3 class="product-title"><%= sp.getTenSanPham() %></h3>
                    <p class="product-info">Mã: <%= sp.getSanPhamId() %></p>
                    <p class="product-info">Giá: <%= sp.getGia() %> VND</p>
                    <p class="product-info">Số Lượng Còn: <%= sp.getSoLuong() %> Cái</p>
                    <p class="product-info">Danh Mục: <%= sp.getDanhMuc() %></p>
                    <p class="product-info">Mô Tả: <%= sp.getMoTa() %></p>
                    <div class="button-container">
					    <a href="<%= request.getContextPath() %>/NVBGioHang?action=add&id=<%= sp.getSanPhamId() %>&soLuong=1" class="add-to-cart">
					        Thêm vào giỏ
					    </a>
					</div>
                </div>
            <% 
                }
            } else { 
            %>
                <p class="no-product">Không có sản phẩm nào để hiển thị.</p>
            <% 
            } 
            %>
        </div>
        <br>	
        <div class="back-container">
            <a href="${pageContext.request.contextPath}/Backend/trangChu.jsp" class="btn-back">Quay lại trang chủ</a>
        </div>
    </section>
    <%@ include file="../Layout2/footer2.jsp" %>    
</body>
</html>
