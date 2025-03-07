package Controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.SanPhamDAO;
import Model.SanPham;

@WebServlet("/Backend/SanPham/updateSanPham")
public class updateSanPham extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private SanPhamDAO sanPhamDao;

    public void init() {
        sanPhamDao = new SanPhamDAO(); 
    }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        int sanPhamId = Integer.parseInt(request.getParameter("sanPhamId"));             
        SanPham sanPham = sanPhamDao.getSanPhamById(sanPhamId);     
        request.setAttribute("sanPham", sanPham);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/Backend/SanPham/updateSanPham.jsp");
        dispatcher.forward(request, response);
    }
 
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");

        int sanPhamId = Integer.parseInt(request.getParameter("sanPhamId"));
        String tenSanPham = request.getParameter("tenSanPham");  // Đảm bảo tên này khớp với tên trong form
        String hinhAnh = request.getParameter("hinhAnh");  // Đảm bảo tên này khớp với tên trong form
        String danhMuc = request.getParameter("danhMuc");  // Đảm bảo tên này khớp với tên trong form
        int gia = Integer.parseInt(request.getParameter("gia"));
        int soLuong = Integer.parseInt(request.getParameter("soLuong"));
        String moTa = request.getParameter("moTa");

        SanPham sanPham = new SanPham(sanPhamId, tenSanPham, moTa, hinhAnh, gia, soLuong, danhMuc);
        sanPhamDao.updateSanPham(sanPham);

        response.sendRedirect("listSanPham.jsp");
    }
}
