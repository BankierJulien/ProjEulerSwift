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
    let heightMargin : CGFloat = 20
    let widthMargin :CGFloat = 10
    let yOrigin :CGFloat = 50
    let stringAttributes = NSMutableAttributedString()
    let paragraphStyle = NSMutableParagraphStyle()


    override func viewDidLoad() {
        super.viewDidLoad()
        
        questionNameLabel.frame = CGRect(x:widthMargin, y:yOrigin, width:self.view.bounds.width, height: self.view.bounds.height)
        questionNameLabel.text = "Question:"
        questionNameLabel.sizeToFit()
        
        question.frame = CGRect(x:widthMargin, y: questionNameLabel.frame.size.height * 2 +  heightMargin * 2, width: self.view.bounds.width , height: self.view.bounds.height)
        
        responseNameLabel.frame = CGRect(x:widthMargin, y:self.view.bounds.height/2 + heightMargin, width:self.view.bounds.width, height: self.view.bounds.height)
        responseNameLabel.text = "Response:"
        responseNameLabel.sizeToFit()
        
        response.frame =  CGRect(x:widthMargin, y: responseNameLabel.frame.origin.y + responseNameLabel.frame.size.height + heightMargin, width: self.view.bounds.width , height: self.view.bounds.height)
        response.backgroundColor = UIColor.red
        
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
        
        label.numberOfLines = 0
        paragraphStyle.lineBreakMode = .byTruncatingTail

        let attributedText = NSAttributedString(string: labelString, attributes: [NSForegroundColorAttributeName: UIColor.black, NSFontAttributeName: UIFont.systemFont(ofSize: 15), NSParagraphStyleAttributeName:paragraphStyle])
        let newRect = attributedText.boundingRect(with: CGSize(width: self.view.frame.size.width - widthMargin, height: CGFloat.greatestFiniteMagnitude) , options: .usesLineFragmentOrigin, context: nil)
        label.frame.size = newRect.size
        label.sizeToFit()
        
    }

}
