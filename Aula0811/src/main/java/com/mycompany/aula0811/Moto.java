package com.mycompany.aula0811;

public class Moto extends Veiculo implements vTerrestre {
    
    @Override
    public void abastecer(){
       System.out.println("Abastecendo com Gasolina...");
    }
    
    @Override
    public void andar(){
       System.out.println("Dando Grau.");
    }
    
    
}
