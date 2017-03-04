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

        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()

    }

    // MARK: - Outlets
    @IBOutlet weak var countLabel: UILabel!

    // MARK: - Properties
    var count = 0


    // MARK: - Interactions
    @IBAction func tapCounter(_ sender: UIButton) {
        increaseCount()
    }

    @IBAction func resetButton(_ sender: UIBarButtonItem) {
        countLabel.text = "0"
        count = 0
    }

    @IBAction func longPressButton(_ sender: UILongPressGestureRecognizer) {
        increaseCount()
    }

    // MARK: - Functions
    func increaseCount() {
        count = count + 1
        countLabel.text = String(count)
    }


}

