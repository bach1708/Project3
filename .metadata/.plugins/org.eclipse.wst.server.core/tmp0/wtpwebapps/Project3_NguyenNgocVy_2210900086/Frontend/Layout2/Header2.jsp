<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
    <style>
    /* Đổi màu nền navbar thành trắng */
.navbar {
    background-color: #f8f9fa !important; /* Màu trắng đậm */
    border-bottom: 2px solid #ddd; /* Viền dưới để tạo sự phân biệt */
}

/* Đổi màu chữ thành đen để dễ nhìn trên nền trắng */
.navbar .nav-link {
    color: #333 !important;
    font-weight: bold;
}

/* Khi hover, đổi màu chữ */
.navbar .nav-link:hover {
    color: #d9230f !important; /* Màu đỏ khi di chuột vào */
}
    
    .navbar-brand img {
    border-radius: 50%; /* Bo tròn hoàn toàn */
    width: 50px; /* Giữ kích thước hợp lý */
    height: 50px; 
    object-fit: cover; /* Cắt hình ảnh vừa khung tròn */
    border: 2px solid #ddd; /* Thêm viền nhẹ */
}
    
    </style>
</head>
<body>
    <header class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container">
            <!-- Logo -->
            <a class="navbar-brand" href="${pageContext.request.contextPath}/Frontend/Home.jsp">
                <img src="${pageContext.request.contextPath}/images/logo.jpg" alt="Logo" height="50">
            </a>

            <!-- Thanh tìm kiếm -->
			<form class="d-flex mx-auto w-50" action="timkiem.jsp" method="GET">
			    <input class="form-control me-2 flex-grow-1" type="search" name="query" placeholder="Tìm kiếm" aria-label="Search">
			    <button class="btn btn-outline-danger" type="submit">
			        <i class="fas fa-search"></i>
			    </button>
			</form>	


            <!-- Giỏ hàng -->
            <a href="${pageContext.request.contextPath}/giohang.jsp" class="btn btn-outline-dark">
                <i class="fas fa-shopping-cart"></i> Giỏ hàng
            </a>
        </div>
    </header>

    <!-- Menu điều hướng -->
<nav class="navbar navbar-expand-lg bg-white">
    <div class="container">
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav gap-4"> <%-- Thêm gap-4 để giãn cách --%>
                <li class="nav-item mx-3">
                    <a class="nav-link active" href="${pageContext.request.contextPath}/Frontend/Home.jsp">
                        <i class="fas fa-home"></i> Trang chủ
                    </a>
                </li>
                <li class="nav-item mx-3">
                    <a class="nav-link" href="${pageContext.request.contextPath}/gioithieu.jsp">Giới thiệu</a>
                </li>
                <li class="nav-item dropdown mx-3">
                    <a class="nav-link dropdown-toggle" href="#" id="sanPhamDropdown" role="button" data-bs-toggle="dropdown">
                        Sản phẩm
                    </a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="${pageContext.request.contextPath}/sanpham.jsp">Tất cả sản phẩm</a></li>
                        <li><a class="dropdown-item" href="${pageContext.request.contextPath}/sanpham.jsp?loai=caphe">Cà phê</a></li>
                        <li><a class="dropdown-item" href="${pageContext.request.contextPath}/sanpham.jsp?loai=tratai">Trà & Tại</a></li>
                    </ul>
                </li>
                <li class="nav-item mx-3">
                    <a class="nav-link" href="${pageContext.request.contextPath}/chinh-sach-van-chuyen.jsp">Chính sách vận chuyển</a>
                </li>
                <li class="nav-item mx-3">
                    <a class="nav-link" href="${pageContext.request.contextPath}/chinh-sach-bao-mat.jsp">Chính sách bảo mật</a>
                </li>
            </ul>
        </div>
    </div>
</nav>


    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
