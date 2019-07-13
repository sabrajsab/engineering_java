package gradingSystem;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/eval")
public class Evaluate extends HttpServlet{
	/**
	 * 
	 */
	public static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest req, HttpServletResponse res) throws IOException{
		int marks=Integer.parseInt(req.getParameter("mar"));
		PrintWriter pr=res.getWriter();
		String str;
		if(marks<40)
			str="F";
		else if(marks<50)
			str="D";
		else if(marks<60)
			str="C";
		else if(marks<70)
			str="B";
		else if(marks<80)
			str="A";
		else if(marks<90)
			str="S";
		else str="S+";
		pr.println("Grade obtained : "+str);
		
	}
}
