<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
	<nav class="navbar navbar-expand navbar-dark bg-dark">
		<ul class="container">
			<li class="navbar-header"><a href="./welcome.jsp">Home</a> <a
				href="./welcome.jsp">Home</a></li>
		</ul>
	</nav>
	<%! // ����, �޼��� ����
	String greeting = "�� ���θ��� ���� ���� ȯ�� �մϴ�.";
	String tagline = "Welcome to Web Market!";
	%>
	<% //�׳� �ڹ��ڵ�, ���� ���� %>

	<div class="p-5 bg-primary text-white">
		<div class="container">
			<h1 class="display-3 text-center">
				<%= greeting %>
			</h1>
		</div>
	</div>
	
	<div class="container">
	  <div class="text-center">
	    <h3><%= tagline %></h3>
	    <%
	    Date today = new Date();
	    SimpleDateFormat format = new SimpleDateFormat("hh:mm:ss a");
	    out.println("���� ���� �ð�: " + format.format(today));
	    %>
	  </div>
	</div>
</body>

<footer>
	<p>&copy; WebMarket</p>
</footer>
</html>