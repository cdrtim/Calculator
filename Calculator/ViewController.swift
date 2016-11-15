//
//  ViewController.swift
//  Calculator
//
//  Created by Pham Ngoc Hai on 11/15/16.
//  Copyright © 2016 Mystudio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var distanceBtTxFandLbl: NSLayoutConstraint!
    @IBOutlet weak var distanceBtLblAndMiddlerView: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func updateViewConstraints() {
        super.updateViewConstraints()
        updateConstraints()
    }
    
    
    func updateConstraints()
     -> Void {
        let screen = UIScreen.main.bounds.size.height / 667
        distanceBtLblAndMiddlerView.constant = UIScreen.main.bounds.size.height > 480 ?
            distanceBtLblAndMiddlerView.constant * screen : distanceBtLblAndMiddlerView.constant * 0.1
        distanceBtTxFandLbl.constant = UIScreen.main.bounds.size.height > 480 ?
            distanceBtTxFandLbl.constant * screen : distanceBtTxFandLbl.constant * 0.1
        
    }

}

