<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%!public static int total=2500,filled=2494; %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="check.jsp" method="post">
<input type= "text" name="src" value="blr"/> <br/>
<input type= "text" name="dest" value="goa"/> <br/>
<input type="number" name="qty" value=2 /> <br/>
<input type="submit" <%
if(session.getAttribute("filled")==null)
 session.setAttribute("filled",filled);
session.setAttribute("total",total);
if((int)session.getAttribute("filled")>=total) out.println("onclick=\"alert(\'seats full\')\";");
%>/>
</form>
</body>
</html>
