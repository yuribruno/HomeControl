/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package br.com.dao;

import br.com.model.Orcamento;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author Yuri Bruno
 */
public class OrcamentoDAO implements InterfaceOrcamentoDAO<Orcamento>{
    private Connection con;
    
    public OrcamentoDAO(){
        this.con = new ConnectionFactory().getConnection();
    }

    @Override
    public void adicionaOrcamento(Orcamento entidade) throws SQLException {
        String sql = "insert into orcamento ("
                + "email,"
                + "mensagem)"
                + "values (?,?)";
        
        try(PreparedStatement stmt = con.prepareStatement(sql)){
            stmt.setString(2, entidade.getEmailCliente());
            stmt.setString(3, entidade.getMensagem());
            
            stmt.executeUpdate();
        } catch(SQLException ex){
            throw new RuntimeException(ex);
        } finally {
            con.close();
        }
    }

    @Override
    public void deletaOrcamento(Orcamento entidade) throws SQLException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Orcamento lista(String pesquisa) throws SQLException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
