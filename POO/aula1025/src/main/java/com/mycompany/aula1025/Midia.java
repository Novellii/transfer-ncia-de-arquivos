package com.mycompany.aula1025;

public class Midia extends Produto{
    public String artista;

    public Midia(String artista, String nome, double preco) {
        super(nome, preco);
        this.artista = artista;
    }
    
}
