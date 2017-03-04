//
//  ViewController.swift
//  Writer
//
//  Created by Julio Estrada on 3/4/17.
//  Copyright © 2017 julioest. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        textView.becomeFirstResponder()
        NotificationCenter.default.addObserver(self, selector: #selector(detectIfSettingsChanged), name: UserDefaults.didChangeNotification, object: nil)
    }

    // MARK: - Outlets
    @IBOutlet weak var textView: UITextView!

    // MARK: - Functions
    func detectIfSettingsChanged() {
        print("Night Mode setting is: \(UserDefaults.standard.bool(forKey: "nightMode"))")


        if UserDefaults.standard.bool(forKey: "nightMode") == true {
            // apply night theme
            view.backgroundColor = .black
            textView.textColor = .white
            textView.keyboardAppearance = .dark
            UIApplication.shared.statusBarStyle = .lightContent
            
        } else {
            // restore default theme
            view.backgroundColor = .white
            textView.textColor = .black
            textView.keyboardAppearance = .light
            UIApplication.shared.statusBarStyle = .default
        }
    }
}

