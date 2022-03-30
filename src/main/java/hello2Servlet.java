import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "hello2", urlPatterns = "/hello2")
public class hello2Servlet extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException{
        res.setContentType("text/html");
        PrintWriter out =res.getWriter();
        String outputRes = "<h1> hello , world ! <h1>";
        if(req.getParameter("name") !=null ){
           outputRes = "Hello, " + req.getParameter("name") + " !! ";
        }
        out.println(outputRes
                );
    }
}
