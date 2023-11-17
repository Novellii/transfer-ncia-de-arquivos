/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.aula1711;

/**
 *
 * @author alunodev07
 */
public class Fisica extends Cliente {
    private String nome;
    private String cpf;
    
    public Fisica (String nome, String cpf, String usuario) {
       super(usuario);
       this.nome = nome;
       this.cpf = cpf;      
    }
    
    
    private boolean validarCPF(){
        boolean isValid = true;
        return isValid;
    }

    @Override
    public void imprimir(){
       System.out.println("O nome do Cliente Físico é" + nome);
       System.out.println("O cpf do Cliente Fisico é" + cpf);
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }    
}
