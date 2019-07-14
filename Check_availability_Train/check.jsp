<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
int filled=(int)session.getAttribute("filled");
int total=(int)session.getAttribute("total");
//filled++;
//session.setAttribute("filled",filled);
String from=request.getParameter("src");
String to=request.getParameter("dest");
int qty=Integer.parseInt(request.getParameter("qty"));

if(filled>=total)
{
	filled++;
	session.setAttribute("filled",filled);
	if(filled>2506)
		session.setAttribute("filled",2490);
	response.sendRedirect("index.jsp");
}
else{
	
	out.println("Ticket No. : "+(filled+1)+"<br/>source : "+from+"<br/>destination : "+to+"<br/>no. of passengers : "+qty+"<br/><h2>ticket confirmed</h2>");
	out.println("<br/><a href='http://localhost:6001/Ticket_confirmation/index.jsp'>home</a>");
	filled+=qty;
	session.setAttribute("filled",filled);
}
%>
</body>
</html>
