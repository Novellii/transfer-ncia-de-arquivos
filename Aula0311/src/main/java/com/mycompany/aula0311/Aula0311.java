package com.mycompany.aula0311;

import java.util.ArrayList;
import java.util.List;
import java.util.*;

public class Aula0311 {

    public static void main(String[] args) {
        
        Funcionario f1 = new Funcionario("212332", "Advogato", "Jonas", 2312321);
        Funcionario f2 = new Funcionario("532324", "Médica", "Jesse", 2421411);
        
        Cliente c1 = new Cliente("Joellane", "232132314", "Jelly", 123126);
        Cliente c2 = new Cliente("Kelvin", "709586789", "Hellv" , 986375);
        
        c1.adicionarCompra(223123, 12);
        c1.adicionarCompra(378322, 54);
        c2.adicionarCompra(31224, 52);
        c2.adicionarCompra(78568, 12);
        
        
        List<Usuario> usuariosGeral = new ArrayList<Usuario>();
        
        usuariosGeral.add(c1);
        usuariosGeral.add(c2);
        usuariosGeral.add(f1);
        usuariosGeral.add(f2);
        
        for (Usuario u: usuariosGeral){
           u.imprimir();
        }        
    }
}
