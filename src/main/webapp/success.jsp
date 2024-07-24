<%
    if ((session.getAttribute("uname") == null) || (session.getAttribute("uname") == "")) {
%>
You are not logged in<br/>
<a href="index.jsp">Please Login</a>
<%} else {
%>
Welcome <%=session.getAttribute("uname")%>
<a href='logout.jsp'>Log out</a>
<%
    }
%>

	



