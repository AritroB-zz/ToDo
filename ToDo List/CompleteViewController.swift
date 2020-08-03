//
//  CompleteViewController.swift
//  ToDo List
//
//  Created by zappycode on 6/15/18.
//  Copyright © 2018 Nick Walter. All rights reserved.
//

import UIKit

class CompleteViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    var toDo : ToDo? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let toDo = toDo {
            if toDo.important {
                if let name = toDo.name {
                    nameLabel.text = "❗️" + name
                }
            } else {
                nameLabel.text = toDo.name
            }
        }
    }
    
    @IBAction func completeTapped(_ sender: Any) {
        // Delete ToDo
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
            if let toDo = toDo {
                context.delete(toDo)
            }
            (UIApplication.shared.delegate as? AppDelegate)?.saveContext()
        }
        // Pop back
        navigationController?.popViewController(animated: true)
    }
    
}
