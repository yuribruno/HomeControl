/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package br.com.dao;

import br.com.model.Usuario;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Yuri Bruno
 */
public class LoginDao {
    public static boolean validate(Usuario usuario){
        boolean status = false;
        
        String sql = "SELECT FROM usuario WHERE email=? AND senha=?";
        Connection con;
        try{
            Class.forName("org.postgresql.Driver").newInstance();
            con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/HomeControl", "postgres", "yuriengcomp153");
            
            System.out.println("Conexão realizada com sucesso.");
            
            PreparedStatement stmt = con.prepareStatement(sql);
            
            stmt.setString(1, usuario.getEmail());
            stmt.setString(2, usuario.getSenha());
            
            ResultSet rs = stmt.executeQuery();
            status = rs.next();
            con.close();
        }
        catch (SQLException ex) {
            System.out.println("SQLException: " + ex.getMessage());
            System.out.println("SQLState: " + ex.getSQLState());
            System.out.println("VendorError: " + ex.getErrorCode());
        }
        catch (Exception e) {
            System.out.println("Problemas ao tentar conectar com o banco de dados: " + e);
        } 
        return status;
    }    
}
