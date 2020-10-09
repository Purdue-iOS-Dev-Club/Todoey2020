//
//  AddToDoViewController.swift
//  Todoey
//
//  Created by Anderson David on 10/9/20.
//

import UIKit

class AddToDoViewController: UIViewController {

    @IBOutlet weak var titleField: UITextField!
    @IBOutlet weak var descField: UITextField!
    @IBOutlet weak var dateField: UIDatePicker!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func exitKeyboard(_ sender: Any) {
        view.endEditing(true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    */
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "saveToDo" {
            let dest = segue.destination as! ViewController
            
            let newToDo = Todo(title: titleField.text ?? "", description: descField.text ?? "", deadline: dateField.date)
            
            dest.todoList.append(newToDo)
            dest.todoTableView.reloadData()
        }
    }
    

}
