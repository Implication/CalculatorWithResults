//
//  ViewController.swift
//  CalculatorWithSwipes
//
//  Created by Trajon Felton on 3/8/17.
//  Copyright © 2017 Trajon Felton. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    @IBOutlet weak var priceText: UITextField!
    @IBOutlet weak var dollaroffText: UITextField!
    @IBOutlet weak var discountText: UITextField!
    @IBOutlet weak var otherdiscountText: UITextField!
    @IBOutlet weak var taxText: UITextField!
    
    @IBOutlet weak var originalPrice: UILabel!
    
    @IBOutlet weak var discountPrice: UILabel!
    
    
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
    
    
    @IBAction func calculate(_ sender: Any!){
        let price: Double = Double(priceText.text!)!
        let dollaroff: Double = Double(dollaroffText.text!)!
        var discount: Double = Double(discountText.text!)!
        var otherdiscount: Double = Double(otherdiscountText.text!)!
        var tax: Double = Double(taxText.text!)!
        if discount > 1 {
            discount = discount / 100
        }
        discount = price * discount
        
        if otherdiscount > 1 {
            otherdiscount = otherdiscount / 100
        }
        otherdiscount = price * otherdiscount
        
        if tax > 1 {
            tax = tax / 100
        }
        tax = price * tax
        
        let op: Double = price + tax + 0.005
        originalPrice.text = String(format: "%.2f", op)
        
        let dp = op - dollaroff - discount - otherdiscount
        discountPrice.text = String(format: "%.2f", dp)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if(segue.identifier == "showResults"){
            let svc = segue.destination as? ResultsViewController
            svc?.toPass = originalPrice.text
            svc?.toPass2 = discountPrice.text
        }
    }
    
    @IBAction func unwindToCalc(seque:UIStoryboardSegue) {}
}

