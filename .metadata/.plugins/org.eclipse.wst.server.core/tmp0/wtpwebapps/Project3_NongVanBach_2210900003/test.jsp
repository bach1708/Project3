<%@ page import="java.sql.Connection, java.sql.DriverManager, java.sql.SQLException" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Kiểm tra kết nối MySQL</title>
    <style>
        body { font-family: Arial, sans-serif; text-align: center; padding: 50px; }
        .success { color: green; font-weight: bold; }
        .error { color: red; font-weight: bold; }
    </style>
</head>
<body>

<h2>🔍 Kiểm tra kết nối đến MySQL</h2>

<%
    String url = "jdbc:mysql://localhost:3306/k22cnt1_nongvanbach_2210900003_project3?useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=UTC";
    String username = "root";
    String password = "";

    try {
        // Load MySQL JDBC Driver
        Class.forName("com.mysql.cj.jdbc.Driver");

        // Kết nối đến CSDL
        Connection conn = DriverManager.getConnection(url, username, password);

        if (conn != null) {
%>
        <p class="success">✅ Kết nối đến CSDL thành công!</p>
<%
            conn.close(); // Đóng kết nối
        }
    } catch (ClassNotFoundException e) {
%>
        <p class="error">❌ Lỗi: Không tìm thấy Driver MySQL.</p>
        <p><%= e.getMessage() %></p>
<%
    } catch (SQLException e) {
%>
        <p class="error">❌ Lỗi kết nối CSDL!</p>
        <p><%= e.getMessage() %></p>
<%
    }
%>

</body>
</html>
