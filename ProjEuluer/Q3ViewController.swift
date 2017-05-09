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
        let largestPrime = self.getLargestPrimeNumber(arrayOfBool:self.seiveEratosthenes(ceiling: 9))
        print(largestPrime)
        
        
        
        // Do any additional setup after loading the view.
    }
    
    
    //Sieve_of_Eratosthenes
    func factorCheck(numToFactor: Int, numToCheck: Int) -> Bool {
        if numToFactor % numToCheck == 0 {
            return true
        }
        else {
            return false
        }
    }
    
    func seiveEratosthenes(ceiling:Int) -> Array<Bool>{
        // + 1 so array is not "zero based" for prime list, 0 included in list of number
        var boolArray = [Bool](repeating: true, count: ceiling+1)
        let squareRootOfCeiling = Int(sqrt(Double(ceiling)))

        // 1 and 2 always prime
        boolArray[1] = true
        boolArray[2] = true

        for i in 2...squareRootOfCeiling{
            if boolArray[i]{
                for j in 0...squareRootOfCeiling{
                    if (i*i + j*i)<=ceiling{
                        boolArray[i*i + j*i] = false
                    }
                }
            }
        }
        // remove 0 index so end list corresponds to 0 index = 1
        boolArray.remove(at: 0)
        return boolArray
    }
    
    func getLargestPrimeNumber(arrayOfBool:Array<Bool>) -> Int{
        var arrayOfPrimes = Array(1...arrayOfBool.count)
        for i in (0...arrayOfBool.count-1).reversed(){
            if arrayOfBool[i] == false{
               arrayOfPrimes.remove(at: i)
            }
        }

        return arrayOfPrimes.last ?? 0
    }
    
}
