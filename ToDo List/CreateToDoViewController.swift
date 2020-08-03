//
//  CreateToDoViewController.swift
//  ToDo List
//
//  Created by zappycode on 6/15/18.
//  Copyright © 2018 Nick Walter. All rights reserved.
//

import UIKit

class CreateToDoViewController: UIViewController {

    @IBOutlet weak var nameTextfield: UITextField!
    @IBOutlet weak var importantSwitch: UISwitch!
    var toDoTableVC : ToDoTableViewController? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func addTapped(_ sender: Any) {
        let newToDo = ToDo()
        newToDo.important = importantSwitch.isOn
        if let name = nameTextfield.text {
            newToDo.name = name
        }
        toDoTableVC?.toDos.append(newToDo)
        toDoTableVC?.tableView.reloadData()
        navigationController?.popViewController(animated: true)
    }

}
