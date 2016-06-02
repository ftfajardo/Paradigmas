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
public class Circle extends Bolacha {
     private double  raio;
     private double  Area;
    
    /**
     *
     */
    public Circle(){
        raio = 0.0;
        super.setArea(0.0);
    }
     
     
     
     public Circle(double r) { 
     raio = r;
     area(raio); 
    
     super.p = new Ponto(raio*3, raio*3);
     super.setTipo(1);
     }
    
   
   
   public void  area(double _raio) {
     
     Area = _raio * _raio * Math.PI;
     super.setArea(Area);
     
}





}
