//
//  ToDoTableViewController.swift
//  ToDo List
//
//  Created by Laxman Bhosle on 19/12/22.
//

import UIKit

class ToDoTableViewController: UITableViewController {
    
    var toDos : [ToDo] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let toDo1 = ToDo()
        toDo1.name = "By Milk"
        toDo1.isImportant = true
        
        let toDo2 = ToDo()
        toDo2.name = "Walk a dog"
        toDo2.isImportant = false
        
        toDos = [toDo1,toDo2]
        
    }
    
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return toDos.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let  cell = UITableViewCell()
        let  toDo = toDos[indexPath.row]
        
        if toDo.isImportant {
            cell.textLabel?.text =  "❗️" +  toDo.name
            
        } else {
            cell.textLabel?.text =  toDo.name
        }
    
        
        return cell
    }
    
    
}
