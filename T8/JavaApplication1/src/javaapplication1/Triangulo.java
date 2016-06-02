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
public class Triangulo extends Bolacha {
    private double base;
    private double altura;
    private double area;
    
    public Triangulo(){
        
        base = 0.0;
        altura = 0.0;
        super.setArea(0.0);
           
    }

    public Triangulo(double b,double h){
       base = b;
       altura = h;
       area3(b,h);
       
       super.p = new Ponto(b+1, h+1);
       super.setTipo(3);
    
    }
    
    public void area3(double b,double h){
        base = b;
        altura = h;
        area =  base * altura / 2;
        
        super.setArea(area);
    }
}
