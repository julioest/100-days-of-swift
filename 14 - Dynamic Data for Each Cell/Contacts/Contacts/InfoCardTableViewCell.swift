//
//  InfoCardTableViewCell.swift
//  Contacts
//
//  Created by Julio Estrada on 4/9/17.
//  Copyright © 2017 julioest. All rights reserved.
//

import UIKit

class InfoCardTableViewCell: UITableViewCell {

    // MARK: - When Cell Loads
    override func awakeFromNib() {
        super.awakeFromNib()
        self.layoutIfNeeded()
        profileImageView.layer.cornerRadius = profileImageView.frame.width / 2
        profileImageView.layer.masksToBounds = true

        notesLabel.sizeToFit()
    }

    // MARK: - Outlets
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var notesLabel: UILabel!
}
