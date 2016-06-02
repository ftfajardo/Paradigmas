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
public class Bolacha {
  private static  int tipo;
  Ponto p;
  private double area;
    
    
    public void Bolacha(){
        this.p = new Ponto();
    }
    
    public void Bolacha(double x, double y){
        this.p = new Ponto(x,y);
    }
    
    /**
     *
     * @param _area
     */
    public void setArea(double _area){
        area = _area;
    }
    
    static double getArea(Bolacha a){
        return a.area;
    }
   
     public void setTipo(int tipo){
        this.tipo = tipo;
    }
    
     
         public String getTipo(){
        switch(tipo){
            case 1: 
                return "Circulo";
            case 2:
                return "Retangulo";
            case 3: 
                return "Triangulo";
            default:
                return "Strig invalida";
        }
    }
    
    
    
    
    
}         
         
         
    
    
    
     

