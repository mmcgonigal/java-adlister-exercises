import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "hello2", urlPatterns = "/hellohi")
public class hello2Servlet extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException{
        res.setContentType("text/html");
        PrintWriter out =res.getWriter();
        out.println("<h1>Hello this is second servlet I created. </h1>" +
                "<p>안녕하세요 ㅋㅋㅋㅋ 완전 대박 완전 신기 로컬 호스트 </p>" +
                "<p>완전 신기함 </p>");
    }
}
