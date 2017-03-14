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
            
            let screenWidth = UIScreen.main.bounds.width
            let screenHeight = UIScreen.main.bounds.height
            
            let leftGuide:CGFloat = 16.0
            let rightGuide:CGFloat = screenWidth - 16.0
            let topGuide:CGFloat = 72.0
            let botGuide:CGFloat =  screenHeight - 16.0
            
            context.fill(CGRect(x: leftGuide, y: topGuide - 16.0, width: rightGuide/2, height: botGuide))
        
            context.setFillColor(red: 0.61, green: 0.25, blue: 0.0, alpha: 1.0)
            context.fill(CGRect(x: rightGuide/2, y: topGuide - 16.0, width: rightGuide/2, height: botGuide/2))            //Draw Text
            context.setFillColor(red: 0.0, green: 0.65, blue: 0.16, alpha: 1.0);            context.fill(CGRect(x: rightGuide/2, y: botGuide/2, width: rightGuide/2, height: botGuide))
            
            let myText="Original Price"
            
            
            myText.draw(at: CGPoint(x: leftGuide + 16.0, y: topGuide + 20.0))
}
}
