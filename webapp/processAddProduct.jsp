<%@page import="dto.Product"%>
<%@page import="dao.ProductRepository"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%
// 한글 안깨지게
request.setCharacterEncoding("UTF-8");

String productId = request.getParameter("productId");
String name = request.getParameter("name");
int unitPrice = Integer.parseInt(request.getParameter("unitPrice"));

Product newProduct = new Product(productId, name, unitPrice);

ProductRepository repository = ProductRepository.getInstance();
repository.addProduct(newProduct);

response.sendRedirect("products.jsp");
%>

