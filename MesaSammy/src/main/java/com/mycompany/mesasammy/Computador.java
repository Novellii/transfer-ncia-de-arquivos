package com.mycompany.mesasammy;

public class Computador {
    public FoneOuvido foneouvido;  // Perguntar se é para deixar public ou private
    public ControleXbox controlexbox; // Perguntar se é para deixar public ou private
    public FonteAlimentacao fonteAlimentacao;
    private String placaDeVideo;
    private String memoriaRam;
    private String processador;
    
    public Computador(String placaDeVideo, String memoriaRam, String processador){
        this.placaDeVideo = placaDeVideo;
        this.memoriaRam = memoriaRam;
        this.processador = processador;
        this.fonteAlimentacao = new FonteAlimentacao();
    }
    
    public void setFonteAlimentacao(FonteAlimentacao fonteComputador){
        this.fonteAlimentacao = fonteComputador;
    }
    
    public FonteAlimentacao getfonteAlimentacao(){
        return this.fonteAlimentacao;
    }
    
    // Relação de Agregação;
    
    public void setControleXbox (ControleXbox controlexboxPC){
        this.controlexbox = controlexboxPC;
    }
    
    public ControleXbox getControleXbox(){
        return this.controlexbox;
}
    
    // Relação de Assossiação;
    
    public void setFoneOuvido (FoneOuvido FoneOuvidoPC){
        this.foneouvido = FoneOuvidoPC;
    }
    
    public FoneOuvido getFoneOuvido(){
        return this.foneouvido;
    }
    
    public void setPlacaDeVideo (String placaDeVideo){
        this.placaDeVideo = placaDeVideo;
    }
    
    public String getPlacaDeVideo(){
        return placaDeVideo;
    }
    
    public String getMemoriaRam(){
        return this.memoriaRam;
    }     
    
    public void setMemoriaRam(String memoriaRam){
        this.memoriaRam = memoriaRam;
    }       
    
    public String getProcessador(){
        return this.processador;
    }
    
    public void setProcessador(String processador){
        this.processador = processador;
    }
}
