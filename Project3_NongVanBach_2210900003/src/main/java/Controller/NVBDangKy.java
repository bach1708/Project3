package Controller;

import DAO.NVBKhachHangDAO;
import Model.NVBKhachHang;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 * Servlet implementation class NVBDangKy
 */
@WebServlet("/NVBDangKy")
public class NVBDangKy extends HttpServlet {@Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Thiết lập mã hóa UTF-8 cho request
        request.setCharacterEncoding("UTF-8");
        
        // Lấy dữ liệu từ form đăng ký
        String taiKhoan = request.getParameter("taiKhoan");
        String hoTen = request.getParameter("hoTen");
        String soDienThoai = request.getParameter("soDienThoai");
        String diaChi = request.getParameter("diaChi");
        String email = request.getParameter("email");
        String matKhau = request.getParameter("matKhau");
        
        // Tạo đối tượng NVBKhachHang (Model)
        NVBKhachHang kh = new NVBKhachHang();
        kh.setTaiKhoan(taiKhoan);
        kh.setHoTen(hoTen);
        kh.setSoDienThoai(soDienThoai);
        kh.setDiaChi(diaChi);
        kh.setEmail(email);
        kh.setMatKhau(matKhau);
        
        // Gọi DAO để thực hiện đăng ký thành viên
        NVBKhachHangDAO khDAO = new NVBKhachHangDAO();
        boolean success = khDAO.NVBDangKy(kh);
        
        // Chuyển hướng tùy vào kết quả đăng ký
        if (success) {
            // Nếu đăng ký thành công, chuyển đến trang đăng nhập
            response.sendRedirect("Backend/User/userLogin.jsp");
        } else {
            // Nếu đăng ký thất bại, thông báo lỗi
            response.getWriter().println("Đăng ký thất bại! Vui lòng thử lại.");
        }
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Khi truy cập bằng GET, chuyển hướng về form đăng ký
        request.getRequestDispatcher("WEB-INF/views/NVBDangKyUser.jsp").forward(request, response);
    }
}