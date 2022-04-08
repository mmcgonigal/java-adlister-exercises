import com.mysql.cj.jdbc.Driver;

import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;


@WebServlet("/authors")
public class AuthorServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request,HttpServletResponse response){
        try{
            DriverManager.registerDriver(new Driver());
            Connection connection = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/codeup_test_db?allowPublicKeyRetrieval=true&useSSL=false",
                    "root",
                    "codeup"
            ); // First object of the day - set up a connection object representing the bridge iver and into mysql.

            Statement statement = connection.createStatement();// Now that i have a connection to Mysql,lets make a statement object to execute queries to the database.

            //connection is the road  , statement obj is the car.
            //[road: connection; statement= car on the connection ]


            //From here on the statement object has a larger number of methods to send and work with our database- probably feel familiar sometimes to what you would have written in your terminal, but now those queries are heading and moving thru java.


            ResultSet rs = statement.executeQuery("SELECT * FROM quotes");

            ArrayList<String> quoteList = new ArrayList<String>(); // ArrayList to store String datatypes

            while(rs.next()){ quoteList.add(rs.getString("author") + " | " + rs.getString("content"));
                 }
            request.setAttribute("quoteListView",quoteList);
            request.getRequestDispatcher("/WEB-INF/authorQuotes/authorQuotes.jsp").forward(request,response);
        }catch(SQLException e){
            e.printStackTrace();
            System.out.println(("Errorcode =  " + e.getErrorCode()));
        }catch(ServletException | IOException e) {
            e.printStackTrace();
        }
    }

}
