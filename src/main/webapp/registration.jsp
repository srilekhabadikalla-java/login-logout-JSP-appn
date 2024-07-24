<%@ page import="java.sql.*"%>
<%
try{
String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String email=request.getParameter("email");
String uname=request.getParameter("uname");
String password=request.getParameter("psw");

Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","webdb","webdb");
PreparedStatement ps=con.prepareStatement("insert into loginout values(?,?,?,?,?)");
ps.setString(1,fname);
ps.setString(2,lname);
ps.setString(3,email);
ps.setString(4,uname);
ps.setString(5,password);

int i=ps.executeUpdate();
if (i>0)
{
	session.setAttribute("uname",uname);
	response.sendRedirect("welcome.jsp");
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