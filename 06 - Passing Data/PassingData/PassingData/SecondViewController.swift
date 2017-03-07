//
//  SecondViewController.swift
//  PassingData
//
//  Created by Julio Estrada on 3/6/17.
//  Copyright © 2017 julioest. All rights reserved.
//

import UIKit

var sentMessage: String?

class SecondViewController: UIViewController {

    // MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text = sentMessage
    }

    // MARK: - Outlets
    @IBOutlet weak var messageLabel: UILabel!

}
