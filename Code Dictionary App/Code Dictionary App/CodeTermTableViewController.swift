//
//  CodeTermTableViewController.swift
//  Code Dictionary App
//
//  Created by Laxman Bhosle on 19/12/22.
//

import UIKit

class CodeTermTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

     
    }

//  How many rows
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 10
    }

    // what goes in each cell?
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...
        cell.textLabel?.text = "Hello App!"
        return cell
    }
    


}
