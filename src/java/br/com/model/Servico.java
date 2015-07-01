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
    private String nome;
    private String descricao;
    private String custoInstalacao;
    private String custoManutencao;
    private String Disponibilidade;
    
    public Servico() {
        
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
    public String getCustoManutencao() {
        return custoManutencao;
    }

    /**
     * @param custoManutencao the custoManutençao to set
     */
    public void setCustoManutencao(String custoManutencao) {
        this.custoManutencao = custoManutencao;
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

}
