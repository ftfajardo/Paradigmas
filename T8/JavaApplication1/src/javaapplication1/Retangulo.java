/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javaapplication1;

/**
 *
 * @author ftf
 */
public class Retangulo extends Bolacha{
   
    private double base;
    private double altura;
    private double area;
    
    public Retangulo(){
        base = 0.0;
        altura = 0.0;
        super.setArea(0.0);
        
    }
    
   
    public Retangulo(double b , double a){
        base = b;
        altura = a;   
        area2(base,altura);
        super.setTipo(2);
        super.p = new Ponto(base, altura);
    }


    public void area2(double b, double a){
        super.setArea(b*a);
    }



}