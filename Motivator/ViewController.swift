//
//  ViewController.swift
//  Motivator
//
//  Created by Benjamin Wilcox on 1/31/17.
//  Copyright © 2017 Benjamin Wilcox. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var label:UILabel!
    var titleLabel:UILabel!
    var veggieButton:UIButton!
    var adviceButton:UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // get reference to the main label
        /*
         * viewWithTag() returns a UIView, so we have to
         * use forced conversion to downcast it as a UILabel
         */
        label = view.viewWithTag(200) as! UILabel
        label.text = "Tap a button to get motivated!"
        
        // get reference to the veggie button
        veggieButton = view.viewWithTag(100) as! UIButton
        
        // get reference to the advice button
        adviceButton = view.viewWithTag(300) as! UIButton
        
        // get reference to title label
        titleLabel = view.viewWithTag(400) as! UILabel
    }

    override func viewDidLayoutSubviews() {
        
        // define the properties and set the top label
        let screenWidth = view.frame.width
        let screenHeight = view.frame.height
        let margin: CGFloat = 20
        var x = margin
        var y = view.frame.midY - 50
        var width = screenWidth - 2 * margin
        label.frame = CGRect(x: x, y: y, width: width, height: 100)
        label.backgroundColor = UIColor.yellow
        
        // set the title label
        y = 40 + margin
        titleLabel.frame = CGRect(x: x, y: y, width: width, height: 50)
        
        // set the veggie button
        x = screenWidth / 2
        y = screenHeight - 30 - margin
        veggieButton.center = CGPoint(x: x, y: y)
        veggieButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        
        // set the advice button
        y = screenHeight - 90 - margin
        adviceButton.center = CGPoint(x: x, y: y)
        adviceButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func buttonTapped(sender:UIControl) {
        if sender.tag == 100 {
            label.text = "Eat veggies and you will lose weight!"
        } else if sender.tag == 300 {
            label.text = "\"Anime was a mistake\" \n - Hayao Miyazaki"
        }
    }
}

