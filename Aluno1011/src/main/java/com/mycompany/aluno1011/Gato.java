/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.aluno1011;

/**
 *
 * @author alunolab07
 */
public class Gato extends Felino implements Pet {
        @Override
    public void fazerBarulho(){
          System.out.println("Miau!!!");
    }
    
    @Override
    public void passear(){
         System.out.println("Gato Feliz.");
    }
}
