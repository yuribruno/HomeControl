/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package br.com.model;

/**
 *
 * @author Yuri Bruno
 */
public class Servico {
    private String id;
    private String nome;
    private String descricao;
    private String custoInstalacao;
    private String custoManutençao;
    private String Disponibilidade;
    private String tipo;
    
    public Servico() {
        
    }

    /**
     * @return the id
     */
    public String getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(String id) {
        this.id = id;
    }

    /**
     * @return the nome
     */
    public String getNome() {
        return nome;
    }

    /**
     * @param nome the nome to set
     */
    public void setNome(String nome) {
        this.nome = nome;
    }

    /**
     * @return the descricao
     */
    public String getDescricao() {
        return descricao;
    }

    /**
     * @param descricao the descricao to set
     */
    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    /**
     * @return the custoInstalacao
     */
    public String getCustoInstalacao() {
        return custoInstalacao;
    }

    /**
     * @param custoInstalacao the custoInstalacao to set
     */
    public void setCustoInstalacao(String custoInstalacao) {
        this.custoInstalacao = custoInstalacao;
    }

    /**
     * @return the custoManutençao
     */
    public String getCustoManutençao() {
        return custoManutençao;
    }

    /**
     * @param custoManutençao the custoManutençao to set
     */
    public void setCustoManutençao(String custoManutençao) {
        this.custoManutençao = custoManutençao;
    }

    /**
     * @return the Disponibilidade
     */
    public String getDisponibilidade() {
        return Disponibilidade;
    }

    /**
     * @param Disponibilidade the Disponibilidade to set
     */
    public void setDisponibilidade(String Disponibilidade) {
        this.Disponibilidade = Disponibilidade;
    }

    /**
     * @return the tipo
     */
    public String getTipo() {
        return tipo;
    }

    /**
     * @param tipo the tipo to set
     */
    public void setTipo(String tipo) {
        this.tipo = tipo;
    }
    
    
}
