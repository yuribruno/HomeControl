/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package br.com.dao;

import br.com.model.Usuario;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
/**
 *
 * @author Yuri Bruno
 */
public class UsuarioDAO implements InterfaceDAO<Usuario>{
    private Connection con;
    
    public UsuarioDAO(){
        this.con = new ConnectionFactory().getConnection();
    }

    @Override
    public void adiciona(Usuario entidade) throws SQLException {             
        String sql = "insert into usuario ("
                + " nome,"
                + " snome,"
                + " cep,"
                + " endereco,"
                + " cidade,"
                + " estado,"
                + " bairro,"
                + " numero,"
                + " complemento,"
                + " rg,"
                + " cpf,"
                + " tel,"
                + " email,"
                + " senha,"
                + " datanasc)"
                + " values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        
        try(PreparedStatement stmt = con.prepareStatement(sql)) {
            stmt.setString(1, entidade.getNome());
            stmt.setString(2, entidade.getSnome());
            stmt.setString(3, entidade.getCep());
            stmt.setString(4, entidade.getEndereco());
            stmt.setString(5, entidade.getEstado());
            stmt.setString(6, entidade.getCidade());
            stmt.setString(7, entidade.getBairro());
            stmt.setString(8, entidade.getNumero());
            stmt.setString(9, entidade.getComplemento());
            stmt.setString(10, entidade.getRg());
            stmt.setString(11, entidade.getCpf());
            stmt.setString(12, entidade.getCel());
            stmt.setString(13, entidade.getEmail());
            stmt.setString(14, entidade.getSenha());
            stmt.setString(15, entidade.getDateNasc());
            
            
            stmt.executeUpdate();
        } catch(SQLException ex){
            throw new RuntimeException(ex);
        } finally {
            con.close();
        }
        
    }

    @Override
    public void altera(Usuario entidade) throws SQLException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void deleta(Usuario entidade) throws SQLException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Usuario lista(String pesquisa) throws SQLException {
        Usuario entidade = new Usuario();
        String sql = "select * from usuario where email = ?";
        PreparedStatement stmt = null;
        ResultSet rs = null;
        try{
            stmt = con.prepareStatement(sql);
            
            stmt.setString(1, entidade.getEmail());
            rs = stmt.executeQuery();
            
            if(rs.next()){
                entidade.setNome(rs.getString("nome"));
                entidade.setSnome(rs.getString("snome"));
                entidade.setCep(rs.getString("cep"));
                entidade.setEndereco(rs.getString("endereco"));
                entidade.setEstado(rs.getString("endereco"));
                entidade.setCidade(rs.getString("cidade"));
                entidade.setBairro(rs.getString("bairro"));
                entidade.setNumero(rs.getString("numero"));
                entidade.setComplemento(rs.getString("complemento"));
                entidade.setRg(rs.getString("rg"));
                entidade.setCpf(rs.getString("cpf"));
                entidade.setCel(rs.getString("tel"));
                entidade.setEmail(rs.getString("email"));
                entidade.setSenha(rs.getString("senha"));
                entidade.setDateNasc(rs.getString("datanasc"));
            }
        } catch (SQLException ex){
            throw new RuntimeException(ex);
        } finally{
            stmt.close();
            rs.close();
            con.close();
        }
        
        return entidade;
    }

    @Override
    public List<Usuario> listaTudo() throws SQLException {
        List<Usuario>usuario = new ArrayList<Usuario>();
        String sql = "select * from usuario";
        PreparedStatement stmt = null;
        ResultSet rs = null;
        
        try{
            stmt = con.prepareStatement(sql);
            
            rs = stmt.executeQuery();
            Usuario entidade = null;
            
            while(rs.next()){ 
                entidade.setNome(rs.getString("nome"));
                entidade.setSnome(rs.getString("snome"));
                entidade.setCep(rs.getString("cep"));
                entidade.setEndereco(rs.getString("endereco"));
                entidade.setEstado(rs.getString("endereco"));
                entidade.setCidade(rs.getString("cidade"));
                entidade.setBairro(rs.getString("bairro"));
                entidade.setNumero(rs.getString("numero"));
                entidade.setComplemento(rs.getString("complemento"));
                entidade.setRg(rs.getString("rg"));
                entidade.setCpf(rs.getString("cpf"));
                entidade.setCel(rs.getString("tel"));
                entidade.setEmail(rs.getString("email"));
                entidade.setSenha(rs.getString("senha"));
                entidade.setDateNasc(rs.getString("datanasc"));
                
                usuario.add(entidade);
            }
        } catch (SQLException ex){
            throw new RuntimeException(ex);
        } finally{
            stmt.close();
            rs.close();
            con.close();
        }
        
        return usuario;
    }

    @Override
    public boolean pesquisa(String pesquisaA, String pesquisaB) throws SQLException {
        boolean status = false;
        String sql = "select * from usuario where email = ? and senha = ?";
        PreparedStatement stmt = null;
        ResultSet rs = null;
        try{
            stmt = con.prepareStatement(sql);
            
            stmt.setString(1, pesquisaA);
            stmt.setString(2, pesquisaB);
            
            rs = stmt.executeQuery();
            status = rs.next();
            
        } catch (SQLException ex){
            throw new RuntimeException(ex);
        } finally{
            stmt.close();
            rs.close();
            con.close();
        }
        
        return status;
    }

    @Override
    public String tipo(String pesquisaA, String pesquisaB) throws SQLException {
        String tipo = null;
        String sql = "select tipo from usuario where email = ? and senha = ?";
        PreparedStatement stmt;
        ResultSet rs;
        try{
            stmt = con.prepareStatement(sql);
            
            stmt.setString(1, pesquisaA);
            stmt.setString(2, pesquisaB);
            
            rs = stmt.executeQuery();
            while(rs.next()){
                tipo = rs.getString("tipo");
            }
            
        } catch (SQLException ex){
            throw new RuntimeException(ex);
        } finally{
            con.close();
        }
        
        return tipo;
    }
    
}
