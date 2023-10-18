package com.mycompany.aula2018;
import java.util.*;

public class Editora {
    private String nome;
    private String email;
   private List<Livro> livros;

    public Editora(String nome, String email) {
        this.nome = nome;
        this.email = email;
        this.livros = new ArrayList<Livro>();
    }
    
    public void adicionarLivro(Livro l){
        livros.add(l);
    }
    
    public void removerLivro(Livro l){
        livros.remove(l);
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    
    
}
