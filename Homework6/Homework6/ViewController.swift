//
//  ViewController.swift
//  Homework6
//
//  Created by Russell Mirabelli on 10/26/19.
//  Copyright © 2019 Russell Mirabelli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var segmentedController: UISegmentedControl!
    @IBOutlet var selectionSwitch: UISwitch!
    @IBOutlet var selectionButton: UIButton!
    @IBOutlet var continueButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func segmentedControllerDidChangeValue(_ sender: UISegmentedControl) {
        if(selectionButton.isSelected){
            if(segmentedController.selectedSegmentIndex == 2){
                if(selectionSwitch.isOn){
                    continueButton.isEnabled = true
                }
            }
        }
    }
    
    @IBAction func selectionSwitchDidChangeValue(_ sender: UISwitch) {
        if(selectionButton.isSelected){
            if(segmentedController.selectedSegmentIndex == 2){
                if(selectionSwitch.isOn){
                    continueButton.isEnabled = true
                }
            }
        }
        
    }
    
    @IBAction func selectionButtonTapped(_ sender: UIButton) {
        selectionButton.isSelected = true
        if(segmentedController.selectedSegmentIndex == 2){
            if(selectionSwitch.isOn){
                    continueButton.isEnabled = true
            }
        }
    }
}


