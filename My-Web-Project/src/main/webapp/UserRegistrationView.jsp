
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Registration page</title>
</head>
<body style="background-color: pink">
 <%@ include file="Header.jsp" %>
	<div align="center">
		<h1>User Registration</h1>
	</div>
	<form>
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
					<td><input type="email" name="Email" value=""
						placeholder="enter your emailId"></td>
				</tr>

				<tr>
					<th>Password</th>
					<td><input type="password" name="password" value=""
						placeholder="enter your password"></td>
				</tr>


				<tr>
					<th>DateOfBirth</th>
					<td><input type="date" name="dateOfBirth" value=""
						placeholder="enter your dob"></td>
				</tr>

				<tr>
					<th></th>
					<td><input type="submit" name="operation" value="signUp"></td>
				</tr>
			</table>


		</div>

	</form>

 <%@ include file="Footer.jsp" %>
</body>
</html>