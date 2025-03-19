<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Thêm Sản Phẩm Văn Phòng Phẩm</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            padding: 20px;
        }
        .form-container {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 8px;
            background-color: #f9f9f9;
        }
        .form-container h2 {
            text-align: center;
            margin-bottom: 20px;
        }
        label {
            font-weight: bold;
            margin-top: 10px;
        }
        input, textarea {
            width: 100%;
            padding: 8px;
            margin: 8px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        textarea {
            height: 100px;
            resize: none;
        }
        button {
            width: 100%;
            padding: 10px;
            background-color: #28a745;
            color: white;
            border: none;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
        }
        button:hover {
            background-color: #218838;
        }
    </style>
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
