/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Services;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.ArrayList;


import Beans.*;
import Services.*;
import Constants.*;
import java.math.BigDecimal;
/**
 *
 * @author misoo
 */
public class OrderDetail {
    
    
    public static List<String> getInfo(String email, String name, String address, String city, String state, String zipcode) throws SQLException{
        String mail = "";
        String n = "";
        String cid = "";
        String add = "";
        String ct = "";
        String st = "";
        String zip = "";
        String date = "";
        List<String> list = new ArrayList<String>();
        Statement statement = null;
        Connection dbcon = null;
        ResultSet rs = null;   
        try{
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                dbcon = DriverManager.getConnection(MysqlConfig.URL, MysqlConfig.USER, MysqlConfig.PASS);
                statement = dbcon.createStatement();
               
                String query = "SELECT email, name, customerID, address, city, state, zipcode, date FROM customer where email = " + "'" + email + "'" + " and name = " + "'" + name + "'"
                        + " and address = " + "'" + address + "'" + " and city = " + "'" + city + "'" + " and city = " + "'" + city + "'" + " and state = " + "'" + state + "'" + " and zipcode = " + zipcode;

                rs = statement.executeQuery(query);
                while(rs.next()){
                  mail = rs.getString("email");
                  n = rs.getString("name");
                  cid = rs.getString("customerID");
                  add = rs.getString("address");
                  ct = rs.getString("city");
                  st = rs.getString("state");
                  zip = rs.getString("zipcode");
                  
                  date = rs.getString("date");
                  list.add(cid);
                  list.add(n);
                  list.add(mail);
                  list.add(add);
                  list.add(ct);
                  list.add(st);
                  list.add(zip);
                  list.add(date);
                  
                   
                }

                rs.close();
                statement.close();
                dbcon.close();

        }
         catch(Exception e){
            e.printStackTrace();
            
	}
        finally {
            if(rs != null){
            rs.close();}
            if(statement !=null ){
            statement.close();
            }
            
            if(dbcon !=null){
            dbcon.close();}
        }
      
        return list;
    }

    
}
