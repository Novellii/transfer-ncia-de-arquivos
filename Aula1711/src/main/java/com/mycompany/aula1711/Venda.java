package com.mycompany.aula1711;

public class Venda {
    private int id;
    private double valor;
    private Comercio com;

    public Venda(int id, double valor, Comercio com) {
        this.com = com;
        this.id = id;
        this.valor = valor;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public double getValor() {
        return valor;
    }

    public void setValor(double valor) {
        this.valor = valor;
    }
}
