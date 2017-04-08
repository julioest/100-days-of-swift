//
//  PlacesTableViewController.swift
//  StickyHeaderJumpBar
//
//  Created by Julio Estrada on 3/12/17.
//  Copyright © 2017 julioest. All rights reserved.
//

import UIKit

class PlacesTableViewController: UITableViewController {

    // MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        print("\(alphabetArray)")
    }

    // MARK: - Properties
    let alphabetArray = Array(model.places.keys).sorted{$0 < $1}

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return model.places.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        let letter = alphabetArray[section]

        switch section {
        case 0...14: return model.places[letter]!.count
        default: return 1
        }
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "placesCell", for: indexPath)

        let letter = alphabetArray[indexPath.section]

        switch indexPath.section {
        case 0...14: cell.textLabel?.text = model.places[letter]?[indexPath.row]
        default: break
        }

        return cell
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let letter = alphabetArray[section]

        switch section {
        case 0...14: return letter
        default: return letter
        }

    }

    override func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        return alphabetArray
    }

}














