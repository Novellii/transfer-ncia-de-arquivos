package com.mycompany.aula2510;

public class DVD extends Midia {
    private int duracao;

    public DVD(int duracao, String artista, String nome, double preco) {
        super(artista, nome, preco);
        this.duracao = duracao;
    }

    public int getDuracao() {
        return duracao;
    }

    public void setDuracao(int duracao) {
        this.duracao = duracao;
    }
    
}
