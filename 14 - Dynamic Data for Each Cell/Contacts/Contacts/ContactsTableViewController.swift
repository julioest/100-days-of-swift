//
//  ContactsTableViewController.swift
//  Contacts
//
//  Created by Julio Estrada on 4/9/17.
//  Copyright © 2017 julioest. All rights reserved.
//

import UIKit

class ContactsTableViewController: UITableViewController {

    // MARK: - Table View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        switch section {
        case 0: return model.recent.count
        case 1: return model.friends.count
        default: return 0
        }
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personCell", for: indexPath) as! PersonTableViewCell

        switch indexPath.section {
        case 0:
            cell.profileImageView.image = UIImage(named: model.recent[indexPath.row]["contactImage"]!)
            cell.nameLabel.text = model.recent[indexPath.row]["name"]
        case 1:
            cell.profileImageView.image = UIImage(named: model.friends[indexPath.row]["contactImage"]!)
            cell.nameLabel.text = model.friends[indexPath.row]["name"]

        default: break
        }

        return cell
    }

    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let cell = tableView.dequeueReusableCell(withIdentifier: "headerCell") as! HeaderTableViewCell

        switch section {
        case 0: cell.headerLabel.text = "RECENT"
        case 1: cell.headerLabel.text = "FRIENDS"
        default: break
        }

        return cell
    }

    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }



    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "segueToInfoCard" {
            let destination = segue.destination as! InfoCardTableViewController
            destination.selectedIndexPath = tableView.indexPathForSelectedRow!

        }
    }

}
