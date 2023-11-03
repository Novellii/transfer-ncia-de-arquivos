package com.mycompany.aula0311;

import java.util.ArrayList;
import java.util.List;

public class Cliente extends Usuario {
    public String nome;
    public String cpf;
    public List<Compra> minhasCompras;

    public Cliente(String nome, String cpf, String user, int senha) {
        super(user, senha);
        this.nome = nome;
        this.cpf = cpf;
        this.minhasCompras = new ArrayList<Compra>();
        
    }
    
    public void imprimir(){
       System.out.println("Usuário: " + this.user + " Senha: " + this.senha + " Nome: " + this.nome + " CPF: " + this.cpf);
    }
    
    public void adicionarCompra(int id, int valor){
       Compra c1 = new Compra(id, valor, this);
       this.minhasCompras.add(c1);       
    }
}
