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
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Yuri Bruno
 */
public class CadastroDao {
    public static boolean cadastrar(Usuario usuario){
        boolean status = false;
        
        String sql = "INSERT INTO usuario(EMAIL, SENHA, CPF) VALUES (?,?,?)";
        Connection con;
        try{
            System.out.print("test");
            Class.forName("org.postgresql.Driver").newInstance();
            con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/HomeControl", "postgres", "yuriengcomp153");
            
            System.out.println("Conexão realizada com sucesso.");
            
            PreparedStatement stmt = con.prepareStatement(sql);
            
            stmt.setString(1, usuario.getEmail());
            stmt.setString(2, usuario.getSenha());
            stmt.setString(3, usuario.getCpf());
            
            stmt.executeUpdate();
            
            con.close();
            
            status = true;
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
