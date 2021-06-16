
package project;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Arif
 */
public class ConnectionProvider {
    
    public static Connection getCon(){
    
        try{
        
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:Mysql://localhost:3306/hotel","root","");
            return con;
        
        }catch(Exception ex){
            return null;
        }
    
    }
    
}
