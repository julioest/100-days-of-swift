//
//  ViewController.swift
//  CircularImage
//
//  Created by Julio Estrada on 4/8/17.
//  Copyright © 2017 julioest. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - View did load
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.layoutIfNeeded()
        imageView.layer.cornerRadius = imageView.frame.width / 2
        imageView.layer.masksToBounds = true
    }

    // MARK: - Outlets
    @IBOutlet weak var imageView: UIImageView!

}

