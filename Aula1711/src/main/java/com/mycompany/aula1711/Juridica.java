package com.mycompany.aula1711;

public abstract class Juridica extends Cliente {
    public String nomeFantasia;
    public String cnpj;
    
    public Juridica(String nomeFantasia, String cnpj, String usuario){
        super(usuario);
        this.nomeFantasia = nomeFantasia;
        this.cnpj = cnpj;
    }
    
    private boolean validarCNPJ(){
        return false;
    }    
}
