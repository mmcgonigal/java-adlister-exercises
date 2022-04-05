import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "LoginServlet", urlPatterns = "/login")
public class LoginServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/login.jsp").forward(request, response);
        //String msg = request.getParameter("msg");


    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        boolean validAttempt = username.equals("admin") && password.equals("password");
        request.setAttribute("msg",username);

        HttpSession session1 = request.getSession();
        //String user =session.setAttribute("user",validAttempt);
        if (validAttempt) {
//            session1.setAttribute("userID",username);
//            session1.setAttribute("passcode",password);
            response.sendRedirect("/profile");
        } else {
            response.sendRedirect("/login");

        }

    }

}
