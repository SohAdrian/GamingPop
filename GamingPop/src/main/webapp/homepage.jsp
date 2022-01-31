<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet"
href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
crossorigin="anonymous">
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
				<p><c:out value="${game.gameName}"></p>
				<br>
				<button class="button"
					href="<%=request.getContextPath()%>/GameReview.jsp">SeeReview</button>
			</div>
		</div>
	</div>
</body>
</html>