//
//  ViewController.swift
//  CalculatorWithSwipes
//
//  Created by Trajon Felton on 3/8/17.
//  Copyright © 2017 Trajon Felton. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        UISwipeGestureRecognizer *reconizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(SwipeRecognizer:)];
        [recognizer setDirection:(UISwipeGestureRecognizerDirectionLeft)];
        [[self view] addGestureREcognizer:recognizer];
        [recognizer release];
        
        recognizer.delegate = self;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

