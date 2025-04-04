package Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Backend/User/logout")
public class logout extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Xóa session khi đăng xuất
        request.getSession().invalidate();

        // Chuyển hướng về trang đăng nhập
        response.sendRedirect("/Project3_NongVanBach_2210900003/Backend/User/userLogin.jsp"); // Chuyển hướng đến trang đăng nhập
    }
}

