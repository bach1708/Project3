<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cửa Hàng Văn Phòng Phẩm Online</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Frontend/css2/formuser.css">
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

</head>
<body>
<div class="top-nav">
    <%@ include file="Layout2/header2.jsp" %>
   </div>
<div class="body">
    <!-- Header -->   
    <header >
     <h1>-------------------</h1>
        <h1>🖊 Cửa Hàng Văn Phòng Phẩm Nhà Bách</h1>
        <p>Chất lượng - Tiện lợi - Giá tốt</p>
    </header>

    <section class="container-slideshow">
        <div style="display: flex; width: 500%; height: 100%; animation: slide 26s infinite;">
            <div><img src="${pageContext.request.contextPath}/images/biapage1.jpg" alt="Hình 1"></div>
            <div><img src="${pageContext.request.contextPath}/images/biapage2.jpg" alt="Hình 2"></div>
            <div><img src="${pageContext.request.contextPath}/images/biapage3.png" alt="Hình 3"></div>
            <div><img src="${pageContext.request.contextPath}/images/biapage4.jpg" alt="Hình 4"></div>
            <div><img src="${pageContext.request.contextPath}/images/biapage5.jpg" alt="Hình 5"></div>
        </div>
    </section>

    <section class="content-section mt-3">
        <div class="left">
            <h2>Giới Thiệu Cửa Hàng</h2>
            <p>
                Chào mừng bạn đến với <strong>Văn Phòng Phẩm Online</strong> - địa chỉ đáng tin cậy chuyên cung cấp đa dạng các sản phẩm văn phòng phẩm với chất lượng cao, đáp ứng mọi nhu cầu từ học tập đến công việc văn phòng.
            </p>
            <p>
                Chúng tôi cam kết mang đến những sản phẩm tốt nhất với **giá cả hợp lý**, hỗ trợ tối đa cho cá nhân, doanh nghiệp và trường học trong việc sử dụng các dụng cụ văn phòng thiết yếu.
                Với phương châm <strong>"Chất lượng - Tiện lợi - Giá tốt"</strong>, cửa hàng chúng tôi không ngừng đổi mới, cập nhật các sản phẩm mới nhất để đáp ứng xu hướng tiêu dùng hiện đại.
            </p>
            <p>
                Với hơn **5 năm kinh nghiệm**, chúng tôi tự hào là nhà cung cấp **sỉ và lẻ** các sản phẩm văn phòng phẩm chất lượng cao, phục vụ hàng nghìn khách hàng trên toàn quốc.
            </p>
            <p><strong>Chúng tôi cung cấp:</strong></p>
            <ul>
                <li>✏ <strong>Bút các loại:</strong> Bút bi, bút chì, bút dạ quang, bút lông bảng, bút máy.</li>
                <li>📖 <strong>Giấy - Vở:</strong> Vở học sinh, sổ ghi chú, giấy in A4, A5, giấy màu, giấy mỹ thuật.</li>
                <li>📏 <strong>Dụng cụ học tập:</strong> Thước kẻ, compa, bảng vẽ, dụng cụ đo lường.</li>
                <li>📌 <strong>Văn phòng phẩm:</strong> Kẹp giấy, hồ dán, băng keo, ghim bấm, kéo cắt giấy.</li>
                <li>💼 <strong>Hồ sơ - Lưu trữ:</strong> Bìa hồ sơ, file tài liệu, túi đựng giấy tờ, kẹp ghim.</li>
                <li>📂 <strong>Đồ dùng văn phòng:</strong> Máy tính cầm tay, bấm kim, bảng ghi chú, sticker văn phòng.</li>
            </ul>
            <p>
                Bên cạnh đó, chúng tôi luôn có **chính sách ưu đãi đặc biệt** cho khách hàng đặt hàng số lượng lớn, hỗ trợ giao hàng nhanh chóng, tiện lợi.
                Nếu bạn đang tìm kiếm một địa chỉ mua sắm văn phòng phẩm uy tín, hãy để **Văn Phòng Phẩm Online** đồng hành cùng bạn!
            </p>
        </div>


        <div class="right">
            <h3>Có thể bạn sẽ thích</h3>
    
		    <div class="suggestions">
		        <div class="suggestion-item">
		        <div class="hot-label">hot</div>
		            <a href="${pageContext.request.contextPath}/Frontend/MuaHang/NVBListSanPham.jsp">
		                <img src="${pageContext.request.contextPath}/images/butbi.jpg" alt="Sản phẩm Hot 1">
		                <p>Mua ngay</p>
		            </a>
		        </div>
		        <div class="suggestion-item">
		        <div class="hot-label">hot</div>
		            <a href="${pageContext.request.contextPath}/Frontend/MuaHang/NVBListSanPham.jsp">
		                <img src="${pageContext.request.contextPath}/images/bangtrang.jpg" alt="Sản phẩm Hot 1">
		                <p>Mua ngay</p>
		            </a>
		        </div>
		       <div class="suggestion-item">
		        <div class="hot-label">hot</div>
		            <a href="${pageContext.request.contextPath}/Frontend/MuaHang/NVBListSanPham.jsp">
		                <img src="${pageContext.request.contextPath}/images/sotay.jpg" alt="Sản phẩm Hot 1">
		                <p>Mua ngay</p>
		            </a>
		        </div>
		        
		    </div>
        </div>
    </section>
</div>
    <%@ include file="Layout2/footer2.jsp" %>
</body>
</html>
