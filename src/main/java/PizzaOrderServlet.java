import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet(name="PizzaOrderServlet",urlPatterns="/pizza-order")
public class PizzaOrderServlet extends HttpServlet{
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        //This form features choices to select the crust type, sauce type, size type (use select inputs), toppings (checkboxes), and delivery address (text input).




    }



}
