package controller;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import service.ForgotPasswordService;

@SuppressWarnings("serial")
@WebServlet(urlPatterns = "/forgot-password")
public class ForgotPasswordController extends HttpServlet {
    private ForgotPasswordService forgotPasswordService = new ForgotPasswordService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("forgot-password.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String newPassword = request.getParameter("newPassword");
        String confirmPassword = request.getParameter("confirmPassword");

        if (!newPassword.equals(confirmPassword)) {
            request.setAttribute("alert", "Mật khẩu mới và xác nhận không khớp!");
            request.getRequestDispatcher("forgot-password.jsp").forward(request, response);
            return;
        }

        boolean success = forgotPasswordService.resetPassword(username, email, newPassword);
        if (success) {
            request.setAttribute("message", "Đổi mật khẩu thành công! Vui lòng đăng nhập lại.");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        } else {
            request.setAttribute("alert", "Tên đăng nhập hoặc email không đúng!");
            request.getRequestDispatcher("forgot-password.jsp").forward(request, response);
        }
    }
}
