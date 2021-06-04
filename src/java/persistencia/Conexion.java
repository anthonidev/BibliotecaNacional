package persistencia;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conexion {
   Connection con;
   String url="jdbc:mysql://localhost:3306/bibliotecanacional";
   String user="root";
   String pass="";
   public Connection getConexion(){
       
       try {
           Class.forName("com.mysql.jdbc.Driver");
               con=DriverManager.getConnection(url,user,pass);
       } catch (Exception e) {
       }
       return con;
       
   }

   
}
