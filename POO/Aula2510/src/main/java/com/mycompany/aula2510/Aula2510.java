package com.mycompany.aula2510;
import java.util.*;

public class Aula2510 {

    public static void main(String[] args) {
        CD c1 = new CD(2, "BLACK SABBATH", "MASTER OF REALITY", 120 );
        
        DVD d1 = new DVD(3, "Iron maiden", "Reaper of souls", 120);
        
        Livro l1 = new Livro("Machado Assis", 12, "jdajs", 140);
        
        List<Produto> listaGeral = new ArrayList<>();
        
        listaGeral.add(d1);
        listaGeral.add(c1);
        listaGeral.add(l1);
        
        for (Produto p:listaGeral){
            System.out.println(p.getPreco());
        }
        
    }
}
