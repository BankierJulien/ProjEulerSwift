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
        question.text = "The prime factors of 13195 are 5, 7, 13 and 29./n/n/n What is the largest prime factor of the number 600851475143 ? // not working for large numbers"
        
        //  self.generateListOfPrimes(ceiling: 10)
        let sieveresults = self.seiveEratosthenes(ceiling: 100)
        let largestPrime = self.getLargestPrimeNumber(array: sieveresults, ceiling: 100)
        
        response.text = String(largestPrime)
        self.adjustTextSizeForLabel(label: question)
        self.adjustTextSizeForLabel(label: response)
    }
    
    

    //Sieve_of_Eratosthenes
    func seiveEratosthenes(ceiling:Int) -> Array<Bool>{
        // + 1 so array is not "zero based" for prime list, 0 included in list of number
        var boolArray = [Bool](repeating: true, count: ceiling+1)
        let squareRootOfCeiling = Int(sqrt(Double(ceiling)))
        
        // 1 and 2 always prime
        boolArray[1] = true
        boolArray[2] = true
        
        for i in 2...squareRootOfCeiling{
            if boolArray[i]{
                for j in 0...ceiling{
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
    
    func factorCheck(numberBeingTested: Int, ceiling: Int) -> Bool {
        if ceiling % numberBeingTested == 0 {
            return true
        }
        else {
            return false
        }
    }
    
    func getLargestPrimeNumber(array:Array<Bool>, ceiling: Int) -> Int{
        var arrayOfBool = array
        var arrayOfNums = Array(1...arrayOfBool.count)
        var arrayOfPrimes = [Int]()

        for i in (0...arrayOfBool.count-1).reversed(){

            if arrayOfBool[i] == true{
                if self.factorCheck(numberBeingTested: arrayOfNums[i], ceiling: ceiling){
                    arrayOfPrimes.append(arrayOfNums[i])
                }
            }
        }
        
        //print(arrayOfPrimes)
        return arrayOfPrimes.first ?? 0
    }
    
}
