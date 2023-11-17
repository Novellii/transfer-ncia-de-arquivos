package com.mycompany.aula1711;

public abstract class Cliente {
    public String usuario;

    public Cliente(String usuario) {
        this.usuario = usuario;
    }
    
    public abstract void imprimir();
}
