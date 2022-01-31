<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>GamePop Home Page</h1>
	<div class="row center" style="float: none; margin: 0 auto;">
		<div class="card" c:forEach var="game" items="${listGames}">
			<a href="#"> <img class="img-fluid img-thumbnail"
				src='c:out value="${game.gamePicture}"' />
			</a>
			<div>
				<p><c:out value="${user.gameName}"/></p>
				<br>
				<button class="button"
					href="<%=request.getContextPath()%>/GameReview.jsp">See Review</button>
			</div>
		</div>
	</div>
</body>
</html>