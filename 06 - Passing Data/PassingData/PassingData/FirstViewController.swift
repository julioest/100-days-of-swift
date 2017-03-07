//
//  ViewController.swift
//  PassingData
//
//  Created by Julio Estrada on 3/6/17.
//  Copyright © 2017 julioest. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    // MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        textView.becomeFirstResponder()
    }

    // MARK: - Outlets
    @IBOutlet weak var textView: UITextView!

    // MARK: - Interactions
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        sentMessage = textView.text
    }

}

