<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.net.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
<my:navBarEx></my:navBarEx>

	<div class="container-md">
		<div class="row">
			<div class="col">
				<h1>no. ${board.id }</h1>
				<form id="modifyForm" action="" method="post">
					<div class="form-floating mb-3">
					<input type="text" class="form-control" value="${board.title }">
					<label for="floatingInput">title</label>
				</div>
				<div class="form-floating mb-3">
					<textarea class="form-control" id="content" style="resize: none; height: 100px">${board.content }</textarea>
 					<label for="floatingTextarea2"></label>
				</div>
				<div class="form-floating mb-3">
					<input type="text" class="form-control" value="${board.writer }" readonly>
					<label for="floatingInput">writer</label>
				</div>
				<div class="form-floating mb-3">
					<input type="datetime-local" class="form-control" value="${board.inserted }"readonly> <br>
					<label for="floatingInput">inserted</label>
				</div>
				</form>
			</div>
		</div>
	</div>
	
<div class="container">
	<input id="modifyConfirm" type="submit" value="edit">
	<c:url value="/board1/remove" var="removeLink"></c:url> 
	<form id="removeForm" action="${removeLink }" method="post">
		<input type="hidden" name="id" value="${board.id }">
		<input id="removeConfirm" class="btn btn-danger" type="submit" value="delete">
	</form>
		
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
<script>
document.querySelector("#modifyConfirm").addEventListener("click", function(){
	document.querySelector("#modifyForm").submit();
});

document.querySelector("#removeConfirm").addEventListener("click", function(){
	document.querySelector("#removeForm").submit();
	
});
</script>
</body>
</html>