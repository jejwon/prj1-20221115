<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.net.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
	<h1>${board.id }번 수정</h1>
	<div class="container-md">
		<div class="row">
			<div class="col">
				<form id="modifyForm" action="" method="post">
					제목 <input type="text" name="title" value="${board.title }"> <br>
					작성자 <input type="text" name="writer" value="${board.writer }" readonly> <br>
					본문 <textarea name="content" rows="5">${board.content }</textarea> <br>
					작성일시 <input type="datetime-local" value="${board.inserted }" readonly> <br>
				</form>
			</div>
		</div>
	</div>
	
	<form id="removeForm" action="${removeLink }" method="post">
		<input type="hidden" name="id" value="${board.id }">
	</form>
	
<input id="modifyConfirm" type="submit" value="수정">
<c:url value="/board1/remove" var="removeLink"></c:url> 
<input id="removeConfirm" type="submit" value="삭제">

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