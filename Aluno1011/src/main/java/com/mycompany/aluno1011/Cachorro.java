package com.mycompany.aluno1011;

public class Cachorro extends Canino implements Pet {
        @Override
    public void fazerBarulho(){
      System.out.println("Au Au");
    }
    
    @Override
    public void passear(){
      System.out.println("Cachorro Feliz.");
    }
}
