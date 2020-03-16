package com.archtech.todo;

import java.util.ArrayList;
import java.util.List;

public class TodoService {
    private static List<Todo> todos = new ArrayList<Todo>();
    static {
        todos.add(new Todo("Get Started with ML","study"));
        todos.add(new Todo("Finish the course","study"));
    }

    public void addTodo(String tname,String category){
        todos.add(new Todo(tname,category));
    }

    public void deleteTodo(Todo todo)
    {
        todos.remove(todo);
    }

    public List<Todo> getTodos() {
        return todos;
    }
}
