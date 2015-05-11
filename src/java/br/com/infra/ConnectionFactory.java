/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package br.com.infra;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Yuri Bruno
 */
public class ConnectionFactory {
    public Connection getConnection(){
        try{
            Class.forName("PostgreSQL");
            return
                    DriverManager.getConnection("jdbc:postgresql://localhost:5432/HomeControl","","");
        } catch(SQLException e){
            throw new RuntimeException(e);
        } catch(ClassNotFoundException e){
            throw new RuntimeException(e);
        }
    }
}
