//
//  ViewController.swift
//  Coffee Decider
//
//  Created by Rosario Tarabocchia on 10/1/15.
//  Copyright © 2015 RLDT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    
    
    @IBOutlet weak var lblCoffee: UILabel!
    @IBOutlet weak var btnChoose: UIButton!
    
    var coffeeArray = ["Black Coffee", "Latte", "Cappuccino", "Espresso", "Espresso con pana", "Iced Coffee", "Americano", "Iced Americano", "Coffee Milkshake", "Iced Latte", "Iced Lattee", "Bold Coffee", "Light Coffee", "Machiato",  "Cafe Latte"]
    
    var buttonArray = [ "Choose A Coffee", "Another Choice", "Choose Again", "Need Caffeine?", "Another Please"]
    
    var coffeeRandom : Int = 0
    var buttonRandom : Int = 0
    
    var coffeeRandomMax : Int = 0
    var buttonRandomMax : Int = 0
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        setArrayMax()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }





    @IBAction func btnChooseACTION(sender: UIButton) {
        
        
        randomizeTheNumbers()
    }



    func setArrayMax(){
        
        coffeeRandomMax = (coffeeArray.count - 1)
        buttonRandomMax = (buttonArray.count - 1)
        
        
    }
    
    
    func randomizeTheNumbers(){
        
        
        coffeeRandom = Int(arc4random_uniform(UInt32(coffeeRandomMax)))
        buttonRandom = Int(arc4random_uniform(UInt32(buttonRandomMax)))
        
        printCoffee()
        printButton()
        
        
    }
    
    
    func printCoffee(){
    
        
        lblCoffee.text = "\(coffeeArray[coffeeRandom])"
        
        
        lblCoffee.adjustsFontSizeToFitWidth = true
        
        
        
        
    }
    
    
    func printButton(){
        
        btnChoose.setTitle("\(buttonArray[buttonRandom])", forState: UIControlState.Normal)
        
        
        
        
    }








}

