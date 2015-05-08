/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package br.com.integrator;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.jms.ConnectionFactory;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

/**
 *
 * @author Yuri Bruno
 */
public class LoginDao {
    public static boolean validate(String email, String senha){
        boolean status = false;
        try{
            Class.forName("PostgreSQL");
            Connection con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/HomeControl", "postgres", "yuriengcomp153");
            
            PreparedStatement ps = con.prepareStatement("select * from usuario where email=? and senha=?");
            ps.setString(1, email);
            ps.setString(2, senha);
            
            ResultSet rs = ps.executeQuery();
            status = rs.next();
            rs.close();
            
            System.out.println("Validado!");
        
        } catch(Exception E){
            System.out.println(E);
        }
         
        return status;        
    }
    
    public static boolean cadastro(String email, String senha, String cpf){
        boolean status = false;
        
        try{
            Class.forName("PostgreSQL");
            Connection con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/HomeControl", "postgres", "yuriengcomp153");
            
            PreparedStatement ps = con.prepareStatement("insert into usuario" + "(dafault,email,senha,cpf)");
            ps.setString(1, email);
            ps.setString(2, senha);
            ps.setString(3, cpf);
            
            ResultSet rs = ps.executeQuery();
            status = rs.next();
            rs.close();
            
        } catch(Exception E){
            System.out.println(E);
        }
        return status;
    }
    
}
