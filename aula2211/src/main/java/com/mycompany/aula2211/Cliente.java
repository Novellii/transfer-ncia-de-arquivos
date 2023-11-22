package com.mycompany.aula2211;
import java.util.*;

public class Cliente {
    private Pagamento pag;
    private String nome;
    private String cpf;

    public Cliente(String nome, String cpf) {
        this.nome = nome;
        this.cpf = cpf;
    }
    
    public void imprimirCompras(){
        System.out.println(pag.getId() + pag.getTipoPagamento() + pag.getValorOriginal());
    }
    
    public void fazerPagamento(int id, double valorOriginal, double valorCalculado, int tipoPagamento){
       Pagamento p1 = new Pagamento(this, id, valorOriginal, valorCalculado, tipoPagamento);
       ArrayList listaPagamentos = new ArrayList <Pagamento>();
       listaPagamentos.add(p1);
    }
    

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }
    
    
}
