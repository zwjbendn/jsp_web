<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<table width="100%">
<tr>
<td>
<table>
<tr>
<td><a href="welcome.jsp">Main</a></td>
</tr>
</table>
</td>
<td>
<form name="form1" action="logout.jsp" method="post">
<table width="200" border="1">
<tr>
<td colspan="2">login successfully</td>
<tr>
<td>welcome,</td>
<td><%=(String)session.getAttribute("username") %></td>
</tr>
<tr>
<td colspan="2"><input type="submit" name="submit" value="logout"></td>
</tr>
</table>
</form>
</td>

</table>
</body>
</html>