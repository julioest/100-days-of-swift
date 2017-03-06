//
//  ViewController.swift
//  TipCalculator
//
//  Created by Julio Estrada on 3/5/17.
//  Copyright © 2017 julioest. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    // MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        subtotalTextfield.becomeFirstResponder()
        createToolbar()
        tipPercentSlider.isEnabled = false
    }

    // MARK: - Outlets
    @IBOutlet weak var subtotalTextfield: UITextField!
    @IBOutlet weak var tipPercentLabel: UILabel!
    @IBOutlet weak var tipPercentSlider: UISlider!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var totalAmountLabel: UILabel!


    // MARK: - Properties
    let model = Model()

    // MARK: - Interactions
    @IBAction func dragSlider(_ sender: UISlider) {
        tipPercentLabel.text = "Tip (\(Int(sender.value))%):"
        model.tipPercentFromSlider = Int(sender.value)
        updateLabels()
    }

    func textFieldDidBeginEditing(_ textField: UITextField) {
        tipPercentSlider.isEnabled = false
    }

    // MARK: - Functions
    func createToolbar() {
        let toolbar = UIToolbar()
        toolbar.barStyle = .default
        toolbar.sizeToFit()

        // Create bar button items
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(dismissKeyboard))
        let flexibleSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: self, action: nil)

        // Add items to toolbar
        toolbar.setItems([flexibleSpace,doneButton], animated: true)

        // Add toolbar to keyboard
        subtotalTextfield.inputAccessoryView = toolbar
    }

    func dismissKeyboard() {
        subtotalTextfield.resignFirstResponder()
        tipPercentSlider.isEnabled = true

        if subtotalTextfield.text?.characters.count == 0 {
            subtotalTextfield.text = "$0.00"
            model.subtotalFromTextField = "0.00"
            updateLabels()
        } else {
            model.subtotalFromTextField = subtotalTextfield.text!
            model.tipPercentFromSlider = Int(tipPercentSlider.value)
            updateLabels()
        }
    }

    func updateLabels() {
        subtotalTextfield.text = model.subtotalAsCurrency
        tipAmountLabel.text = model.tipAmountAsCurrency
        totalAmountLabel.text = model.totalAmountAsCurrency
    }

}













