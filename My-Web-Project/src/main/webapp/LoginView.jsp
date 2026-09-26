
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
</head>
<body style="background-color: beige">

	<%
	String errorMsg = (String) request.getAttribute("errorMsg");
	String succMsg = (String) request.getAttribute("succMsg");
	%>
	<%@ include file="Header.jsp"%>
	<form action="LoginCtl" method="post">
		<div align="center">
			<h1>Login</h1>

			<h2 style="color: red"><%=errorMsg != null ? errorMsg : ""%></h2>
			<h2 style="color: green"><%=succMsg != null ? succMsg : ""%></h2>


			<table>

				<tr>
					<th>LoginId</th>
					<td><input type="email" name="LoginId" value=""
						placeholder="enter your emailId"></td>
				</tr>

				<tr>
					<th>Password</th>
					<td><input type="password" name="password" value=""
						placeholder="enter your password"></td>
				</tr>

				<tr>
					<th></th>
					<td><input type="submit" name="operation" value="signIn"></td>
				</tr>
			</table>


		</div>

	</form>
	<%@ include file="Footer.jsp"%>
</body>
</html>