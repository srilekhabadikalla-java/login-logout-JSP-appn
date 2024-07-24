<%@ page import="java.sql.*" %>
<%
try{
String uname=request.getParameter("uname1");
String password=request.getParameter("psw1");
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","webdb","webdb");
PreparedStatement ps=con.prepareStatement("select * from loginout where uname=? and psw=?");
ps.setString(1,uname);
ps.setString(2,password);
ResultSet rs=ps.executeQuery();
if (rs.next())
{
	response.sendRedirect("success.jsp");
	session.setAttribute("uname",uname);
}
else
{
	response.sendRedirect("index.jsp");
}
con.close();
}
catch(Exception e)
{
	out.println(e);
}
%>