<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Cập Nhật Sản Phẩm</title>
</head>
<body style="font-family: Arial, sans-serif; background-color: #f4f4f4; margin: 0; padding: 0;">
<%@ include file="../Layout/header.jsp" %>

    <section style="max-width: 600px; width: 100%; padding: 20px; margin: 20px auto; border: 1px solid #ddd; border-radius: 8px; background-color: #fff;">
        <h2 style="text-align: center; margin-bottom: 20px; color: #333;">Cập Nhật Sản Phẩm</h2>
        
        <form action="${pageContext.request.contextPath}/Backend/SanPham/updateSanPham" method="post" style="max-width: 100%; display: block;">
            <input type="hidden" name="sanPhamId" value="${sanPham.sanPhamId}">

            <!-- Tên Sản Phẩm -->
            <label for="tenSanPham" style="font-weight: bold; display: block; margin: 10px 0 5px;">Tên Sản Phẩm:</label>
            <input type="text" id="tenSanPham" name="tenSanPham" value="${sanPham.tenSanPham}" required style="width: 100%; padding: 8px; margin-bottom: 15px; border: 1px solid #ccc; border-radius: 4px;">

            <!-- Mô Tả -->
            <label for="moTa" style="font-weight: bold; display: block; margin: 10px 0 5px;">Mô Tả:</label>
            <textarea id="moTa" name="moTa" required style="width: 100%; padding: 8px; margin-bottom: 15px; border: 1px solid #ccc; border-radius: 4px; height: 100px; resize: none;">${sanPham.moTa}</textarea>

            <!-- Hình Ảnh -->
            <label for="hinhAnh" style="font-weight: bold; display: block; margin: 10px 0 5px;">Hình Ảnh (Tên hình ảnh):</label>
            <input type="text" id="hinhAnh" name="hinhAnh" value="${sanPham.hinhAnh}" required style="width: 100%; padding: 8px; margin-bottom: 15px; border: 1px solid #ccc; border-radius: 4px;">

            <!-- Giá -->
            <label for="gia" style="font-weight: bold; display: block; margin: 10px 0 5px;">Giá (VND):</label>
            <input type="number" id="gia" name="gia" value="${sanPham.gia}" required style="width: 100%; padding: 8px; margin-bottom: 15px; border: 1px solid #ccc; border-radius: 4px;">

            <!-- Số Lượng -->
            <label for="soLuong" style="font-weight: bold; display: block; margin: 10px 0 5px;">Số Lượng:</label>
            <input type="number" id="soLuong" name="soLuong" value="${sanPham.soLuong}" required style="width: 100%; padding: 8px; margin-bottom: 15px; border: 1px solid #ccc; border-radius: 4px;">

            <!-- Danh Mục -->
            <label for="danhMuc" style="font-weight: bold; display: block; margin: 10px 0 5px;">Danh Mục:</label>
            <input type="text" id="danhMuc" name="danhMuc" value="${sanPham.danhMuc}" required style="width: 100%; padding: 8px; margin-bottom: 15px; border: 1px solid #ccc; border-radius: 4px;">

            <!-- Nút Cập Nhật -->
            <button type="submit" style="width: 100%; padding: 10px; background-color: #28a745; color: white; border: none; border-radius: 4px; font-size: 16px; cursor: pointer;">
                Cập Nhật
            </button>

            <!-- Link về Trang Danh Sách -->
            <a href="${pageContext.request.contextPath}/Backend/SanPham/listSanPham.jsp" style="display: block; margin-top: 20px; text-align: center; font-size: 14px; color: #007bff; text-decoration: none;">
                Về Trang Danh Sách
            </a>
        </form>
    </section>

<%@ include file="../Layout/footer.jsp" %>

</body>
</html>
