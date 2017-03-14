//
//  showResults.swift
//  CalculatorWithSwipes
//
//  Created by Trajon Felton on 3/8/17.
//  Copyright © 2017 Trajon Felton. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    @IBOutlet weak var Save: UILabel!
    @IBOutlet weak var op: UILabel!
    var toPass:String!
    var toPass2:String!
    @IBOutlet weak var dp: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let swipeRight:UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: #selector (handleSwipe))
        swipeRight.direction = UISwipeGestureRecognizerDirection.right
        view.addGestureRecognizer(swipeRight)
       
        op.text = toPass
        dp.text = toPass2
        op.textColor = UIColor.white
        dp.textColor = UIColor.white
        let s: Double = Double(toPass)! - Double(toPass2)!
        Save.text = String(format: "%.2f", s)
        Save.textColor = UIColor.white
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func handleSwipe(_ sender:UIGestureRecognizer){
        self.performSegue(withIdentifier: "unwindToCalc", sender: self)
    }
}
