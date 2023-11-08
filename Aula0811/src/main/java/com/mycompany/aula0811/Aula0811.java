package com.mycompany.aula0811;

import java.util.*;

public class Aula0811 {

    public static void main(String[] args) {
        Moto m1 = new Moto();
        Carro c1 = new Carro();
        Aviao a1 = new Aviao();
        Barco b1 = new Barco();
        
        List<vTerrestre> listVTerrestres = new ArrayList<vTerrestre>();
        listVTerrestres.add(c1);
        listVTerrestres.add(m1);        
        
        System.out.println("Tudo certo por enquanto...");
    }
}
