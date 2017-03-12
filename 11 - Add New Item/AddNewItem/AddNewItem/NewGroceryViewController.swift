//
//  NewGroceryViewController.swift
//  AddNewItem
//
//  Created by Julio Estrada on 3/12/17.
//  Copyright © 2017 julioest. All rights reserved.
//

import UIKit

class NewGroceryViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        textView.becomeFirstResponder()
    }

    // MARK: - Outlets
    @IBOutlet weak var textView: UITextView!

    // MARK: - Interactions
    @IBAction func tapDoneButton(_ sender: UIBarButtonItem) {

        if textView.text.characters.count > 0 {
            model.data.append(textView.text)
        }

        let _ = navigationController?.popViewController(animated: true)
    }

}
