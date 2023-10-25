package com.mycompany.aula1810;

public class Aula1810 {

    public static void main(String[] args) {
        Editora e1 = new Editora("Editora 1", "Gmail");
        Editora e2 = new Editora("Editora 2", "Hotmail");
        Livro l1 = new Livro("TituloXX", 2020, e1);
        Livro l2 = new Livro("TituloYY", 2003, e2);
        
        Autor a1 = new Autor("AutorXX", "a1");
        a1.adicionarContato("a1", "casa");
        
        a1.adicionarContato("99231", "AutorHAHA");
        a1.adicionarContato("142812", "AutorXXX");

        System.out.println("Hello World!");
    }
}
