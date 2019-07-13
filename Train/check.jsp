<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%String src=request.getParameter("src");
String dest=request.getParameter("dest");
if(src.equals(dest))
	out.println("Incorrect details<br/><a href='http://localhost:6001/Train/index.jsp'>home</a>");
else{
	session.setAttribute("src",src);
	session.setAttribute("dest",dest);
	response.sendRedirect("train_details.jsp");
}
%>
</body>
</html>
