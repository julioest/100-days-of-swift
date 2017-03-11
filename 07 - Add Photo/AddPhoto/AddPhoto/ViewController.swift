//
//  ViewController.swift
//  AddPhoto
//
//  Created by Julio Estrada on 3/6/17.
//  Copyright © 2017 julioest. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Outlets
    @IBOutlet weak var imageView: UIImageView!


    // MARK: - Interactions
    @IBAction func tapCameraButton(_ sender: UIBarButtonItem) {
        let imagePicker = UIImagePickerController()
        present(imagePicker, animated: true, completion: nil)
        imagePicker.delegate = self
    }

    // MARK: - UIImagePickerControllerDelegate
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        imageView.image = info[UIImagePickerControllerOriginalImage] as! UIImage?
        dismiss(animated: true, completion: nil)
    }

}

