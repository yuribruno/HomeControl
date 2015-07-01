/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package br.com.dao;

import br.com.model.Servico;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author Yuri Bruno
 */
public interface InterfaceOrcamentoDAO <T>{
    public void adicionaOrcamento (T entidade) throws SQLException;
    
    public void deletaOrcamento (T entidade) throws SQLException;
    
    public T lista(String pesquisa) throws SQLException;
}
