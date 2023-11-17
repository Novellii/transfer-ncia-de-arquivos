package com.mycompany.aula1711;

public class Comercio extends Juridica {
    private String ramoOperacao;
    
    public Comercio (String ramoOperacao, String nomeFantasia, String cnpj, String usuario){
        super(usuario, nomeFantasia, cnpj);
        this.ramoOperacao = ramoOperacao;
    }
    
    @Override
    public void imprimir(){
           System.out.println("O nome do Comercio Juridico é" + nomeFantasia);
           System.out.println("O cnpj do Comercio Juridico é" + cnpj);
           System.out.println("O ramo da operacao do Comercio Juridico é" + cnpj);
    }

    public String getRamoOperacao() {
        return ramoOperacao;
    }
    
    public void criarVenda(int id, int valor) {
       Venda v1 = new Venda(id, valor, this);
    }

    public void setRamoOperacao(String ramoOperacao) {
        this.ramoOperacao = ramoOperacao;
    }
}
