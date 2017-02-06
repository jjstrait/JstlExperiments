/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.wctc.jjs.jstlexperiments.model;

/**
 *
 * @author Joshua
 */
public class TableCalculator {
    
    public final double calculateAnswer(String firstNum,String secondNum) throws NumberFormatException{
       
        try {
            double first = Double.parseDouble( firstNum );
            double second = Double.parseDouble( secondNum );
            double answer = first*second;
            return roundTwo(answer);
        }catch( NumberFormatException e ) {
            throw new NumberFormatException("Value input was not a number");
        }
        
    }
   
    
     public final double roundTwo(double number){
          return Math.round(number * 100.0) / 100.0;
     }
    
    
    
   
    
}
