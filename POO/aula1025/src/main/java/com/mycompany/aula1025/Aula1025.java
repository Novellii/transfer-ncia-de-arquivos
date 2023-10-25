package com.mycompany.aula1025;
import java.util.*;

public class Aula1025 {

    public static void main(String[] args) {
        
        Produto p1 = new Produto("Produto 1", 100);
        Produto p2 = new Produto("Produto 2", 200);
        
        Livro l1 = new Livro("João",100, "Livro 1", 200);
        Livro l2 = new Livro("Pedro",200, "Livro 2", 450);

        Midia m1 = new Midia("Maria", "Midia 1", 500);
        Midia m2 = new Midia("Joana", "Midia 2", 600);
        
        List<Produto> listaGeral = new ArrayList<>();
        
        listaGeral.add(p1);
        listaGeral.add(p2);
        listaGeral.add(l1);
        listaGeral.add(l2);
        listaGeral.add(m1);
        listaGeral.add(m2);
        
        for(Produto p: listaGeral){
            System.out.println("Produto: "+p.nome+" "+p.preco );
        }
        for(Produto p: listaGeral){
            p.preco = p.preco*1.1;
        }
        for(Produto p: listaGeral){
            System.out.println("Produto: "+p.nome+" "+p.preco );
        }
        

        
    }
}
