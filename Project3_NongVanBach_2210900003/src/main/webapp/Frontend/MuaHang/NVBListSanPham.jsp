<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="DAO.SanPhamDAO" %>
<%@ page import="Model.SanPham" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Danh Sách Sản Phẩm Văn Phòng Phẩm</title>
</head>
<body style="background-color: #d3d3d3; font-family: Arial, sans-serif; margin: 0; padding: 20px;">
<%@ include file="../Layout2/header2.jsp" %>
    <section>
        <h2 style="text-align: center;">Danh Sách Sản Phẩm</h2>
        <div style="display: grid; grid-template-columns: repeat(5, 1fr); gap: 20px; padding: 20px;">
            <% 
            // Đảm bảo sử dụng đúng DAO để kết nối với cơ sở dữ liệu của bạn
            SanPhamDAO dao = new SanPhamDAO();
            List<SanPham> sanPhamList = dao.getAllSanPham();  // Lấy tất cả sản phẩm từ DB
            
            if (sanPhamList != null && !sanPhamList.isEmpty()) {
                for (SanPham sp : sanPhamList) {
            %>
                <div style="background-color: #f9f9f9; border: 1px solid #ddd; border-radius: 8px; padding: 15px; text-align: center; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); display: flex; flex-direction: column; justify-content: space-between;">
                    <!-- Hiển thị hình ảnh sản phẩm -->
                   <img src="${pageContext.request.contextPath}/images/<%= sp.getHinhAnh() %>" alt="<%= sp.getTenSanPham() %>" style="width: 100%; height: auto; border-radius: 5px; margin-bottom: 10px;">
                    <h3 style="font-size: 18px; font-weight: bold; color: #333; margin-bottom: 10px;"><%= sp.getTenSanPham() %></h3>
                    <p style="font-size: 14px; color: #666; margin: 5px 0;">Mã: <%= sp.getSanPhamId() %></p>
                    <p style="font-size: 14px; color: #666; margin: 5px 0;">Giá: <%= sp.getGia() %> VND</p>
                    <p style="font-size: 14px; color: #666; margin: 5px 0;">Số Lượng Còn: <%= sp.getSoLuong() %> Cái</p>
                    <p style="font-size: 14px; color: #666; margin: 5px 0;">Danh Mục: <%= sp.getDanhMuc() %></p>
                    <p style="font-size: 14px; color: #666; margin: 5px 0;">Mô Tả: <%= sp.getMoTa() %></p>
                    <div style="display: flex; justify-content: center; gap: 10px; margin-top: 15px;">
					    <a href="<%= request.getContextPath() %>/NVBGioHang?action=add&id=<%= sp.getSanPhamId() %>&soLuong=1" 
					       style="text-decoration: none; padding: 8px 12px; background-color: #007bff; color: white; border-radius: 4px; transition: background-color 0.3s ease;">
					        Thêm vào giỏ
					    </a>
					</div>
                </div>
            <% 
                }
            } else { 
            %>
                <p style="text-align: center; color: #999;">Không có sản phẩm nào để hiển thị.</p>
            <% 
            } 
            %>
        </div>
        <br>	
        <div style="text-align: center; margin-top: 20px;">
            <a href="${pageContext.request.contextPath}/Backend/trangChu.jsp" style="text-decoration: none; padding: 10px 20px; background-color: #6c757d; color: white; border-radius: 5px;">Quay lại trang chủ</a>
        </div>
    </section>
    <%@ include file="../Layout2/footer2.jsp" %>    
</body>
</html>
