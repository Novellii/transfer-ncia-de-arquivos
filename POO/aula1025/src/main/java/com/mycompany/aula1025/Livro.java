package com.mycompany.aula1025;

public class Livro extends Produto{
    public String autor;
    public int paginas;

    public Livro(String autor, int paginas, String nome, double preco) {
        super(nome, preco);
        this.autor = autor;
        this.paginas = paginas;
    }
    
    
    
}
