/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package br.com.dao;

import br.com.model.Servico;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Yuri Bruno
 */
public class ServicoDAO implements InterfaceDAO<Servico>{
    private Connection con;
    
    public ServicoDAO(){
        this.con = new ConnectionFactory().getConnection();
    }

    @Override
    public void adiciona(Servico entidade) throws SQLException {
        String sql = "insert into servicos ("
                + "id,"
                + "nome,"
                + "descricao,"
                + "custoInstalacao,"
                + "custoManutencao,"
                + "disponibilidade,"
                + "tipo)"
                + "values (?,?,?,?,?,?,?)";
        
        try(PreparedStatement stmt = con.prepareStatement(sql)){
            stmt.setString(1, entidade.getId());
            stmt.setString(2, entidade.getNome());
            stmt.setString(3, entidade.getDescricao());
            stmt.setString(4, entidade.getCustoInstalacao());
            stmt.setString(5, entidade.getCustoManutençao());
            stmt.setString(6, entidade.getDisponibilidade());
            stmt.setString(7, entidade.getTipo());
            
            stmt.executeUpdate();
        } catch(SQLException ex){
            throw new RuntimeException(ex);
        } finally {
            con.close();
        }
    }

    @Override
    public void altera(Servico entidade) throws SQLException {
        String sql = "update servicos set "
                + "nome = ?,"
                + "descricao = ?,"
                + "custoInstalacao = ?,"
                + "custoManutencao = ?,"
                + "disponibilidade = ?,"
                + "tipo = ?"
                + "where id = ?";
        
        try(PreparedStatement stmt = con.prepareStatement(sql)){
            stmt.setString(1, entidade.getNome());
            stmt.setString(2, entidade.getDescricao());
            stmt.setString(3, entidade.getCustoInstalacao());
            stmt.setString(4, entidade.getCustoManutençao());
            stmt.setString(5, entidade.getDisponibilidade());
            stmt.setString(6, entidade.getTipo());
            stmt.setString(7, entidade.getId());
            
            stmt.executeUpdate();
        } catch(SQLException ex){
            throw new RuntimeException(ex);
        } finally {
            con.close();
        }
    }

    @Override
    public void deleta(Servico entidade) throws SQLException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Servico lista(String pesquisa) throws SQLException {
        Servico entidade = new Servico();
        String sql = "select * from pessoa where id = ?";
        PreparedStatement stmt = null;
        ResultSet rs = null;
        try{
            stmt = con.prepareStatement(sql);
            
            stmt.setString(1, entidade.getId());
            rs = stmt.executeQuery();
            
            if(rs.next()){
                entidade.setId(rs.getString("id"));
                entidade.setNome(rs.getString("nome"));
                entidade.setDescricao(rs.getString("descricao"));
                entidade.setCustoInstalacao(rs.getString("custoInstalacao"));
                entidade.setCustoManutençao(rs.getString("custoManutencao"));
                entidade.setDisponibilidade(rs.getString("disponibilidade"));
                entidade.setTipo(rs.getString("tipo"));
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
    public List<Servico> listaTudo() throws SQLException {
        List<Servico>servicos = new ArrayList<Servico>();
        String sql = "select * from usuario";
        PreparedStatement stmt = null;
        ResultSet rs = null;
        
        try{
            stmt = con.prepareStatement(sql);
            
            rs = stmt.executeQuery();
            Servico entidade = null;
            
            while(rs.next()){ 
                entidade.setId(rs.getString("id"));
                entidade.setNome(rs.getString("nome"));
                entidade.setDescricao(rs.getString("descricao"));
                entidade.setCustoInstalacao(rs.getString("custoInstalacao"));
                entidade.setCustoManutençao(rs.getString("custoManutencao"));
                entidade.setDisponibilidade(rs.getString("disponibilidade"));
                entidade.setTipo(rs.getString("tipo"));
                
                servicos.add(entidade);
            }
        } catch (SQLException ex){
            throw new RuntimeException(ex);
        } finally{
            stmt.close();
            rs.close();
            con.close();
        }
        
        return servicos;
    }

    @Override
    public boolean pesquisa(String pesquisaA, String pesquisaB) throws SQLException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public String tipo(String pesquisaA, String pesquisaB) throws SQLException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
