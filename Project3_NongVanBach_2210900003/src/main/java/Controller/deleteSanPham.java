package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.SanPhamDAO;  // Sử dụng SanPhamDAO thay vì CoffeDAO

@WebServlet("/Backend/SanPham/deleteSanPham")
public class deleteSanPham extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private SanPhamDAO sanPhamDao; // Đổi thành SanPhamDAO

    public void init() {
        sanPhamDao = new SanPhamDAO();  // Khởi tạo SanPhamDAO
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Lấy tham số sanPhamId từ URL (thay thế maSP bằng sanPhamId)
        String sanPhamIdStr = request.getParameter("sanPhamId");
        
        if (sanPhamIdStr != null) {
            try {
                int sanPhamId = Integer.parseInt(sanPhamIdStr);  // Chuyển đổi sang int
                sanPhamDao.deleteSanPham(sanPhamId);  // Gọi phương thức xóa sản phẩm với sanPhamId
            } catch (NumberFormatException e) {
                e.printStackTrace();  // Nếu có lỗi khi chuyển đổi số
            }
        }
        
        // Sau khi xóa, chuyển hướng người dùng về trang danh sách sản phẩm
        response.sendRedirect("listSanPham.jsp");
    }
}
