//
//  ViewController.swift
//  ProjEuluer
//
//  Created by Julien Bankier on 5/4/17.
//  Copyright © 2017 Julien Bankier. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var arrayOfEvenFibNum = [Int]()
    var solution = Int()


    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.createFibSequenceFrom(a: 0, b: 1)
        print(self.arrayOfEvenFibNum)
        for num in self.arrayOfEvenFibNum{
            print(solution)
            solution = solution + num
        }
        print(solution)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func createFibSequenceFrom(a: Int,b: Int) -> Void{
        if a < 400000{
          //  print(fibNum)
            let fibNum = a + b
            if fibNum % 2 == 0 {
                arrayOfEvenFibNum.append(fibNum)
            }
            self.createFibSequenceFrom(a: b, b: fibNum)
        }
    }

}

