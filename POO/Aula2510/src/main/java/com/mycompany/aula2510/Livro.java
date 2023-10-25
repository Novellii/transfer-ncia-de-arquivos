package com.mycompany.aula2510;

public class Livro extends Produto {
    private String autor;
    private int paginas;

    public Livro(String autor, int paginas, String nome, double preco) {
        super(nome, preco);
        this.autor = autor;
        this.paginas = paginas;
    }

    public String getAutor() {
        return autor;
    }

    public void setAutor(String autor) {
        this.autor = autor;
    }

    public int getPaginas() {
        return paginas;
    }

    public void setPaginas(int paginas) {
        this.paginas = paginas;
    }
    
}
