package com.mycompany.exerciciofinalteste;

public class Aluno extends Pessoa {
    public int matricula;
    public Curso refCurso;
    
    public Aluno(int matricula, Curso refcurso, String nome, String cpf){
        super(nome, cpf);
        this.matricula = matricula;
        this.refCurso = refCurso;
    }
    
    public void imprimir(){
        System.out.println("O nome do aluno é " + nome);
        System.out.println("A matricula do aluno é " + matricula);
        System.out.println("O cpf do aluno é " + cpf);
    }
    
    public int getMatricula(){
       return this.matricula;
    }
    
    public void setMatricula(int Matricula){
       this.matricula = matricula;
    }

    public Curso getRefCurso() {
        return refCurso;
    }

    public void setRefCurso(Curso refCurso) {
        this.refCurso = refCurso;
    }
}
