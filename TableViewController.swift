//
//  TableViewController.swift
//  ToDoListππerved.
//

import UIKit


var texx = [" go to with dog "," go to brush"," go to learn ios  "," go to club"," go to eat"," go to with dog a"," go to with dog b "," go to with dog c"]

var che = 0



   



class TableViewController: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        up()
    }
   
  



    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        let num = texx.count
        return num
        
    }
    
    
    

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath) {
            
         
        if cell.accessoryType == .none {
            cell.accessoryType = .checkmark
            } else if cell.accessoryType == .checkmark {
            cell.accessoryType = .none
                }
        tableView.deselectRow(at: indexPath, animated: true)
            
        }
    
    }
    
   
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellaya", for: indexPath)
        
        let label = cell.viewWithTag(1) as! UILabel
       
        
            label.text = texx[indexPath.row]
        
        
        return cell
    }
    
    

    
    
    override func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        let delete = UITableViewRowAction(style: .destructive, title: "Remove") { action, indexpath in
            texx.remove(at: indexpath.row)
           
          
            
            
            tableView.beginUpdates()
            tableView.deleteRows(at: [indexpath], with: .automatic)
            tableView.endUpdates()
            
            
            print(indexPath.row)
            
        
        }
        delete.backgroundColor = .red
        
        
    
    let editt = UITableViewRowAction(style: .destructive, title: "Edite") { action, indexPath in
        print("ed")
        
        let alert = UIAlertController(title: "Edite Task", message: "", preferredStyle: .alert)
        
       
        alert.addTextField { (textField) in
            textField.text = texx[indexPath.row]
        }
        
        
        alert.addAction(UIAlertAction(title: "Done", style: .default, handler: { [weak alert] (_) in
            let textField = alert?.textFields![0]
            
            
            texx[indexPath.row] = (textField?.text)!
            
            tableView.reloadData()
        
        
            
        }))
        
                self.present(alert, animated: true, completion: nil)
    }
    editt.backgroundColor = .blue
    
    return [delete,editt ]
}

 
    
    
    
    func up()  {
        if che == 1 {
            
            tableView.beginUpdates()
            tableView.insertRows(at: [IndexPath(row: texx.count-1, section: 0)], with: .automatic)
            tableView.endUpdates()
        }

    }
}
