<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Thêm Sản Phẩm Văn Phòng Phẩm</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/Backend/SanPham/cssAddSanPham.css">
</head>
<body>

    <div class="form-container">
        <h2>Thêm Sản Phẩm Văn Phòng Phẩm</h2>
        <form action="${pageContext.request.contextPath}/Backend/SanPham/addSanPham" method="POST">
            <!-- Tên Sản Phẩm -->
            <label for="tenSanPham">Tên Sản Phẩm:</label>
            <input type="text" id="tenSanPham" name="tenSanPham" required>

            <!-- Mô Tả -->
            <label for="moTa">Mô Tả:</label>
            <textarea id="moTa" name="moTa" required></textarea>

            <!-- Hình Ảnh -->
            <label for="hinhAnh">Hình Ảnh (Tên hình ảnh):</label>
            <input type="text" id="hinhAnh" name="hinhAnh" required>

            <!-- Giá -->
            <label for="gia">Giá (VND):</label>
            <input type="number" id="gia" name="gia" required>

            <!-- Số Lượng -->
            <label for="soLuong">Số Lượng:</label>
            <input type="number" id="soLuong" name="soLuong" required>

            <!-- Danh Mục -->
            <label for="danhMuc">Danh Mục:</label>
            <input type="text" id="danhMuc" name="danhMuc" required>

            <!-- Nút Thêm Sản Phẩm -->
            <button type="submit">Thêm Sản Phẩm</button>
        </form>
    </div>

</body>
</html>
