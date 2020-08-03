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
    var todo = ToDo()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = todo.name
    }
    
    @IBAction func completeTapped(_ sender: Any) {
    }
    
}
