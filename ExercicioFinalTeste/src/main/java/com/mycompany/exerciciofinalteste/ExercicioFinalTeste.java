package com.mycompany.exerciciofinalteste;
import java.util.*;

public class ExercicioFinalTeste {

    public static void main(String[] args) {
        
        Curso CC = new Curso("CienciaDaComputacao");
        Aluno Sammy = new Aluno(202306364, CC, "Sammy", "18869788750");
        Disciplina POO = new Disciplina("Programação Orientada a Objetos");
        Professor Cassio = new Professor(215231, "Cassio", "326137634212");
        Cassio.adicionarDisciplina(POO);
        
        Map uvvList = new HashMap<Professor, Pessoa>();
        uvvList.put(Cassio, Sammy);
        System.out.println(uvvList);
        
        Cassio.imprimir();
        Sammy.imprimir();
    }
}
