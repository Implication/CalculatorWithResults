//
//  GraphView.swift
//  CalculatorWithSwipes
//
//  Created by Trajon Felton on 3/13/17.
//  Copyright © 2017 Trajon Felton. All rights reserved.
//

import UIKit

class GraphView: UIView {
        override func draw(_ rect: CGRect){
            //drawing code
            let context : CGContext = UIGraphicsGetCurrentContext()!
            context.setFillColor(red: 0.0, green: 1.0, blue: 1.0, alpha: 1.0)
            context.fill(CGRect(x: 30, y: 60, width: 100, height: 200))
            
            let screenWidth = UIScreen.main.bounds.width
            let screenHeight = UIScreen.main.bounds.height
            
            let leftGuide:CGFloat = 16.0
            let rightGuide:CGFloat = screenWidth - 16.0
            let topGuide:CGFloat = 72.0
            let botGuide:CGFloat =  screenHeight - 16.0
            
            //Draw Text
            let myText="Cyan blue"
            let subText="Another text"
            
            
            myText.draw(at: CGPoint(x: leftGuide + 16.0, y: topGuide + 16.0))
            subText.draw(at: CGPoint(x: leftGuide + 16.0, y: topGuide + 32.0))    }
}
