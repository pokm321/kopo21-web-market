<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.ProductRepository"%>
<%@ page import="java.util.List"%>
<%@ page import="dto.Product"%>
<jsp:useBean id="repository" class="dao.ProductRepository"
	scope="session" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</head>

<body>
	<jsp:include page="menu.jsp" />
	
	<div class="p-5 bg-primary text-white">
		<div class="container">
			<h1 class="display-3 text-center">상품 상세 정보</h1>
		</div>
	</div>

	<%
		String id= request.getParameter("id");
		Product product = repository.getProductById(id);	
	%>
	
	<div class="container">
		<div class="row text-center">
			<div class="col-md-4">
				<h3><%= product.getName() %></h3>
				<p><%= product.getDescription() %></p>
				<p>
					<a href="#" class="btn btn-info">상품 주문 &raquo;</a>
					<a href="./products.jsp" class="btn btn-secondary">상품 목록 &raquo;</a>
				</p>
			</div>
		</div>
	</div>
	
	<jsp:include page="footer.jsp" />
</body>
</html>