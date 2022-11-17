<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
</head>
<body>
<my:navBarEx></my:navBarEx>

<div class="container-md" id="whole">
	<div class="row">
		<div class="col">

			<h1>List</h1>
			<table class="table">
				<thead>
					<tr>
						<th>#</th>
						<th>List</th>
						<th>writer</th>
						<th>inserted</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach items="${boardList }" var="board">
					<tr>
						<td>${board.id }</td>
						
						<td>
						<c:url value="/board1/getEx" var="getLink">
							<c:param name="id" value="${board.id }"></c:param>
						</c:url>
						<a href="${getLink }">
							${board.title }
						</a>
						</td>
						<td>${board.writer }</td>
						<td>${board.inserted }</td>
					</tr>
				</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
<script>
document.body.style.backgroundColor = "OldLace";
document.getElementById("whole").style.fontFamily = "Charcoal,consolas";

</script>
</body>
</html>