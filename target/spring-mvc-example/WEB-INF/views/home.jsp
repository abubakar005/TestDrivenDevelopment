<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>

<html>
<head>
	<!-- <title>Home</title> -->
	<title>Login Page</title>
	
	<script type="text/javascript">
	
            function validate() {
                var userName = document.getElementById("userName");
                var userPass = document.getElementById("userPass");
                var userNameVal = document.getElementById("userName").value;
                var userPassVal = document.getElementById("userPass").value;
                var valid = true;
                
		               
				if (userName.value.length <= 0 || userPass.value.length <= 0) {
						alert("Don't leave the field empty!");
						valid = false;
					} /* else {
		
						if (isNaN(userNameVal) || isNaN(userPassVal)) {
							alert("Enter a number");
		
							valid = false;
						}
					} */
		
					return valid;
				};
			</script>
	
</head>

<body>
	<!-- <h1>Hello world!</h1> -->
	<h1>Login Page</h1>

	<%-- <P>The time on the server is ${serverTime}.</p> --%>

	<form action="user" method="post" onsubmit="return validate();">
		User Name: <input type="text" value="User Name" name="userName" id="userName">
		<br><br>
		Password: <input type="password" value="Password" name="userPass" id="userPass">
		<br><br>
		<input type="submit" value="Login">
	</form>
</body>
</html>