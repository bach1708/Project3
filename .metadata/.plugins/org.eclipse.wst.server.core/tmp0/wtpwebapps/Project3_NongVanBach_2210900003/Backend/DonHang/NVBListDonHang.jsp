<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Danh Sách Đơn Hàng</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Backend/DonHang/cssListDonHang.css">
</head>
<body>
    <h2>Danh Sách Đơn Hàng</h2>
    <table>
        <tr>
            <th>ID Đơn Hàng</th>
            <th>Tên Khách Hàng</th>
            <th>Tổng Tiền</th>
            <th>Trạng Thái</th>
            <th>Thao Tác</th> 
        </tr>
        <%
            // Kết nối đến CSDL
            String url = "jdbc:mysql://localhost:3306/k22cnt1_nongvanbach_2210900003_project3?useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=UTC";
            String dbUser = "root";
            String dbPassword = "";
            Connection conn = null;
            PreparedStatement stmt = null;
            ResultSet rs = null;
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                conn = DriverManager.getConnection(url, dbUser, dbPassword);
                // Sử dụng LEFT JOIN để lấy tên khách hàng (TenKhachHang) từ bảng NVB_KHACHHANG
                String query = "SELECT dh.Nvb_DonHangId, kh.Nvb_HoTen AS TenKhachHang, dh.Nvb_TongTien, dh.Nvb_TrangThai " +
                               "FROM NVB_DONHANG dh " +
                               "LEFT JOIN NVB_KHACHHANG kh ON dh.Nvb_KhachHangId = kh.Nvb_KhachHangId";
                stmt = conn.prepareStatement(query);
                rs = stmt.executeQuery();
                while(rs.next()) {
                    int donHangId = rs.getInt("Nvb_DonHangId");
                    String tenKhachHang = rs.getString("TenKhachHang");
                    if(tenKhachHang == null || tenKhachHang.trim().isEmpty()){
                        tenKhachHang = "Khách vãng lai";
                    }
                    int tongTien = rs.getInt("Nvb_TongTien");
                    int trangThai = rs.getInt("Nvb_TrangThai");
        %>
        <tr>
            <td><%= donHangId %></td>
            <td><%= tenKhachHang %></td>
            <td><%= tongTien %> VND</td>
            <td>
                <% if(trangThai == 1) { %>Đang xử lý
                   <% } else if(trangThai == 2) { %>Hoàn thành
                   <% } else if(trangThai == 3) { %>Đã hủy
                   <% } else if(trangThai == 4) { %>Đang giao
                <% } %>
            </td>
            <td>
                <a href="#" onclick="alert('Chức năng đang bảo trì!'); return false;" class="btn-edit">Sửa</a>
                <a href="#" onclick="alert('Chức năng đang bảo trì!'); return false;" class="btn-delete">Xóa</a>
            </td>
        </tr>
        <%
                }
            } catch(Exception e) {
                out.println("<tr><td colspan='5'>Lỗi: " + e.getMessage() + "</td></tr>");
            } finally {
                if(rs != null) try { rs.close(); } catch(SQLException e) { e.printStackTrace(); }
                if(stmt != null) try { stmt.close(); } catch(SQLException e) { e.printStackTrace(); }
                if(conn != null) try { conn.close(); } catch(SQLException e) { e.printStackTrace(); }
            }
        %>
    </table>

    <a href="${pageContext.request.contextPath}/Backend/trangChu.jsp" class="btn-back">Quay lại trang chủ</a>
</body>
</html>
