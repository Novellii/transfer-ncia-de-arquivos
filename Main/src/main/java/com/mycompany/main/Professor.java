package com.mycompany.main;
import java.util.*;

public class Professor extends Pessoa {
    private String Disciplinas;
    private int ID;
    private Disciplina d;
    private List<Disciplina> listaDisciplinas;
    
    public Professor(String nome, int cpf, String Disciplinas, int ID){
        super(nome, cpf);
        this.ID = ID;
        this.listaDisciplinas = new ArrayList<Disciplina>();
    }
    
    public void adicionarDisciplina(Disciplina p){
        listaDisciplinas.add(p);
    }

    public String getDisciplinas() {
        return Disciplinas;
    }

    public void setDisciplinas(String Disciplinas) {
        this.Disciplinas = Disciplinas;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public Disciplina getD() {
        return d;
    }

    public void setD(Disciplina d) {
        this.d = d;
    }

    public List<Disciplina> getListaDisciplinas() {
        return listaDisciplinas;
    }

    public void setListaDisciplinas(List<Disciplina> listaDisciplinas) {
        this.listaDisciplinas = listaDisciplinas;
    }
    

    
}
