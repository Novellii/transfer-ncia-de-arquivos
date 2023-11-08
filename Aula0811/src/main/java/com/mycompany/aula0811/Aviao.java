/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.aula0811;

/**
 *
 * @author alunodev07
 */
public class Aviao extends Veiculo {
    
    @Override
    public void abastecer(){
       System.out.println("Abastecendo com Querosene.");
    }
    
    public void voar(){
      System.out.println("Voando...");
    }
}
