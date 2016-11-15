//
//  GradientView.swift
//  Calculator
//
//  Created by Pham Ngoc Hai on 11/15/16.
//  Copyright © 2016 Mystudio. All rights reserved.
//

import UIKit

class GradientView: UIView {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        
        if tag == 111 {
        backgroundColor = UIColor.init(red: 49/255, green: 58/255, blue: 75/255, alpha: 1)
        
        }else{
        creatGradient()
        }
        
        
    }
    
    
    
    func creatGradient() -> Void {
        let bgGradient = CAGradientLayer()
        bgGradient.frame = self.frame
        bgGradient.colors = [UIColor.init(red: 57/255, green: 120/255, blue: 127/255, alpha: 1).cgColor,
                            UIColor.init(red: 77/255, green: 188/255, blue: 201/255, alpha: 1).cgColor]
        let startPoint = CGPoint.init(x: 0, y: 0)
        let endPoint = CGPoint.init(x: 0.5, y: 0.8)
        bgGradient.startPoint = startPoint
        bgGradient.endPoint = endPoint
        self.layer.insertSublayer(bgGradient, at: 0)
        
    }

}
