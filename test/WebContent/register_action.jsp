<%@include file="inc.jsp"%>
<%@page import = "test.*" %>
<%
String username=request.getParameter("username");
String password1=request.getParameter("password1");
String password2=request.getParameter("password2");
String email=request.getParameter("email");
out.println(username);
if(username==""| password1=="" || password2 == "" ||!password1.equals(password2)){
response.sendRedirect("register.jsp");
}else{
 UserBean userBean = new UserBean();
boolean isExist = userBean.isExist(username);
if(!isExist){
	userBean.add(username,password1,email);
	response.sendRedirect("login.jsp");
}else{
	response.sendRedirect("register.jsp");
}


/*  boolean isValid = false;
String sql="select * from user where name='" + username + "'";
try{
Class.forName(drv).newInstance();
Connection conn = DriverManager.getConnection(url,usr,pwd);
Statement stm = conn.createStatement();
ResultSet rs=stm.executeQuery(sql);
if(!rs.next()){
sql="insert into user(name,password,email) values('"+username+"','"+password1+"','"+email+"')";
stm.execute(sql);
isValid=true;
}
rs.close();
stm.close();
conn.close();
}catch(Exception e){
e.printStackTrace();
out.println(e);
}
if(isValid){
response.sendRedirect("login.jsp");
}else{
response.sendRedirect("register.jsp");
} */
}
%>