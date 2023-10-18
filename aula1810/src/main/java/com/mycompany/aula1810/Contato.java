
package com.mycompany.aula1810;


public class Contato {
    private String Contato;
    private String Tipo;

    public Contato(String Contato, String Tipo){
        this.Contato = Contato;
        this.Tipo = Tipo;
    }
    
    public String getContato() {
        return Contato;
    }

    public void setContato(String Contato) {
        this.Contato = Contato;
    }

    public String getTipo() {
        return Tipo;
    }

    public void setTipo(String Tipo) {
        this.Tipo = Tipo;
    }
    
    
}
