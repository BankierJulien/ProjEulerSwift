//
//  Q2ViewController.swift
//  ProjEuluer
//
//  Created by Julien Bankier on 5/5/17.
//  Copyright © 2017 Julien Bankier. All rights reserved.
//

import UIKit

class Q2ViewController: PEViewController {
    var projEuleurSolution2 = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        question.text = "testtesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttest"
        question.font = UIFont.systemFont(ofSize: 15)
        
        
      //  questionHeight = question.frame.size.height
        response.text = "Respose"
        print(self.createFibSequenceFrom(a: 0, b: 1, celing: 4000000))
        self.adjustTextSizeForLabel(label: question)

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
