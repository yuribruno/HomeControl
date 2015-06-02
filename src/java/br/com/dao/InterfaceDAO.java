/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package br.com.dao;

import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author Yuri Bruno
 * @param <T>
 */
public interface InterfaceDAO <T>{
    public void adiciona (T entidade) throws SQLException;
    
    public void altera (T entidade) throws SQLException;
    
    public void deleta (T entidade) throws SQLException;
    
    public T lista(String pesquisa) throws SQLException;
    
    public List<T>listaTudo()throws SQLException;
    
    public boolean pesquisa(String pesquisaA, String pesquisaB) throws SQLException;
    
    public String tipo(String pesquisaA, String pesquisaB) throws SQLException;
}
