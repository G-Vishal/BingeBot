//
//  ViewController.swift
//  BingeBot
//
//  Created by Vishal Shelake on 29/10/19.
//  Copyright © 2019 Vishal Shelake. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var showsList: UILabel!
    @IBOutlet weak var stackFirst: UIStackView!
    @IBOutlet weak var stackSecond: UIStackView!
    @IBOutlet weak var randomChoice: UILabel!
    @IBOutlet weak var bingebotText: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    var shows : [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        stackFirst.isHidden = true
        stackSecond.isHidden = true
    }
    
    @IBAction func addToShowsBtnTapped(_ sender: Any) {
        
        guard  let showName = textField.text else {
            return
        }
        
        shows.append(showName)
        stackFirst.isHidden = false
        updateShowLabel()
        textField.text = ""
        
        if shows.count  > 1 {
            stackSecond.isHidden = false
            bingebotText.isHidden = true
            randomChoice.isHidden = true
        }
    }
    
    func updateShowLabel() {
        
        guard textField.text!.isEmpty else {
            return showsList.text = shows.joined(separator: ", ")
        }
        
        //there is still a problem in showing the extra ,(commas) on array to Print on the array fond Solction for this
     
    }
    
    @IBAction func whatToBingeBtnTapped(_ sender: Any) {
        randomChoice.text = shows.randomElement()
        bingebotText.isHidden = false
        randomChoice.isHidden  = false
        randomChoice.text = shows.randomElement()
        
    }
 
}

