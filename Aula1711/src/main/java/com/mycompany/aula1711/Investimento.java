package com.mycompany.aula1711;


public class Investimento {
    private int id;
    private double valor;
    private Administradora adm;

    public Investimento(int id, double valor, Administradora adm) {
        this.id = id;
        this.valor = valor;
        this.adm = adm;
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

    public Administradora getAdm() {
        return adm;
    }

    public void setAdm(Administradora adm) {
        this.adm = adm;
    }
}
