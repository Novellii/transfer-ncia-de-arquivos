package com.mycompany.aula1810;
import java.util.*;

public class Autor {
    private String nome;
    private String abreviatura;
    private List<Contato> contatos;

    public Autor(String nome, String abreviatura) {
        this.nome = nome;
        this.abreviatura = abreviatura;
        this.contatos = new ArrayList<>();
    }

    public void adicionarContato(String c, String t){
        Contato contatoTemporario = new Contato(c, t, this);
        this.contatos.add(contatoTemporario);
    }
    
    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getAbreviatura() {
        return abreviatura;
    }

    public void setAbreviatura(String abreviatura) {
        this.abreviatura = abreviatura;
    }

    public List<Contato> getContatos() {
        return contatos;
    }    
}
