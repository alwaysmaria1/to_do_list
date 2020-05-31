//
//  AddToDoViewController.swift
//  to_do_list
//
//  Created by Maria H on 5/31/20.
//  Copyright © 2020 Maria H. All rights reserved.
//

import UIKit

class AddToDoViewController: UIViewController {
    var previousVC = ToDoTableViewController()
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var importantSwitch: UISwitch!
    
    @IBAction func addTapped(_ sender: UIButton) {
        let toDo = ToDo()

        if let titleText = titleTextField.text {
          toDo.name = titleText
          toDo.important = importantSwitch.isOn
        }
        previousVC.toDos.append(toDo)
        previousVC.tableView.reloadData()
        navigationController?.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
 

}
