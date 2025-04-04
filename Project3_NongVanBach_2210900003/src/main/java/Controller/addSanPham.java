package Controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.SanPhamDAO; // Sử dụng DAO của bạn
import Model.SanPham;   // Lớp SanPham tương ứng với cơ sở dữ liệu của bạn

@WebServlet("/Backend/SanPham/addSanPham")
public class addSanPham extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private SanPhamDAO sanPhamDao;

    public void init() {
        sanPhamDao = new SanPhamDAO(); // Sử dụng DAO đúng của bạn
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");

        // Lấy các tham số từ form
        String tenSanPham = request.getParameter("tenSanPham");
        String moTa = request.getParameter("moTa");
        String hinhAnh = request.getParameter("hinhAnh");
        int gia = 0;
        int soLuong = 0;
        String danhMuc = request.getParameter("danhMuc");

        // Kiểm tra và chuyển đổi gia từ chuỗi sang số
        String giaString = request.getParameter("gia");
        if (giaString != null && !giaString.trim().isEmpty()) {
            try {
                gia = Integer.parseInt(giaString);
            } catch (NumberFormatException e) {
                e.printStackTrace();
                // Nếu có lỗi trong việc chuyển đổi gia, gán gia = 0
            }
        }

        // Kiểm tra và chuyển đổi số lượng từ chuỗi sang số
        String soLuongString = request.getParameter("soLuong");
        if (soLuongString != null && !soLuongString.trim().isEmpty()) {
            try {
                soLuong = Integer.parseInt(soLuongString);
            } catch (NumberFormatException e) {
                e.printStackTrace();
                // Nếu có lỗi trong việc chuyển đổi số lượng, gán soLuong = 0
            }
        }

        // Tạo đối tượng SanPham mới và gán giá trị cho nó
        SanPham newSanPham = new SanPham();
        newSanPham.setTenSanPham(tenSanPham);
        newSanPham.setMoTa(moTa);
        newSanPham.setHinhAnh(hinhAnh);
        newSanPham.setGia(gia);
        newSanPham.setSoLuong(soLuong);
        newSanPham.setDanhMuc(danhMuc);

        // Thêm sản phẩm vào cơ sở dữ liệu
        sanPhamDao.addSanPham(newSanPham);

        // Chuyển hướng đến trang danh sách sản phẩm
        response.sendRedirect("listSanPham.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Chuyển hướng đến trang thêm sản phẩm
        RequestDispatcher dispatcher = request.getRequestDispatcher("addSanPham.jsp");
        dispatcher.forward(request, response);
    }
}
