<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Cập Nhật Sản Phẩm</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/Backend/SanPham/cssUpdateSanPham.css">
</head>
<body>

<div class="body">
    <section class="form-container">
        <h2>Cập Nhật Sản Phẩm</h2>
        
        <form action="${pageContext.request.contextPath}/Backend/SanPham/updateSanPham" method="post">
            <input type="hidden" name="sanPhamId" value="${sanPham.sanPhamId}">

            <label for="tenSanPham">Tên Sản Phẩm:</label>
            <input type="text" id="tenSanPham" name="tenSanPham" value="${sanPham.tenSanPham}" required>

            <label for="moTa">Mô Tả:</label>
            <textarea id="moTa" name="moTa" required>${sanPham.moTa}</textarea>

            <label for="hinhAnh">Hình Ảnh (Tên hình ảnh):</label>
            <input type="text" id="hinhAnh" name="hinhAnh" value="${sanPham.hinhAnh}" required>

            <label for="gia">Giá (VND):</label>
            <input type="number" id="gia" name="gia" value="${sanPham.gia}" required>

            <label for="soLuong">Số Lượng:</label>
            <input type="number" id="soLuong" name="soLuong" value="${sanPham.soLuong}" required>

            <label for="danhMuc">Danh Mục:</label>
            <input type="text" id="danhMuc" name="danhMuc" value="${sanPham.danhMuc}" required>

            <button type="submit" style="width: 100%; padding: 10px; background-color: #28a745; color: white; border: none; border-radius: 4px; font-size: 16px; cursor: pointer;">
                Cập Nhật
            </button>

            <!-- Link về Trang Danh Sách -->
            <a href="${pageContext.request.contextPath}/Backend/SanPham/listSanPham.jsp" style="display: block; margin-top: 20px; text-align: center; font-size: 14px; color: #007bff; text-decoration: none;">
                Về Trang Danh Sách
            </a>
        </form>
    </section>
</div>
<%@ include file="../Layout/footer.jsp" %>
</body>
</html>


