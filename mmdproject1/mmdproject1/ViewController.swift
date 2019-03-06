//
//  ViewController.swift
//  mmdproject1
//
//  Created by Hernandez, Tyler R on 2/20/19.
//  Copyright © 2019 Hernandez, Tyler R. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Declare variables
    var cost:Int = 0, cool:Int = 0, power:Int = 0
    
    //Labels to link output to later
    @IBOutlet weak var outPower: UILabel!
    @IBOutlet weak var outCost: UILabel!
    @IBOutlet weak var outCool: UILabel!
    @IBOutlet weak var outImportant: UILabel!
    @IBOutlet weak var myChoiceImage: UIImageView!
    @IBOutlet weak var myDescription: UILabel!
    
    //First slider, choose power needed, output to  outPower slider label
    @IBAction func whatPower(_ sender: UISlider) {
        power = Int(sender.value)
        
        if(power == 1){
            outPower.text = "Browsing"
        }
        else if (1<power && power<3){
            outPower.text = "Work"
        }
        else if (power>=3){
            outPower.text = "Gaming"
        }
    }
    
    //Second Slider, choose budget, output to outCost slider label
    @IBAction func whatCost(_ sender: UISlider) {
        cost = Int(sender.value)
        
        if(cost == 1){
            outCost.text = ">$1000"
        }
        else if (1<cost && cost<3){
            outCost.text = "<$1000"
        }
        else if (cost>=3){
            outCost.text = "$500"
        }
    }
    
   //Third slider, choose design priority, output to OutCool label
    @IBAction func whatCool(_ sender: UISlider) {
        cool = Int(sender.value)
        
        if(cool == 1){
            outCool.text = "None"
        }
        else if (1<cool && cool<3){
            outCool.text = "Some"
        }
        else if (cool>=3){
            outCool.text = "A lot"
        }
    }
    
    //Fourth slider, output to outImportant slider label
    @IBAction func whatImportant(_ sender: UISlider) {
        
        if(sender.value == 1){
            outImportant.text = "Power"
        }
        else if (1<Int(sender.value) && sender.value<3){
            outImportant.text = "Cost"
        }
        else if (sender.value>=3){
            outImportant.text = "Design"
        }
        
        if (sender.value == 1){
            power = (2*power)
        }
        else if(sender.value == 2){
            cost = (2*cost)
        }
        else if(sender.value == 3){
            cool = (2*cool)
        }
        
    }
    
    // MySubmit button uses nested if statements to branch logic into more specific outcomes; priority 1: is a > (b+c);
    //priority 2: is b>c or c>b; output appropriate image and text to myChoiceImage and myDescription respectively
    @IBAction func mySubmit(_ sender: UIButton) {
        
        if (cost > (cool + power)){
            if(cool >= power){
            myDescription.text = "Chromebook- Chromebooks are limited machines that fit a limited budget and provide top tier asthetic. These devices are good for browsing and web based work. "
            myChoiceImage.image = UIImage(named: "chromebook")
            }
            else if (cool <= power){
                myDescription.text = "Windows Computers - Computers running Windows often offer a balance of cost and power that makes them good choices for heavy workloads and gaming."
                myChoiceImage.image = UIImage(named: "windows")
            }
        }
        else if(power > (cost + cool)){
            if(cool <= cost){
            myDescription.text = "Windows Computers - Computers running Windows often offer a balance of cost and power that makes them good choices for heavy workloads and gaming."
            myChoiceImage.image = UIImage(named: "windows")
            }
            else if(cool >= cost){
                myDescription.text = "MacBook- Apple's propreitary software is used in coordination with sleek hardware to offer users a premium product at a premium budget."
                myChoiceImage.image = UIImage(named: "mac")
            }
        }
        else if(cool > (cost + power)){
            if(cost <= power){
            myDescription.text = "MacBook- Apple's propreitary software is used in coordination with sleek hardware to offer users a premium product at a premium budget."
            myChoiceImage.image = UIImage(named: "mac")
            }
            else if (power <= cost){
                myDescription.text = "Chromebook- Chromebooks are limited machines that fit a limited budget and provide top tier asthetic. These devices are good for browsing and web based work. "
                myChoiceImage.image = UIImage(named: "chromebook")
        }
    
        
    }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

