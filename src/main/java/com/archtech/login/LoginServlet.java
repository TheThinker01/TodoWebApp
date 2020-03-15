package com.archtech.login;

import com.archtech.todo.TodoService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/login.do")
public class LoginServlet extends HttpServlet {
    LoginService val = new LoginService();
    TodoService todo = new TodoService();

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setAttribute("error","Please Enter Credentials");
        request.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("name", request.getParameter("name"));
        String name = request.getParameter("name");
        String pass = request.getParameter("password");

        if (val.isUservalid(name, pass)) {
            request.getSession().setAttribute("name",name);
            response.sendRedirect("/todo.do");
        }
        else {
        request.setAttribute("error","Invalid Credentials");
        request.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(request, response);
        }
    }
}

