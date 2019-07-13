<%@ page import="java.sql.*" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%Object src=session.getAttribute("src");
	Object dest=session.getAttribute("dest");
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","");
		PreparedStatement stmt=con.prepareStatement("select * from train_details where source =? and destination =?");
		stmt.setString(1, src.toString());
		stmt.setString(2,dest.toString());
		ResultSet rs=stmt.executeQuery();
		if(rs.next()==false)
			out.println("no trains found");
		do
		{
			out.println("Train name : "+rs.getString(1)+"   train no. : "+rs.getInt(2)+"<br/>");
		}while(rs.next());
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	
%>
<br/><br/>
<a href="http://localhost:6001/Train/index.jsp">home</a>
</body>
</html>
