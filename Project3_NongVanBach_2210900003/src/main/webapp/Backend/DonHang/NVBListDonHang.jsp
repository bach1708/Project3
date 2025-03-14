<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Danh Sách Đơn Hàng</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f7fc;
            padding: 20px;
            text-align: center;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            padding: 10px;
            border: 1px solid #ddd;
            text-align: center;
        }
        th {
            background-color: #007bff;
            color: white;
        }
    </style>
</head>
<body>
    <h2>Danh Sách Đơn Hàng</h2>
    <table>
        <tr>
            <th>ID Đơn Hàng</th>
            <th>Tổng Tiền</th>
            <th>Trạng Thái</th>
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
                String query = "SELECT Nvb_DonHangId, Nvb_TongTien, Nvb_TrangThai FROM NVB_DONHANG";
                stmt = conn.prepareStatement(query);
                rs = stmt.executeQuery();
                while(rs.next()) {
                    int donHangId = rs.getInt("Nvb_DonHangId");
                    int tongTien = rs.getInt("Nvb_TongTien");
                    int trangThai = rs.getInt("Nvb_TrangThai");
        %>
        <tr>
            <td><%= donHangId %></td>
            <td><%= tongTien %> VND</td>
            <td>
                <% if(trangThai == 1) { %>Đang xử lý<% } else if(trangThai == 2) { %>Hoàn thành<% } else if(trangThai == 3) { %>Đã hủy<% } else if(trangThai == 4) { %>Đang giao<% } %>
            </td>
        </tr>
        <%
                }
            } catch(Exception e) {
                out.println("<tr><td colspan='3'>Lỗi: " + e.getMessage() + "</td></tr>");
            } finally {
                if(rs != null) try { rs.close(); } catch(SQLException e) { e.printStackTrace(); }
                if(stmt != null) try { stmt.close(); } catch(SQLException e) { e.printStackTrace(); }
                if(conn != null) try { conn.close(); } catch(SQLException e) { e.printStackTrace(); }
            }
        %>
    </table>
</body>
</html>
