package com.mycompany.main;
import java.util.ArrayList;
import java.util.List;

public class Aluno extends Pessoa {
    private String matricula;
    private String curso;
    private Curso c;
    
    public Aluno (String nome, int cpf, String matricula, String curso, Curso c){
      super(nome, cpf);
      this.matricula = matricula;
      this.curso = curso;
      this.c = c;
    }     
    
}
