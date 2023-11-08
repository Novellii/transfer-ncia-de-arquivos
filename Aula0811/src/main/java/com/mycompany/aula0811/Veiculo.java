package com.mycompany.aula0811;

 public abstract class Veiculo {
     
    private int qntdRodas;

    public Veiculo(int qntdRodas) {
        this.qntdRodas = qntdRodas;
    }

    public int getQntdRodas() {
        return qntdRodas;
    }

    public void setQntdRodas(int qntdRodas) {
        this.qntdRodas = qntdRodas;
    }
    
    public abstract void abastecer();
}
