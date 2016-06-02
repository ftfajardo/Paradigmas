/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javaapplication1;


import java.util.Random;
import java.util.ArrayList;
import static javaapplication1.Bolacha.getArea;





class JavaApplication1 
{
    public static void main(String[] args)
    {
       String teste; 
       double maior; 
       int i;
       ArrayList<Bolacha> b = new ArrayList<>(); 
       Random r = new Random();
        
        for(i = 0; i < 50; i++){
            switch(r.nextInt(3)){
                case 0:
                   Circle c = new Circle ( 2+(r.nextDouble() * 10));
                   b.add(c);
                break;
            
               case 1:
                    Retangulo ret = new Retangulo(3+(r.nextDouble() * 10), 3+ (r.nextDouble()* 10));
                    b.add(ret);
                break;
              
                case 2:
                    Triangulo t;
                    t = new Triangulo(3+(r.nextDouble() * 10),(r.nextDouble() * 10)+3);
                    b.add(t);
                break;
                  
        
            }
        }
        
            for(i=0;i<50;i++){
                System.out.println("Area: "+getArea(b.get(i)));
            
            }
        maior = getArea(b.get(0));
        for( i = 0; i < 50; i++){
            if(getArea(b.get(i)) > maior){
                maior =getArea(b.get(i));
            }
        }
        System.out.format("\n o maior valor e:%f  ", maior); 
         for(i = 0 ; i < 50 ; i++){
             if(maior == getArea(b.get(i)) ){
              Bolacha mais = b.get(i);  
              System.out.println("\n o tipo do maior:  "+ mais.getTipo());
             }
        }
             
    }
        
            
        

}   
    
   
