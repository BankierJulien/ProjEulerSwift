//
//  PEViewController.swift
//  ProjEuluer
//
//  Created by Julien Bankier on 5/5/17.
//  Copyright © 2017 Julien Bankier. All rights reserved.
//

import UIKit

class PEViewController: UIViewController {
    let questionNameLabel = UILabel()
    let responseNameLabel = UILabel()
    let question = UILabel()
    let response = UILabel()
    let margin : CGFloat = 20
    let xOrigin :CGFloat = 10
    let yOrigin :CGFloat = 50
    let stringAttributes = NSMutableAttributedString()
    let paragraphStyle = NSMutableParagraphStyle()
    //var attributedStringAttributes = []


    override func viewDidLoad() {
        super.viewDidLoad()
        
        questionNameLabel.frame = CGRect(x:xOrigin, y:yOrigin, width:self.view.bounds.width, height: 200)
        questionNameLabel.text = "Question:"
        questionNameLabel.sizeToFit()
        
        question.frame = CGRect(x:xOrigin, y: questionNameLabel.frame.origin.y + questionNameLabel.frame.size.height + margin, width: self.view.bounds.width , height: 300)
        
        responseNameLabel.frame = CGRect(x:xOrigin, y:question.frame.size.height + (margin * 2), width:self.view.bounds.width, height: 200)
        responseNameLabel.text = "Response:"
        responseNameLabel.sizeToFit()
        
        response.frame =  CGRect(x:xOrigin, y: responseNameLabel.frame.origin.y + margin, width: self.view.bounds.width , height: 400)

        
        self.view.addSubview(questionNameLabel)
        self.view.addSubview(responseNameLabel)
        self.view.addSubview(question)
        self.view.addSubview(response)
     
    }
    
    func adjustTextSizeForLabel( label: UILabel){
        guard let labelString = label.text else {
            print("empty string")
            return
        }
        
        label.numberOfLines = 100
        paragraphStyle.lineBreakMode = .byWordWrapping

        let attributedText = NSAttributedString(string: labelString, attributes: [NSForegroundColorAttributeName: UIColor.black, NSFontAttributeName: UIFont.systemFont(ofSize: 15), NSParagraphStyleAttributeName:paragraphStyle])
        let newRect = attributedText.boundingRect(with: CGSize(width: self.view.frame.size.width - margin, height: CGFloat.greatestFiniteMagnitude) , options: .usesLineFragmentOrigin, context: nil)
        label.frame.size = newRect.size
        label.sizeToFit()
        
    }

}
