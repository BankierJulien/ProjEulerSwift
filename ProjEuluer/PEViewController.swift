//
//  PEViewController.swift
//  ProjEuluer
//
//  Created by Julien Bankier on 5/5/17.
//  Copyright © 2017 Julien Bankier. All rights reserved.
//

import UIKit

class PEViewController: UIViewController {
    let question = UILabel()
    let response = UILabel()
    let xOrigin :CGFloat = 100
    let yOrigin :CGFloat = 200
    let stringAttributes = NSMutableAttributedString()
    let paragraphStyle = NSMutableParagraphStyle()
    //var attributedStringAttributes = []


    override func viewDidLoad() {
        super.viewDidLoad()
        question.frame = CGRect(x:xOrigin, y: yOrigin, width: self.view.bounds.width , height: 200)
        response.frame =  CGRect(x:xOrigin, y: yOrigin * 2, width: self.view.bounds.width , height: 400)
        question.backgroundColor = UIColor.green
        response.backgroundColor = UIColor.red
        self.view.addSubview(question)
        self.view.addSubview(response)
        

     
    }
    
    func adjustTextSizeForLabel( label: UILabel){
        guard let labelString = label.text else {
            print("empty string")
            return
        }
        
        let nsLabelString = NSString(string: labelString)
        let range = NSMakeRange(0, nsLabelString.length)
        print(labelString)
        
        paragraphStyle.lineBreakMode = .byTruncatingTail
        
        stringAttributes.addAttributes([NSForegroundColorAttributeName: UIColor.black, NSFontAttributeName: UIFont.systemFont(ofSize: 15)], range: NSMakeRange(0, 1))
        
     //   stringAttributes.addAttribute(NSParagraphStyleAttributeName, value: paragraphStyle, range: range)

        let attributedText = NSAttributedString(attributedString: stringAttributes)
        let newRect = attributedText.boundingRect(with: CGSize(width: self.view.frame.size.width, height:CGFloat.greatestFiniteMagnitude) , options: .usesLineFragmentOrigin, context: nil)
        label.frame.size = newRect.size
        
    }

}
