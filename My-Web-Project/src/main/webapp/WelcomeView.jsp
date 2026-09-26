
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body style="background-color: beige">
	<%@ include file="Header.jsp"%>
	<div align="center">
		<h1>
			Welcome To My Web-site<%=user != null ? "(" + user.getFirstName() + ")" : ""%>
		</h1>
	</div>
	<%@ include file="Footer.jsp"%>
</body>
</html>