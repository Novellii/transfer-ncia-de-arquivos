/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Project/Maven2/JavaApp/src/main/java/${packagePath}/${mainClassName}.java to edit this template
 */

package com.mycompany.prova29;

/**
 *
 * @author alunodev07
 */
public class Prova29 {

    public static void main(String[] args) {
        Publicacao a = new Publicacao("Oi", 2541);
        Publicacao b = new Publicacao("Oi", 2541);
        Publicacao c = new Publicacao("Oi", 2541);
        Publicacao d = new Publicacao("Oi", 2541);
        
        Autor hfgfbv = new Autor("SaAAF");
        Autor asdafx = new Autor("SasFAF");
        
        Autor.verificarAutores();
        
        System.out.println(Publicacao.qntdAutores);
    }
}
