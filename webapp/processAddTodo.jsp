<%@page import="dto.Todo"%>
<%@page import="dao.TodoRepository"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%
// �ѱ� �ȱ�����
// request.setCharacterEncoding("UTF-8");

String task = request.getParameter("task");

Todo todo = new Todo(task);

TodoRepository repository = TodoRepository.getInstance();
repository.addTodo(todo);

response.sendRedirect("todolist.jsp");
%>

