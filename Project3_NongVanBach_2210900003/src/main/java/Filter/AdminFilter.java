package Filter;

import java.io.IOException;
import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.*;

@WebFilter("/Backend/*")
public class AdminFilter implements Filter {
    public void init(FilterConfig fConfig) throws ServletException { }

    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {
        
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse res = (HttpServletResponse) response;

        // Lấy đường dẫn (URI) hiện tại, vd: /Project3/Backend/User/adminLogin.jsp
        String uri = req.getRequestURI();
        
        // Các đường dẫn cần bỏ qua Filter (để hiển thị trang đăng nhập Admin/User, đăng ký, logout,...)
        if (uri.contains("adminLogin.jsp") 
            || uri.contains("adminLogin")     // Servlet adminLogin
            || uri.contains("userLogin.jsp")  
            || uri.contains("userLogin")      // Servlet userLogin
            || uri.contains("NVBDangKyUser.jsp") 
            || uri.contains("logout")) {
            
            // Không kiểm tra session Admin → cho phép tiếp tục
            chain.doFilter(request, response);
            return;
        }
        
        // Nếu URL không phải các trang đăng nhập/đăng ký, ta kiểm tra session Admin
        HttpSession session = req.getSession(false);
        if (session == null || session.getAttribute("admin") == null) {
            // Chưa đăng nhập Admin, chuyển về trang đăng nhập Admin
            res.sendRedirect(req.getContextPath() + "/Backend/User/adminLogin.jsp");
            return;
        }
        
        // Đã đăng nhập Admin → tiếp tục
        chain.doFilter(request, response);
    }

    public void destroy() { }
}
