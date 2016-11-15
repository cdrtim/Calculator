//
//  NumberButton.swift
//  Calculator
//
//  Created by Pham Ngoc Hai on 11/15/16.
//  Copyright © 2016 Mystudio. All rights reserved.
//

import UIKit

class NumberButton: UIButton {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        configureButton()
    }
    
    func configureButton() -> Void {
        if tag == 101 {
            backgroundColor = UIColor.init(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
            
        }else{
            backgroundColor = UIColor.init(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
        }
        layer.cornerRadius = 8.0
        titleLabel?.font = UIFont.systemFont(ofSize: 35)
        self.setTitleColor(UIColor.blue, for: .normal)
        
        
        
    }
    


}
