



/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Light
 */
public class main {
    public static void main(String[] args){
        int numerador;
        float division=0;
        numerador=10;
        Integer denominador=null;
        System.out.println("ANTES DE LA DIVISION");
        
        try{
          division = numerador / denominador;  
        } catch (Exception e){
            System.out.println("ERROR: u used " + e.getMessage());
            division=0;
        }
        
        
        
        System.out.println("Después de la división " + division);
        
    }
    
}
