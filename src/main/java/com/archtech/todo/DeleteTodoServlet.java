package com.archtech.todo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/delete-todo.do")
public class DeleteTodoServlet extends HttpServlet {
    TodoService todoService = new TodoService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String tname = req.getParameter("name");
        String ccategory = req.getParameter("category");
        todoService.deleteTodo(new Todo(tname,ccategory));
        resp.sendRedirect("/todo.do");
    }
}
