//
//  adaTableViewController.swift
//  ToDoList
//
//  Created by Obada on 6/13/18.
//  Copyright © 2018 OBada. All rights reserved.
//

import UIKit

class adaTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBOutlet weak var newOne: UITextField!
    @IBAction func addd(_ sender: UIButton) {
        
        if newOne.text == "" {
            
            let alert = UIAlertController(title: "ADD Item", message: "U Must Writ What is u need to remeber to Add it ", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
        }else{
            texx.append(newOne.text!)
            print(texx.count)
            
            texx.append(newOne.text!)
            che = 1
            
        }
}
}
