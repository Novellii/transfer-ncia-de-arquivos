package com.mycompany.mesasammy;
import java.util.*;

public class MesaSammy {

    public static void main(String[] args) {
        Computador computadorSammy = new Computador("GTX 1050Ti", "8 GB RAM", "I5-3470");
        ControleXbox controleSammy = new ControleXbox();
        FoneOuvido foneOuvidoSammy = new FoneOuvido();
        computadorSammy.controlexbox = controleSammy;
        computadorSammy.foneouvido = foneOuvidoSammy;
        
        computadorSammy.fonteAlimentacao.Tensao = 122;
        
        System.out.println("O processador da Sammy é "+ computadorSammy.getProcessador());
        System.out.println(computadorSammy.getControleXbox());
        System.out.println(computadorSammy.getFoneOuvido());
        System.out.println("A tensão da fonte é de "+ computadorSammy.fonteAlimentacao.Tensao + " Volts");
    
        PlaystationPortatil PSP = new PlaystationPortatil();
        
        PSP.Mods.add(0,"Metal Slug XX-Double Seven Edition");
        PSP.Mods.add(1, "Dracula X Chronicles Black Borders Patch");
            
        
        for (Object mostrarMods : PSP.Mods) {
            System.out.println(mostrarMods);
        }
        System.out.println("Temos " + PSP.Mods.size() + " Mods instalados.");        
        
       /* Coleções não indexadas sem duplicação (não pode haver 
       dois objetos iguais): 
       HashSet: usa tabela hash (dispersão);
       TreeSet: usa árvore e é ordenado (Comparable). 
       Então HashSet e TreeSet não podem ter elementos iguais?*/
       
        PSP.JogosPsP.add("Metal Slug Anthology");
        PSP.JogosPsP.add("Dracula X Chronicles");
        PSP.JogosPsP.add("Dante's Inferno");
        PSP.JogosPsP.add("LEGO Batman - The Video Game");
        PSP.JogosPsP.add("Star Wars - The Force Unleashed");
        PSP.JogosPsP.add("Grand Theft Auto - Vice City Stories");
       
        // Também não consegui entender o Interator.
        
        for (String mostrarJogos : PSP.JogosPsP) {
            System.out.println(mostrarJogos);
        }
        
        System.out.println("O tamanho da lista é de: " + PSP.JogosPsP.size());       
        // Não consegui entender o "c2.deposita(200);"
        
        PSP.CodigoJogos.put("828862300010", "Slug Anthology");
        PSP.CodigoJogos.put("4988602607291", "Dracula X Chronicles");
        PSP.CodigoJogos.put("13388260041","Dante's Inferno");
        
        System.out.println(PSP.CodigoJogos.get("13388260041"));
    }
}
