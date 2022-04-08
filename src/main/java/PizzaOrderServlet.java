import org.w3c.dom.ls.LSOutput;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;


@WebServlet(name="PizzaOrderServlet",urlPatterns="/pizza_order")
public class PizzaOrderServlet extends HttpServlet{
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        response.setContentType("text/html");


        request.getRequestDispatcher("/pizza_order.jsp").forward(request, response);

    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{

        //This form features choices to select the crust type, sauce type, size type (use select inputs), toppings (checkboxes), and delivery address (text input).


        String crust = request.getParameter("crust");
        String sauce = request.getParameter("sauce");
        String size = request.getParameter("size");
        String[] toppings=request.getParameterValues("topping");
        String address = request.getParameter("address");
        System.out.println("here is your pizza"+ " "+crust + " "+sauce +" "+size);
//        for(String topping:toppings ){
//            System.out.println(topping);
//        }
//
//        }
        System.out.println(request.getParameter("crust"));
        System.out.println(request.getParameter("sauce"));System.out.println(request.getParameter("size")); System.out.println(request.getParameter("crust"));









//        String[] toppings= request.getParameterValues("topping");
//
//        for(int i = 0; i<toppings.length; i++){
//            System.out.println(toppings[i]);
//        }

//        System.out.println("crust");


    }



}
