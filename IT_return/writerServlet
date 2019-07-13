import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/write")
public class Writer extends HttpServlet{
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest req, HttpServletResponse res) throws IOException{
		String name=req.getParameter("nam");
		int sal=Integer.parseInt(req.getParameter("sal"));
		int tax=Integer.parseInt(req.getParameter("tax"));
		//PrintWriter out=res.getWriter();
		FileWriter fw=new FileWriter("abc.txt",true);
		String path=new File("abc.txt").getAbsolutePath();
		System.out.println(path);
		fw.append("name : "+name+"\nsalary : "+sal+"\ntax : "+tax+"\n\n");
		//out.println("<h1>name : "+name+"</h1><br/>salary : "+sal+"<br/>tax : "+tax);
		fw.close();
		res.sendRedirect("index.html");
	}
}
