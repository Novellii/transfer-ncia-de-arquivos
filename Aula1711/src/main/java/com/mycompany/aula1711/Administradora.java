package com.mycompany.aula1711;

public class Administradora extends Juridica implements InstituicaoFinanceira {
    private double taxaCorretagem;
    private boolean plataformaOnline;
    
    public Administradora (double taxaCorretagem, boolean plataformaOnline, String nomeFantasia, String cnpj, String usuario){
      super(nomeFantasia, cnpj, usuario);
      this.taxaCorretagem = taxaCorretagem;
      this.plataformaOnline = plataformaOnline;
    }
    
    public void adicionarInvestimento(int id, double valor){
       Investimento i1 = new Investimento(id, valor, this);
    }
    
    @Override
    public void calcularAtivosFinanceiros(){
        System.out.println(1 + 1);
    }
    
    @Override
    public void imprimir(){
           System.out.println("O nome do Cliente Juridico é" + nomeFantasia);
           System.out.println("O cnpj do Cliente Juridico é" + cnpj);
           
    }

    public double getTaxaCorretagem() {
        return taxaCorretagem;
    }

    public void setTaxaCorretagem(double taxaCorretagem) {
        this.taxaCorretagem = taxaCorretagem;
    }

    public boolean isPlataformaOnline() {
        return plataformaOnline;
    }

    public void setPlataformaOnline(boolean plataformaOnline) {
        this.plataformaOnline = plataformaOnline;
    }    
}
