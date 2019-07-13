package validate;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/vali")
public class Validate extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void service (HttpServletRequest req, HttpServletResponse res) throws IOException{
		String nam=req.getParameter("nam");
		String pass=req.getParameter("pass");
		PrintWriter out=res.getWriter();
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","");
			Statement stmt=con.createStatement();
			
			ResultSet rs=stmt.executeQuery("select * from userbase;");
			int flag=0;
			while(rs.next())
			{
				//out.println("username : "+rs.getString(1) +" password : "+ rs.getString(2)+"<br/>" );
				if(nam.equals(rs.getString(1)))
					if(pass.equals(rs.getString(2))) {
						out.println("user authenticated");
						flag=1;
						break;
					}
					else {
						out.println("Invalid Password");
						flag=1;
						break;
					}
			
				
			}
			if(flag==0)
				out.println("Invalid User");
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
