package com.mycompany.aula1810;
import java.util.*;

public class Editora {
    private String nome;
    private String email;
    private List<Livro> Livros;

    public Editora(String nome, String email){
        this.nome = nome;
        this.email = email;
    }
    
    public void adicionarLivro(Livro l){
        Livros.add(l);
    }
    
    public void removerLivro(Livro l){
        Livros.remove(l);
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
