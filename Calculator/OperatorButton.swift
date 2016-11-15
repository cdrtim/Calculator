//
//  OperatorButton.swift
//  Calculator
//
//  Created by Pham Ngoc Hai on 11/15/16.
//  Copyright © 2016 Mystudio. All rights reserved.
//

import UIKit

class OperatorButton: UIButton {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        configureButton()
    }
    
    func configureButton() -> Void {
        if tag == 101 {
        backgroundColor = UIColor.init(red: 244/255, green: 165/255, blue: 34/255, alpha: 1)
            
        }else{
        backgroundColor = UIColor.init(red: 116/255, green: 219/255, blue: 110/255, alpha: 1)
        }
    layer.cornerRadius = 8.0
    titleLabel?.font = UIFont.systemFont(ofSize: 35)
    self.setTitleColor(UIColor.white, for: .normal)
        
    
    
    }
    

    

}

