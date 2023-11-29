package com.mycompany.prova29;
import java.util.*;

public class Publicacao {
    public static int qntdAutores = 0;
    public String titulo;
    public int caracteres;
    public List listaAutores;
    
    public Publicacao(String titulo, int caracteres){
       this.qntdAutores += 1;
       this.titulo = titulo;
       this.caracteres = caracteres;
       this.listaAutores = new ArrayList<Autor>();
    }
    
    public void adicionarAutor(Autor a){
       listaAutores.add(a);
       a.adicionarPublicacao(this);
    }
}
