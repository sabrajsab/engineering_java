<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%!int k; %>
<%
String mobile=request.getParameter("mobile");
if(mobile.equals("nokia"))
	k=100;
else if(mobile.equals("mi"))
	k=1000;
else if(mobile.equals("asus"))
	k=3000;
session.setAttribute("mobile",mobile);

%>
Selected Item : <%=mobile %> ,  cost : <%=k %><br/>
<form action="index.jsp" method="post"><input type="submit" value="pay <%=k %>" onclick="alert('success');"></form>
<form action="error.jsp" method="post"><input type="submit" value="discard"></form>

</body>
</html>
