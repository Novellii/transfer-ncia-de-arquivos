package com.mycompany.aula2510;

public class Midia extends Produto {
    public String artista;

    public Midia(String artista, String nome, double preco) {
        super(nome, preco);
        this.artista = artista;
    }

    public String getArtista() {
        return artista;
    }

    public void setArtista(String artista) {
        this.artista = artista;
    }
    
    
}
