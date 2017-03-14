//
//  DiscountCalc.swift
//  CalculatorWithSwipes
//
//  Created by Trajon Felton on 3/13/17.
//  Copyright © 2017 Trajon Felton. All rights reserved.
//

import UIKit
class DiscountCalc {
    var price:Float
    var dollarsOff:Float
    
    init(price:Float = 0.0, dollarsOff:Float = 0.0){
        self.price = price
        self.dollarsOff = dollarsOff
    }
    
    static let shared:DiscountCalc = DiscountCalc()
}
