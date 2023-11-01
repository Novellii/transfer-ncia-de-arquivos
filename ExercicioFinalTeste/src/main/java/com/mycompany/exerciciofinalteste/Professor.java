package com.mycompany.exerciciofinalteste;
import java.util.*;

public class Professor extends Pessoa {
    public int id;
    public List<Disciplina> refDisciplina;
    
    public Professor(int id, String nome, String cpf){
        super(nome, cpf);
        this.id = id;
        this.refDisciplina = new ArrayList<Disciplina>();     
    }
    
    public void imprimir(){
        System.out.println("O id do professor é:" + id);
        System.out.println("O nome do professor é:" + nome);
        System.out.println("O cpf do professor é:" + cpf);
    }
    
    public void adicionarDisciplina (Disciplina d){
      refDisciplina.add(d);
    }
    
    public void removerDisciplina (Disciplina d) {
      refDisciplina.remove(d);
    }
    
    public int getID(){
      return this.id;
    }
    
    public void setID(int id){
        this.id = id;
    }
    
    public List<Disciplina> getDisciplina(){
       return this.refDisciplina;
    }

    public void setRefDisciplina(List<Disciplina> refDisciplina) {
        this.refDisciplina = refDisciplina;
    }    
}
