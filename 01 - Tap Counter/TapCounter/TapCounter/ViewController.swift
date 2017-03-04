//
//  ViewController.swift
//  TapCounter
//
//  Created by Julio Estrada on 3/4/17.
//  Copyright © 2017 julioest. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Outlets
    @IBOutlet weak var countLabel: UILabel!

    // MARK: - Properties
    var count = 0


    // MARK: - Interactions
    @IBAction func tapCounter(_ sender: UIButton) {
        count = count + 1
        countLabel.text = String(count)
    }

    @IBAction func resetButton(_ sender: UIBarButtonItem) {
        countLabel.text = "0"
        count = 0
    }


}

