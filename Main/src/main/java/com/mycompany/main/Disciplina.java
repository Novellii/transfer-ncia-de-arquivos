package com.mycompany.main;

public class Disciplina {
    private String nome;
    private Professor p;

    public Disciplina(String nome, Curso c) {
        this.nome = nome;
    }
    
    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }
}
