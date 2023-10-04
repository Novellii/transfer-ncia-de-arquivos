package com.mycompany.mesasammy;

public class FonteAlimentacao {
    private int Tensao;
    private int Carga;
    private String PadraoUtilizado;
    
    public FonteAlimentacao(int Tensao, int Carga, String PadraoUtilizado){
        Tensao = this.Tensao;
        Carga = this.Carga;
        PadraoUtilizado = this.PadraoUtilizado;
    }

    public int getTensao() {
        return Tensao;
    }

    public void setTensao(int Tensao) {
        this.Tensao = Tensao;
    }

    public int getCarga() {
        return Carga;
    }

    public void setCarga(int Carga) {
        this.Carga = Carga;
    }

    public String getPadraoUtilizado() {
        return PadraoUtilizado;
    }

    public void setPadraoUtilizado(String PadraoUtilizado) {
        this.PadraoUtilizado = PadraoUtilizado;
    }
}
