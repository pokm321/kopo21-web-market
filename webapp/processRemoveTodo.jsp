<%@page import="dto.Todo"%>
<%@page import="dao.TodoRepository"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%
// 한글 안깨지게
// request.setCharacterEncoding("UTF-8");

long id = Long.parseLong(request.getParameter("id"));

TodoRepository repository = TodoRepository.getInstance();
repository.remove(id);

response.sendRedirect("todolist.jsp");
%>

