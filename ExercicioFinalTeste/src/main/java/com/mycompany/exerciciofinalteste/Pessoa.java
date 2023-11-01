package com.mycompany.exerciciofinalteste;

public class Pessoa {
    public String nome;
    public String cpf;
    
    public Pessoa(String nome, String cpf){
      this.cpf = cpf;
      this.nome = nome;
    }
    
    public void imprimirLista(){
    }
    
    public String getNome(){
      return this.nome;
    }
    
    public void setNome(String nome){
      this.nome = nome;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }
}
