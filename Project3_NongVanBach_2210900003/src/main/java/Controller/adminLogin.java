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

@WebServlet("/Backend/User/adminLogin")
public class adminLogin extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // Kết nối đến cơ sở dữ liệu
    private Connection connect() throws SQLException, ClassNotFoundException {
        String url = "jdbc:mysql://localhost:3306/k22cnt1_nongvanbach_2210900003_project3"; 
        String user = "root";
        String password = "";  
        Class.forName("com.mysql.cj.jdbc.Driver");
        return DriverManager.getConnection(url, user, password);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Kiểm tra đăng nhập với Admin
        try {
			if (checkAdminLogin(username, password)) {
			    // Lưu thông tin người dùng vào session
			    request.getSession().setAttribute("admin", username);

			    // Chuyển hướng đến trang chủ Admin
			    response.sendRedirect("/Project3_NongVanBach_2210900003/Backend/trangChu.jsp"); // Trang chủ của Admin
			} else {
			    // Thông báo lỗi khi đăng nhập không thành công
			    request.setAttribute("errorMessage", "Tên người dùng hoặc mật khẩu không chính xác");
			    request.getRequestDispatcher("/Backend/User/adminLogin.jsp").forward(request, response);
			}
		} catch (ClassNotFoundException | IOException | ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }

    // Kiểm tra đăng nhập Admin
    private boolean checkAdminLogin(String username, String password) throws ClassNotFoundException {
        String query = "SELECT * FROM NVB_ADMIN WHERE Nvb_TaiKhoan = ? AND Nvb_MatKhau = ?";
        try (Connection conn = connect(); PreparedStatement stmt = conn.prepareStatement(query)) {
            stmt.setString(1, username);
            stmt.setString(2, password);  // So sánh mật khẩu thô
            try (ResultSet rs = stmt.executeQuery()) {
                return rs.next();  // Nếu có kết quả, tài khoản là Admin
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
}
