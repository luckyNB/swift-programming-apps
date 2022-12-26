//
//  CreateTodoViewController.swift
//  ToDo List
//
//  Created by Laxman Bhosle on 20/12/22.
//

import UIKit

class CreateTodoViewController: UIViewController {

    @IBOutlet weak var importantSwitch: UISwitch!
    @IBOutlet weak var nameTextField: UITextField!
    
    var toDoTableVC : ToDoTableViewController? = nil
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }

   
    
    @IBAction func addTapped(_ sender: Any) {
        
        let newToDo = ToDo()
        if let name = nameTextField.text {
            newToDo.name = name
            newToDo.isImportant = importantSwitch.isOn
            toDoTableVC?.toDos.append(newToDo)
            toDoTableVC?.tableView.reloadData()
            navigationController?.popViewController(animated: true)
        }
    }
    
    
}
