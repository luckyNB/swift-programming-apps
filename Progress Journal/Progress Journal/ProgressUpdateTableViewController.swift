//
//  ProgressUpdateTableViewController.swift
//  Progress Journal
//
//  Created by Laxman Bhosle on 23/12/22.
//

import UIKit

class ProgressUpdateTableViewController: UITableViewController {
    var updates : [ProgressUpdate] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
            if let coreDataProgressUpdates = try? context.fetch(ProgressUpdate.fetchRequest()) as? [ProgressUpdate]
            {
                updates = coreDataProgressUpdates
                tableView.reloadData()
            }
        }
    }
    
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
         return updates.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "progressCell", for: indexPath)
        let progressUpdate = updates[indexPath.row]
        cell.textLabel?.text = progressUpdate.title
        return cell
    }
    
    
}
