package com.mycompany.aula0811;

public class Barco extends Veiculo  {
    
    @Override
    public void abastecer(){
      System.out.println("Abastecendo com Diesel.");
    }
    
    public void navegar(){
      System.out.println("Navegando...");
    }
    
}
