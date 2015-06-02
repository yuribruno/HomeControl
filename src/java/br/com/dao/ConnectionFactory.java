/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package br.com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Yuri Bruno
 */
public class ConnectionFactory {
    public Connection getConnection(){
        try{
            Class.forName("org.postgresql.Driver").newInstance();
            return
                    DriverManager.getConnection("jdbc:postgresql://localhost:5432/HomeControl", "postgres", "yuriengcomp153");
        } catch(SQLException ex){
            System.out.println("SQLException: " + ex.getMessage());
            System.out.println("SQLState: " + ex.getSQLState());
            System.out.println("VendorError: " + ex.getErrorCode());
        } catch(ClassNotFoundException e){
            throw new RuntimeException(e);
        } catch (InstantiationException | IllegalAccessException ex) {
            Logger.getLogger(ConnectionFactory.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
}
