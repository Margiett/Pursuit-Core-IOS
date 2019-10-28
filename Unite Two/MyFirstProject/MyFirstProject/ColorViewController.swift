//
//  ViewController.swift
//  MyFirstProject
//
//  Created by Margiett Gil on 10/28/19.
//  Copyright © 2019 Margiett Gil. All rights reserved.
//

import UIKit

class ColorViewController: UIViewController {
    
    
    @IBOutlet weak var displayLabel: UILabel!
    // implicit unwrapping of an optional
    //weak is memory optimizing feature we will talk more about further in the unit, basically the view controller will have a weak reference to the label outlet
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //view.backgroundColor = UIColor.blue
    }
    @IBAction func coloChangeButtonPressed(_ sender: UIButton) {
     
            let newColor: (color: UIColor?, name: String)
            switch sender.tag {
            case 0:
                newColor = (.red, "Red")
            case 1:
                newColor = (.green, "Green")
            case 2:
                newColor = (.blue, "Blue")
            default:
                newColor = (.white, "White")
            }
            view.backgroundColor = newColor.color
            displayLabel.text = "The background color is \(newColor.name)"
            }
    }

