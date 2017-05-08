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
        
        //  self.generateListOfPrimes(ceiling: 10)
        self.seiveEratosthenes(ceiling: 10)
        
        
        
        
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
    
    func seiveEratosthenes(ceiling:Int) -> Array<Bool>{
        var boolArray = [Bool](repeating: true, count: ceiling)
        let squareRootOfCeiling = Int(sqrt(Double(ceiling)))
        
        for i in 2..<boolArray.count where boolArray[i] {
            for j in 2..<ceiling{
                
                if i*j<ceiling {
                    
                    boolArray[i*j] = false
                }
                
            }
        }
        
        print(boolArray)
        return boolArray
    }
    
    
    
    
    
}
