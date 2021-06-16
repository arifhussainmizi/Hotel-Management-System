/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package project;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import javax.swing.JOptionPane;

/**
 *
 * @author Arif
 */
public class tables {
    
    public static void main(String[] args) throws SQLException{
    
        Connection con = null;
        Statement st = null;
        
        try{
        
            con = ConnectionProvider.getCon();
            st = con.createStatement();
           // st.executeUpdate("create table users (name varchar(200), email varchar(200) NOT NULL, password varchar(200), securityQuestion varchar(256),answer varchar(200), address varchar(256), status varchar (20), PRIMARY KEY(email))");
          // st.executeUpdate("create table room (roomNo varchar(20), roomType varchar(200), bed varchar(100), price int, status varchar(100))");
          st.executeUpdate("create table customer (id int, name varchar(200), mobileNumber varchar(20), nationality varchar(100), gender varchar(50), email varchar(200), idProof varchar(200), address varchar(500), checkIn varchar(50),roomNo varchar(10), bed varchar(100), roomType int(100), pricePerDay int(10), numberOfDaysStay int(10), totalAmount varchar(100), checkOut varchar(50))");
           JOptionPane.showMessageDialog(null, "Table create Successfully");
        
        }catch(Exception ex){
            
            JOptionPane.showMessageDialog(null, ex);
        
        }
        finally{
        
            try{}catch(Exception ex){
            
                con.close();
                st.close();
            
            }
        
        }
        
        
    
    }
    
}
