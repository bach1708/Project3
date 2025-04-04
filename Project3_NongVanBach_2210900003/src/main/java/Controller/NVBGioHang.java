package Controller;
import DAO.SanPhamDAO;
import Model.NVBCartItem;
import Model.SanPham;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/NVBGioHang")
public class NVBGioHang extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // lay tham so action
        String action = request.getParameter("action");
        if(action == null) {
            action = "view"; // hien thi gio hang
        }
        
        // lay gio hang tu session (neu chua co thi tao moi)
        HttpSession session = request.getSession();
        List<NVBCartItem> gioHang = (List<NVBCartItem>) session.getAttribute("gioHang");
        if(gioHang == null) {
            gioHang = new ArrayList<>();
            session.setAttribute("gioHang", gioHang);
        }
        
        switch(action) {
            case "add":
                themVaoGio(request, gioHang);
                response.sendRedirect("/Project3_NongVanBach_2210900003/Frontend/MuaHang/NVBGioHang.jsp");
                break;
                
            case "remove":
                xoaKhoiGio(request, gioHang);
                response.sendRedirect("/Project3_NongVanBach_2210900003/Frontend/MuaHang/NVBGioHang.jsp");
                break;
                
            case "view":
            default:
                request.getRequestDispatcher("Backend/User/giohang.jsp").forward(request, response);
                break;
        }
    }
    
    private void themVaoGio(HttpServletRequest request, List<NVBCartItem> gioHang) {
        int sanPhamId = Integer.parseInt(request.getParameter("id"));
        int soLuongThem = Integer.parseInt(request.getParameter("soLuong"));
        
        SanPhamDAO spDAO = new SanPhamDAO();
        SanPham sp = spDAO.getSanPhamById(sanPhamId);
        if(sp == null) return;
        
        //kiem tra san pham co trong gio hang chua
        for(NVBCartItem item : gioHang) {
            if(item.getSanPhamId() == sanPhamId) {
                // neu đã co thi tang so luong
                item.setSoLuong(item.getSoLuong() + soLuongThem);
                return;
            }
        }
        
        //chua co thi tao item moi
        NVBCartItem newItem = new NVBCartItem();
        newItem.setSanPhamId(sanPhamId);
        newItem.setTenSanPham(sp.getTenSanPham());
        newItem.setGia(sp.getGia());
        newItem.setSoLuong(soLuongThem);
        
        gioHang.add(newItem);
    }
    
    private void xoaKhoiGio(HttpServletRequest request, List<NVBCartItem> gioHang) {
        int sanPhamId = Integer.parseInt(request.getParameter("id"));
        gioHang.removeIf(item -> item.getSanPhamId() == sanPhamId);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}
