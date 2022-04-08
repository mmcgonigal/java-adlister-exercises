import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import java.io.PrintWriter;
@WebServlet(name = "CounterServlet", urlPatterns = "/counter")
public class CounterServlet  extends HttpServlet{
    public int counter = 0 ;

    protected void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException{
        response.setContentType("text/html");


        if(request.getParameter("reset") !=null && request.getParameter("reset").equalsIgnoreCase("reset")){
            counter = 0;
        }

        counter++;
        response.getWriter().println("<h1>the count currently is " + counter +" on this page load</h1>");
    }


}
