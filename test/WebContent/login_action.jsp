<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@page import ="test.*" %>
<%-- <%@include file="inc.jsp" %> --%>
<% 
String username=request.getParameter("username");
String password=request.getParameter("password");

if(username==null||password==null){
response.sendRedirect("login.jsp");
}
UserBean userbean = new UserBean();
boolean isValid = userbean.valid(username,password);
/* boolean isValid = false;
String sql="select * from user where name='"+username+"'and password='"+password+"'";
try{
Class.forName(drv).newInstance();
Connection conn = DriverManager.getConnection(url,usr,pwd);
Statement stm=conn.createStatement();
ResultSet rs = stm.executeQuery(sql);
if(rs.next())isValid = true;
rs.close();
stm.close();
conn.close();
}catch(Exception e){
e.printStackTrace();
out.println(e);
}finally{
} */ 
if(isValid){
	session.setAttribute("username",username); 
	response.sendRedirect("welcome.jsp");
}else{
	response.sendRedirect("login.jsp");
}
%>


</body>
</html>