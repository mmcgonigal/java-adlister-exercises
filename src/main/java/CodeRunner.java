import com.mysql.cj.jdbc.Driver;
import com.mysql.cj.protocol.Resultset;

import java.sql.*;


public class CodeRunner {

    public static void main(String[] args) throws SQLException {
        DriverManager.registerDriver(new Driver());
        Config config = new Config();
        Connection connection = DriverManager.getConnection(
                config.getUrl(),
                config.getUser(),
                config.getPassword()
        ); // First object as seen earlier - connection obj




        Statement stmt = connection.createStatement(); //From connection obj ->we can get instantiate a statement obj

        //My table was a table named 'quotes' where quotes had two columns OF authors and content
        //Your quotes table tho - is set up to have a one to many relationship with a 2nd table named 'authors'
        String exampleQuery = "INSERT INTO quotes(authors,content) VALUES ('Nelly Furtado','Art and life go together')";

        stmt.executeUpdate(exampleQuery, Statement.RETURN_GENERATED_KEYS); // this time we are doing the 'C' of CRUD
        //the second argument [Statement.RETURN_GENERATED_KEYS] tells Java, " hey I want the primary key [the id] of what was creted please"
        ResultSet rs = stmt.getGeneratedKeys(); // give me that key
        if(rs.next()) {
            System.out.println("Inserted a new record! new id : " + rs.getLong(1));
        }
    }
}
