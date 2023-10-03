package com.mycompany.mesasammy;
import java.util.*;

public class PlaystationPortatil {
    ArrayList Mods = new ArrayList(); 
    Set<String> JogosPsP = new HashSet();    
    Map<String, String> CodigoJogos = new HashMap<>();

    public Map<String, String> getCodigoJogos(){
        return this.CodigoJogos;
    }
       
    public void setCodigoJogos (Map<String, String> CodigoJogos){
        this.CodigoJogos = CodigoJogos;
    }
       
    public void setMods (ArrayList Mods) {
        this.Mods = Mods;    
}
    
    public ArrayList Mods(ArrayList Mods){
        return this.Mods;                
    }
    
    public void setJogosPSP (HashSet JogosPSP){
        this.JogosPsP = JogosPSP;
    }
    
    public Set<String> getJogosPSP(){
       return this.JogosPsP;
    }
    
}
