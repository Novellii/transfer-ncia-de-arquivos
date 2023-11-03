package com.mycompany.aula0311;

public class Compra {
    private int id;
    private int valor;
    private Cliente cliente;

    public Compra(int id, int valor, Cliente cliente) {
        this.id = id;
        this.valor = valor;
    }

    public int getId() {
        return id;
    }

    public int getValor() {
        return valor;
    }

    public void setValor(int valor) {
        this.valor = valor;
    }    
}
