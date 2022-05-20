<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
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
	<jsp:include page="menu.jsp" />
	
	<%! // 변수, 메서드 선언
		String greeting = "웹 쇼핑몰에 오신 것을 환영 합니다.";
		String tagline = "Welcome to Web Market!";
	%>
	<% //그냥 자바코드, 선언도 가능 %>

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
		    	response.setIntHeader("Refresh", 10);
			    Date today = new Date();
			    SimpleDateFormat format = new SimpleDateFormat("hh:mm:ss a");
			    out.println("현재 접속 시간: " + format.format(today));
			    
			    session.setAttribute("name", "오준석");
			    session.setAttribute("age", 23);
			    
			    List<String> foods = new ArrayList<>();
			    foods.add("짜장면");
			    foods.add("라면");
			    foods.add("탕수육");
			    
			    session.setAttribute("food", foods);
			    session.setMaxInactiveInterval(5);
		    %>
		</div>
	</div>
	
	<jsp:include page="footer.jsp" />
</body>


</html>