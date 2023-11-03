package com.mycompany.aula0311;

public class Funcionario extends Usuario {
    public String matricula;
    public String funcao;

    public Funcionario(String matricula, String funcao, String user, int senha) {
        super(user, senha);
        this.matricula = matricula;
        this.funcao = funcao;
    }
    
    public void imprimir(){
       System.out.println("Usuário: " + this.user + " Senha: " + this.senha + " Matricula: " + this.matricula + " Função: " + this.funcao);
    }
    
    
}
