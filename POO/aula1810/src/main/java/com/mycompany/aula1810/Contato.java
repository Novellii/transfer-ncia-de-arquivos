package com.mycompany.aula1810;

public class Contato {
    private String Contato;
    private String Tipo;
    private Autor autor;

    public Contato(String sContato, String Tipo, Autor autor){
        this.Contato = sContato;
        this.Tipo = Tipo;
        this.autor = autor;
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

    public Autor getAutor() {
        return autor;
    }

    public void setAutor(Autor autor) {
        this.autor = autor;
    }
}
