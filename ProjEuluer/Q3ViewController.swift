//
//  Q3ViewController.swift
//  ProjEuluer
//
//  Created by Julien Bankier on 5/8/17.
//  Copyright © 2017 Julien Bankier. All rights reserved.
//

import UIKit



class Q3ViewController: PEViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        question.text = "The prime factors of 13195 are 5, 7, 13 and 29./n/n/n What is the largest prime factor of the number 600851475143 ?"
        
        self.generateListOfPrimes(ceiling: 10)
        
        
        
        
        
        // Do any additional setup after loading the view.
    }


    //Sieve_of_Eratosthenes
    func isItAFactor(numToFactor: Int, numToCheck: Int) -> Bool {
        if numToFactor % numToCheck == 0 {
            return true
        }
        else {
            return false
        }
    }
    
    func generateListOfPrimes(ceiling:Int) -> Array<Bool>{
        var boolArray = [Bool](repeating: true, count: ceiling)
     //   var k = 2
      
        
        /*// Eratosthenes sieve
         for var i=2; i<data.count; i++ {
         if ( data[i] ) {
         primes = primes + 1
         for var j=i+i; j<data.count; j+=i {
         data[j] = false;
         }
         }
         }*/
        for i in 2..<boolArray.count where boolArray[i] {
           self.test(j: i+i, i: i, array: boolArray, ceiling: ceiling)
          /* for var j = i+i in j..<ceiling{
                
            }*/
           // while j < ceiling
         print("h")
        }
        
        print(boolArray)
        return boolArray
    }
    
   
    
  
    
}
