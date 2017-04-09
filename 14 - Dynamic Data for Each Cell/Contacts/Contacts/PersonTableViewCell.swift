//
//  PersonTableViewCell.swift
//  Contacts
//
//  Created by Julio Estrada on 4/9/17.
//  Copyright © 2017 julioest. All rights reserved.
//

import UIKit

class PersonTableViewCell: UITableViewCell {

    // MARK: - When Cell Loads
    override func awakeFromNib() {
        super.awakeFromNib()
        self.layoutIfNeeded()
        profileImageView.layer.cornerRadius = profileImageView.frame.width / 2
        profileImageView.layer.masksToBounds = true
    }

    // MARK: - Outlets
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
}
