package com.mycompany.prova29;
import java.util.*;

public class Autor {
    private String nome;
    private ArrayList listaPublicacao;
    private static ArrayList<Autor> historicoAutores = new ArrayList<Autor>();;
    
    public Autor (String nome){
       this.nome = nome;
       this.listaPublicacao = new ArrayList<Publicacao>();
       historicoAutores.add(this);
    }
    
    public static void verificarAutores(){
       for (Autor a: historicoAutores){
          a.imprimirInformacao(); 
       }
    }
    
    public void imprimirInformacao(){
      System.out.println(this.nome);
    }
    
    public void adicionarPublicacao(Publicacao p){
      listaPublicacao.add(p);
      }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }
}
