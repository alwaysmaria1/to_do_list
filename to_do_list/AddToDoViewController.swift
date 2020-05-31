//
//  AddToDoViewController.swift
//  to_do_list
//
//  Created by Maria H on 5/31/20.
//  Copyright © 2020 Maria H. All rights reserved.
//

import UIKit
import CoreData

class AddToDoViewController: UIViewController {
    var previousVC = ToDoTableViewController()
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var importantSwitch: UISwitch!
    
    @IBAction func addTapped(_ sender: UIButton) {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
          return
        }
        //context is an extension of the reference to the Core Data
        let context = appDelegate.persistentContainer.viewContext

        //this creates a new object in Core Data
        let toDo = ToDoCoreData(context:context)

        //these lines give the new CD object information based on what the user provided
        toDo.name = titleTextField.text
        toDo.important = importantSwitch.isOn

        //This is like clicking "save"! Our new object is now safe in Core Data!
        appDelegate.saveContext()

        //this send the user back to the Table View Controller
        navigationController?.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
 

}
