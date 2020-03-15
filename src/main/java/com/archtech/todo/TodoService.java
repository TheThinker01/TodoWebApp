package com.archtech.todo;

import java.util.ArrayList;
import java.util.List;

public class TodoService {
    private static List<Todo> todos = new ArrayList<Todo>();
    static {
        todos.add(new Todo("Get Started with ML"));
        todos.add(new Todo("Finish the course"));
    }

    public void addTodo(String tname){
        todos.add(new Todo(tname));
    }

    public void deleteTodo(Todo todo)
    {
        todos.remove(todo);
    }

    public List<Todo> getTodos() {
        return todos;
    }
}
