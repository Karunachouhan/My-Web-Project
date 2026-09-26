
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Registration page</title>
</head>
<body style="background-color: beige">
	<%@ include file="Header.jsp"%>

	<%
	String succMsg = (String) request.getAttribute("succMsg");
	%>
	<div align="center">
		<h1>User Registration</h1>
		<h2 style="color:green"><%=succMsg!=null ? succMsg: ""%></h2>
	</div>
	<form action="UserRegistrationCtl" method="post">
		<div align="center">
			<table>

				<tr>
					<th>FirstName</th>
					<td><input type="text" name="firstName" value=""
						placeholder="enter your first name"></td>
				</tr>


				<tr>
					<th>LastName</th>
					<td><input type="text" name="lastName" value=""
						placeholder="enter your last name"></td>
				</tr>

				<tr>
					<th>Email</th>
					<td><input type="email" name="loginId" value=""
						placeholder="enter your emailId"></td>
				</tr>

				<tr>
					<th>Password</th>
					<td><input type="password" name="password" value=""
						placeholder="enter your password"></td>
				</tr>


				<tr>
					<th>DateOfBirth</th>
					<td><input type="date" name="dob" value=""
						placeholder="enter your dob"></td>
				</tr>

				<tr>
					<th></th>
					<td><input type="submit" name="operation" value="signUp"></td>
				</tr>
			</table>


		</div>

	</form>

	<%@ include file="Footer.jsp"%>
</body>
</html>