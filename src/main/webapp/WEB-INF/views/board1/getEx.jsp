<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<style>

</style>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">
</head>
<body>
	<my:navBarEx></my:navBarEx>

	<div class="container-md">
		<div class="row">
			<div class="col">
				<h1>
					no. ${board.id }
					<c:url value="/board1/modifyEx" var="modifyLink">
						<c:param name="id" value="${board.id }"></c:param>
					</c:url>
					<a href="${modifyLink }">edit</a>
				</h1>

				<div class="form-floating mb-3">
					<input type="text" class="form-control" value="${board.title }" readonly>
					<label for="floatingInput">title</label>
				</div>
				<div class="form-floating mb-3">
					<textarea class="form-control" id="content" style="resize: none; height: 100px" readonly>${board.content }</textarea>
 					<label for="floatingTextarea2"></label>
				</div>
				<div class="form-floating mb-3">
					<input type="text" class="form-control" value="${board.writer }" readonly> <br>
					<label for="floatingInput">writer</label>
				</div>
				<div class="form-floating mb-3">
					<input type="datetime-local" class="form-control" value="${board.inserted }"readonly> <br>
					<label for="floatingInput">inserted</label>
				</div>


			</div>
		</div>
	</div>


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
		crossorigin="anonymous"></script>
</body>
</html>