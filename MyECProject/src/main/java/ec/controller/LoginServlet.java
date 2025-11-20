package ec.controller;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private static final String USER = "user";
    private static final String PASS = "pass";

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        String name = request.getParameter("username");
        String pw = request.getParameter("password");

        if (USER.equals(name) && PASS.equals(pw)) {
            HttpSession session = request.getSession();
            session.setAttribute("loginUser", name);
            response.sendRedirect("products");
        } else {
            request.setAttribute("error", "ユーザー名またはパスワードが違います");
            RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
            rd.forward(request, response);
        }
    }
}