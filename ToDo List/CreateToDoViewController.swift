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
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext{
            let newToDo = ToDo(context: context)
            newToDo.important = importantSwitch.isOn
            if let name = nameTextfield.text {
                newToDo.name = name
            }
            (UIApplication.shared.delegate as? AppDelegate)?.saveContext()
        }
        
        navigationController?.popViewController(animated: true)
    }
    
}
