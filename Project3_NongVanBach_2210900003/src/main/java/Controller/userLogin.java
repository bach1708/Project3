package Controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Backend/User/userLogin")
public class userLogin extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // Kết nối đến cơ sở dữ liệu
    private Connection connect() throws SQLException {
        String url = "jdbc:mysql://localhost:3306/k22cnt1_nongvanbach_2210900003_project3"; 
        String user = "root";
        String password = "";  
        return DriverManager.getConnection(url, user, password);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Kiểm tra đăng nhập với User
        if (checkUserLogin(username, password)) {
            // Lưu tên người dùng vào session nếu đăng nhập thành công
            request.getSession().setAttribute("username", username);

            // Chuyển hướng đến trang dành cho User
            response.sendRedirect("/Project3_NongVanBach_2210900003/Frontend/userLayout.jsp"); // Trang dành cho User
        } else {
            request.setAttribute("errorMessage", "Tên người dùng hoặc mật khẩu không chính xác");
            request.getRequestDispatcher("/Backend/User/userLogin.jsp").forward(request, response);
        }
    }

    // Kiểm tra đăng nhập User
    private boolean checkUserLogin(String username, String password) {
        String query = "SELECT * FROM NVB_KHACHHANG WHERE Nvb_TaiKhoan = ? AND Nvb_MatKhau = ?";
        try (Connection conn = connect(); PreparedStatement stmt = conn.prepareStatement(query)) {
            stmt.setString(1, username);
            stmt.setString(2, password);  // So sánh mật khẩu thô
            try (ResultSet rs = stmt.executeQuery()) {
                return rs.next();  // Nếu có kết quả, tài khoản là User
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
}
