//
//  ViewController.swift
//  ProjEuluer
//
//  Created by Julien Bankier on 5/4/17.
//  Copyright © 2017 Julien Bankier. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var projEuleurSolution2 = 0

    

    override func viewDidLoad() {
        super.viewDidLoad()
        print(self.createFibSequenceFrom(a: 0, b: 1, celing: 4000000))
        
   
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func createFibSequenceFrom(a: Int, b: Int, celing: Int) -> Int{
        let fibNum = a + b
        let newA = b
        let newB = fibNum
        if fibNum % 2 == 0 {
            projEuleurSolution2 = projEuleurSolution2 + fibNum
        }
        if newA <= celing || newB <= celing {
            _ = createFibSequenceFrom(a: newA, b: newB, celing: celing)
        }
        return projEuleurSolution2
    }
 
}

