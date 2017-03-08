//
//  ViewController.swift
//  CalculatorWithSwipes
//
//  Created by Trajon Felton on 3/8/17.
//  Copyright © 2017 Trajon Felton. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let swipeLeft:UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: #selector (handleSwipe))
        swipeLeft.direction = UISwipeGestureRecognizerDirection.left
        view.addGestureRecognizer(swipeLeft)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func handleSwipe(_ sender:UIGestureRecognizer){
        self.performSegue(withIdentifier: "showResults",sender: self)
    }
    
    @IBAction func unwindToCalc(seque:UIStoryboardSegue) {}
}

