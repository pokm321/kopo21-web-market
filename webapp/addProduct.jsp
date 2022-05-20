<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>상품 등록</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
	<jsp:include page="menu.jsp" />

	<div class="p-5 bg-primary text-white">
		<div class="container">
			<h1 class="display-3 text-center">상품 등록</h1>
		</div>
	</div>

	<div class="container">
		<form name="newProduct" action="./processAddProduct.jsp" class="form-horizontal" method="post">
			<div class="form-group row mt-3">
				<label class="col-sm-2">상품 코드</label>
				<div class="col-sm-3">
					<input type="text" name="productId" class="form-control">
				</div>
			</div>
			<div class="form-group row mt-3">
				<label class="col-sm-2">상품명</label>
				<div class="col-sm-3">
					<input type="text" name="name" class="form-control">
				</div>
			</div>
			<div class="form-group row mt-3">
				<label class="col-sm-2">설명</label>
				<div class="col-sm-3">
					<input type="text" name="description" class="form-control">
				</div>
			</div>
			<div class="form-group row mt-3">
				<label class="col-sm-2">가격</label>
				<div class="col-sm-3">
					<input type="text" name="unitPrice" class="form-control">
				</div>
			</div>


			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10">
					<input type="submit" class="btn btn-primary" value="등록">
				</div>
			</div>

		</form>
	</div>




	<jsp:include page="footer.jsp" />
</body>
</html>