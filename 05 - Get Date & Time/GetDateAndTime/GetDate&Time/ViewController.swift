//
//  ViewController.swift
//  GetDate&Time
//
//  Created by Julio Estrada on 3/6/17.
//  Copyright © 2017 julioest. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDateAndTime()
    }

    // MARK: - Outlets
    @IBOutlet weak var dateLabel: UILabel!

    // MARK: - Properties
    let dateFormatter = DateFormatter()

    // MARK: - Interactions
    @IBAction func refreshButton(_ sender: UIButton) {
        updateDateAndTime()
    }

    // MARK: - Functions
    func updateDateAndTime() {
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .long

        dateLabel.text = dateFormatter.string(from: Date())
    }

}

