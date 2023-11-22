package com.mycompany.aula2211;

public class Pagamento implements Avista, Cartao, Pix{
    private Cliente cli;
    private int id;
    private double valorOriginal;
    private double valorCalculado;
    private int tipoPagamento;

    public Pagamento(Cliente cli, int id, double valorOriginal, double valorCalculado, int tipoPagamento) {
        this.cli = cli;
        this.id = id;
        this.valorOriginal = valorOriginal;
        this.valorCalculado = valorCalculado;
        this.tipoPagamento = tipoPagamento;
    }
    
    public void CalcularPagamento(){
        if (tipoPagamento == 1) {
           calcularAVista();
        } else if (tipoPagamento == 2){
           calcularCartao();
        } else
            calcularPix();
    }

    @Override
    public double calcularAVista(){
       valorCalculado = (valorOriginal * 10) / 100;
       return valorCalculado;
    }
    
    @Override
    public double calcularCartao(){
       valorCalculado = (valorOriginal * 5) / 100;
       return valorCalculado;
    }
    
    @Override
    public double calcularPix(){
       valorCalculado = (valorOriginal * 5) / 100;
       return valorCalculado;
    }
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public double getValorOriginal() {
        return valorOriginal;
    }

    public void setValorOriginal(double valorOriginal) {
        this.valorOriginal = valorOriginal;
    }

    public double getValorCalculado() {
        return valorCalculado;
    }

    public void setValorCalculado(double valorCalculado) {
        this.valorCalculado = valorCalculado;
    }

    public int getTipoPagamento() {
        return tipoPagamento;
    }

    public void setTipoPagamento(int tipoPagamento) {
        this.tipoPagamento = tipoPagamento;
    }

    
    
    
}
