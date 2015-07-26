//
//  InterfaceController.swift
//  licznikKalorii WatchKit Extension
//
//  Created by Appcamp on 25/07/15.
//  Copyright (c) 2015 Appcamp. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    var calories = 100
    var caloriesTotal=0
    
    @IBOutlet weak var caloriesLabel: WKInterfaceLabel!
    
    
    @IBOutlet weak var slider: WKInterfaceSlider!
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func miusButtonTaped() {
        calories=calories-25
       updateScreen()
    
    }
    
    
    @IBAction func plusButtonTaped() {
        calories=calories+25
        updateScreen()
        
    }
    

    @IBAction func AddAction() {
        caloriesTotal = caloriesTotal + calories
    }
    
    @IBAction func sliderAction(value: Float) {
       caloriesLabel.setText("\(value)")
    }
    
    @IBAction func HideSlider() {
        slider.setHidden(true)
    }
    func updateScreen(){
    
        caloriesLabel.setText("\(calories)")
    
    }
}
