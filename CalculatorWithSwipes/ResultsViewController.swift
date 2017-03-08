//
//  showResults.swift
//  CalculatorWithSwipes
//
//  Created by Trajon Felton on 3/8/17.
//  Copyright © 2017 Trajon Felton. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let swipeRight:UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: #selector (handleSwipe))
        swipeRight.direction = UISwipeGestureRecognizerDirection.right
        view.addGestureRecognizer(swipeRight)    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func handleSwipe(_ sender:UIGestureRecognizer){
        self.performSegue(withIdentifier: "unwindToCalc", sender: self)
    }
}
