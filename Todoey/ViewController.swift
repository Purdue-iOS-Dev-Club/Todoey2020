//
//  ViewController.swift
//  Todoey
//
//  Created by Harjas Monga on 10/2/20.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var todoTableView: UITableView!
    
    var todoList = [
        Todo(title: "CS 180 HW", description: "Turn into project", deadline: Date()),
        Todo(title: "CS 240 HW", description: "Finish chat app", deadline: Date()),
        Todo(title: "CS 182 HW", description: "Finish proofs", deadline: Date()),
        Todo(title: "CS 191 HW", description: "relax", deadline: Date())
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        todoTableView.dataSource = self
        todoTableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todoList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = todoTableView.dequeueReusableCell(withIdentifier: "todo") as! TodoTableViewCell
        
        cell.titleLabel.text = todoList[indexPath.row].title
        cell.descriptionLabel.text = todoList[indexPath.row].description
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            todoList.remove(at: indexPath.row)
            todoTableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    @IBAction func unwind(for unwindSegue: UIStoryboardSegue) {
        
    }
}
