package com.mycompany.aluno1011;
import java.util.*;

public class Aluno1011 {

    public static void main(String[] args) {
        Hipopótamo hi = new Hipopótamo();
        Cachorro ca = new Cachorro();
        Lobo lo = new Lobo();
        Leão le = new Leão();
        Gato ga = new Gato();
        Tigre ti = new Tigre();        
        
        System.out.println("Bem vindo ao meu Zoológico");
        
        List<Animal> zoo = new ArrayList<>();
        zoo.add(hi);
        zoo.add(ca);
        zoo.add(lo);
        zoo.add(le);
        zoo.add(ga);
        zoo.add(ti);
        
        for (Animal a1: zoo){
          a1.fazerBarulho();
        }
        
        System.out.println("Passeando com meus Pets");
        
        List<Pet> apart = new ArrayList<>();
        apart.add(ga);
        apart.add(ca);
        
        for (Pet p: apart){
           p.passear();
        }
        
        
    }
}
