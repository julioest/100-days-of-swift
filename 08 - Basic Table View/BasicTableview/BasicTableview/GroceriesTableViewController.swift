//
//  GroceriesTableViewController.swift
//  BasicTableview
//
//  Created by Julio Estrada on 3/10/17.
//  Copyright © 2017 julioest. All rights reserved.
//

import UIKit

class GroceriesTableViewController: UITableViewController {

    // MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Properties
    var groceries = ["Apples", "Milk", "Grapes", "Beer", "Gin"]


    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return groceries.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "groceriesCell", for: indexPath)

        cell.textLabel?.text = groceries[indexPath.row]

        return cell
    }

}












