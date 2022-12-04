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
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">
</head>
<body>
	<my:navBarEx></my:navBarEx>

	<div class="container-md" id="whole">
		<div class="row">
			<div class="col">

				<h1>post</h1>

				<form action="" method="post">
					<div class="form-floating mb-3">
						<input type="text" class="form-control" name="writer"> <label
							for="floatingInput">writer</label>
					</div>
					<div class="form-floating mb-3">
						<input type="text" class="form-control" name="title"> <label
							for="floatingInput">title</label>
					</div>
					<div class="form-floating mb-3">
						<textarea class="form-control" name="content"
							style="resize: none; height: 100px"></textarea>
						<label for="floatingInput">write here!</label>
					</div>
					<input type="submit" value="post">
				</form>
			</div>
		</div>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
		crossorigin="anonymous"></script>
	<script>
		document.body.style.backgroundColor = "OldLace";
		document.getElementById("whole").style.fontFamily = "Charcoal,consolas";
	</script>
</body>
</html>