<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form name="form1" action="register_action.jsp" method="post">
<table width="200" border="1">
<tr>
<td colspan="2">register window</td>
<tr>
<td>username</td>
<td><input type="text" name="username" size="10"></td>
</tr>
<tr>
<td>password</td>
<td><input type="password" name="password1" size="10"></td>
</tr>
<tr>
<td>confirm password</td>
<td><input type="password" name="password2" size="10"></td>
</tr>
<tr>
<td>Email</td>
<td><input type="text" name="email" size="10"></td>
</tr>
<tr>
<td colspan="2"><input type="submit" name="submit" value="login">
<a href="login.jsp">back</a>
</td>
</tr>
</table>
</form>
</body>
</html>