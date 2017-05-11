//
//  Q1ViewController.swift
//  ProjEuluer
//
//  Created by Julien Bankier on 5/11/17.
//  Copyright © 2017 Julien Bankier. All rights reserved.
//

import UIKit

class Q1ViewController: PEViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        question.text = "If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23. \n\n Find the sum of all the multiples of 3 or 5 below 1000. "

        response.text = "\(self.getAllMutipleOfUnderLimit(limit: 1000))"
        self.adjustTextSizeForLabel(label: question)
        self.adjustTextSizeForLabel(label: response)

    }
    
    func getAllMutipleOfUnderLimit(limit:Int)-> Int{
        var sumOfMultiples = 0; var i = 0
        while i < limit{
            if i % 3 == 0 || i % 5 == 0{
                sumOfMultiples = sumOfMultiples + i
            }
            i+=1
        }
        return sumOfMultiples
    }

}
