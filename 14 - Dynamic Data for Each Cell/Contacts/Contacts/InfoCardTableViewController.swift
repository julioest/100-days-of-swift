//
//  InfoCardTableViewController.swift
//  Contacts
//
//  Created by Julio Estrada on 4/9/17.
//  Copyright © 2017 julioest. All rights reserved.
//

import UIKit

class InfoCardTableViewController: UITableViewController {

    // MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Properties
    var selectedIndexPath = IndexPath()

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "infoCardCell", for: indexPath) as! InfoCardTableViewCell

        switch selectedIndexPath.section {
        case 0:
            cell.profileImageView.image = UIImage(named: model.recent[selectedIndexPath.row]["infoImage"]!)
            cell.nameLabel.text = model.recent[selectedIndexPath.row]["name"]
            cell.numberLabel.text = model.recent[selectedIndexPath.row]["number"]
            cell.emailLabel.text = model.recent[selectedIndexPath.row]["email"]
            cell.notesLabel.text = model.recent[selectedIndexPath.row]["notes"]
        case 1:
            cell.profileImageView.image = UIImage(named: model.friends[selectedIndexPath.row]["infoImage"]!)
            cell.nameLabel.text = model.friends[selectedIndexPath.row]["name"]
            cell.numberLabel.text = model.friends[selectedIndexPath.row]["number"]
            cell.emailLabel.text = model.friends[selectedIndexPath.row]["email"]
            cell.notesLabel.text = model.friends[selectedIndexPath.row]["notes"]
        default: break
        }

        return cell
    }

}
