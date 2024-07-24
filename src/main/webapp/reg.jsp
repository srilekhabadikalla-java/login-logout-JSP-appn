<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="registration.jsp" method="post">
<h3>Register Here</h3>
First Name :<input type="text" name="fname"><p></p>
Last Name : <input type="text" name="lname"><p></p>
Email :<input type="email" name="email"><p></p>
User Name :<input type="text" name="uname"><p></p>
Password :<input type="password" name="psw"><p></p>

<input type="submit" value="Register">
<input type="reset" value="Reset"><br>
<h5>Already registered!! <a href="index.jsp">Login Here</a></h5>

</form>
</body>
</html>