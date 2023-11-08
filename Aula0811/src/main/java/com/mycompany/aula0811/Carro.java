package com.mycompany.aula0811;

public class Carro extends Veiculo implements vTerrestre {
    
    @Override
    public void abastecer(){
      System.out.println("Abastecendo com Gasolina.");
    }
    
    @Override
    public void andar(){
       System.out.println("Dirigindo...");
    }
}
