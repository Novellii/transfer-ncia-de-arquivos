package com.mycompany.aula2510;

public class Produto {
    public String nome;
    public double preco;

    public Produto (String nome, double preco){
        this.nome = nome;
        this.preco = preco;
    }
    
    public boolean ehCaro(){
       return (preco > 100);
    }
    
    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public double getPreco() {
        return preco;
    }

    public void setPreco(double preco) {
        this.preco = preco;
    }
    
    
}
