import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/read")
public class reader extends HttpServlet{
	public static final long serialVersionUID=3;
	protected void service(HttpServletRequest req, HttpServletResponse res) throws IOException{
		String name=req.getParameter("namu");
		BufferedReader br=new BufferedReader(new FileReader("abc.txt"));
		String line;
		PrintWriter out=res.getWriter();
		String str="name : "+name;
		while((line=br.readLine())!=null) {
			
			if(line.equals(str))
			{
				out.println(line);
				line=br.readLine();
				out.println("<br/>"+line+"<br/>");
				line=br.readLine();
				out.println(line);
			}
	
		}
		br.close();
	}
}
