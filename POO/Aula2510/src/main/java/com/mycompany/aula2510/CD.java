package com.mycompany.aula2510;

public class CD extends Midia {
    private int faixas;

    public CD (int faixas, String artista, String nome, double preco){
        super(artista, nome, preco);
        this.faixas = faixas;
    }

    public int getFaixas() {
        return faixas;
    }

    public void setFaixas(int faixas) {
        this.faixas = faixas;
    }
}
