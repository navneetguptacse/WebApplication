
package com.db;

import java.sql.*;


public class DBConnect {
    Connection con = null;
    public Connection getConnect(){
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","Oracle");     
        } catch(Exception e) {
            System.out.println(e.toString());
        }
        return con;
    }
}
