<%@page import="com.rays.bean.UserBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	UserBean user = (UserBean) session.getAttribute("user");
	%>

	<%
	if (user != null) {
	%>
	<h2>
		<%="Hii, " + user.getFirstName()%>
	</h2>
	<a href="UserCtl">Add User</a> |
	<a href="#">Add List</a> |
	<a href="#">Logout</a> |
	<%
	} else {
	%>


	<h1>Hii, Guest</h1>
	<a href="LoginCtl">Login</a> |
	<a href="UserRegistrationCtl">SignUp</a> |

	<%
	}
	%>

	<a href="WelcomeCtl">Welcome</a>

	<hr>

</body>
</html>