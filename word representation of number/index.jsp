<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
  import="java.util.*"  pageEncoding="ISO-8859-1"%>
    <%! HashMap<Integer,String> hm=new HashMap<>(); int i;%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="index.jsp" method="post">
<input type="number" name="val" >
<input type="submit" >
<%
String str=request.getParameter("val");
hm.put(0,"zero");
hm.put(1,"one");
hm.put(2,"two");
hm.put(3,"three");
hm.put(4,"four");
hm.put(5,"five");
hm.put(6,"six");
hm.put(7,"seven");
hm.put(8,"eight");
hm.put(9,"nine");
if(str!=null)
{
	i=Integer.parseInt(str);
	out.println("<br/><h2>"+hm.get(i)+"<h2/>");
}
%>
</form>
</body>
</html>
