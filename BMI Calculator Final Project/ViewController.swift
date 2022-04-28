//
//  ViewController.swift
//  BMI Calculator Final Project
//
//  Created by Evan Hartnett on 4/4/22.
//

import UIKit 
import WebKit



class ViewController: UIViewController, UITextFieldDelegate {
    
    //added UITextFieldDelegate: set of methods to manage editing and confirm text in text fields

  // connecting the text field and label actions to the code
    //user input - where the user types in weight value
    @IBOutlet weak var weightTextField: UITextField! //connected to weight text field "Enter weight in lbs"
    
    //user input - where the user types in height value
    @IBOutlet weak var heightTextField: UITextField! //connected to height text field "Enter height in inches"
    
    //where the output is printed
    @IBOutlet weak var bmiLabel: UILabel! //connected to label
    
    //the buttton that when pressed, processes user input in text fields to calculate the BMI
    //what occurs when this button is pressed
    @IBAction func convertToBMI(_ sender: Any) { //connected to button "Press to convert into BMI"
        
        //user input for the "Enter weight in lbs" text field
        let numberString = weightTextField.text!
        let number = Double(numberString) //user input are numerical so must be processed as a Double
    
//calculations for BMI
        //enters weight input number into calculation and then rounds the weight input number
        let weightResult = (number!) * 703
        let roundedWeight = round(weightResult * 10) / 10
        
        
        //user input for the "Enter height in inches" text field
        let numberStringTwo = heightTextField.text!
        let numberTwo = Double(numberStringTwo) //user input are numerical so must be processed as a Double
        
        //enters height input number into continued calcultion and then rounds the height input number
        let heightResult: Double = (numberTwo! * numberTwo!)
        let roundedHeightResult = round(heightResult * 10) / 10
        
        //using the rounded values of the height and weight to calculate the BMI
        let bmiResult = (roundedWeight / roundedHeightResult)
        
        //string presented in the empty bmiLabel label telling the user the BMI using string text and the calculated values found above
        bmiLabel.text = "A weight of \(numberString) lbs and a height of \(numberStringTwo) inches equates to a BMI of \(bmiResult)."
        
    }
    
    //independent values for text fields are passed (allowing them to be processed in the calculations)
    override func viewDidLoad() { //called after view is loaded into memory
        super.viewDidLoad()
        
        
        weightTextField.delegate = self
                                            //sends the text field messages to the user
        heightTextField.delegate = self
        
    }
    
    //allows the input in the text field to be printed out on the empty bmiLabel label
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        bmiLabel.text = "" //used to enter a string value for the label
        
        return true
    }
    
}


