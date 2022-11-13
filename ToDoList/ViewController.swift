//
//  ViewController.swift
//  ToDoList
//
//  Created by Kowndinya Varanasi on 2022-11-11.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return taskNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=tbView.dequeueReusableCell(withIdentifier: "taskCell", for: indexPath)
        cell.textLabel?.text=taskNames[indexPath.row]
        
        return cell
    }
    

    @IBOutlet weak var tbView: UITableView!
    
    var taskNames = ["Task 1", "Task 2", "Task 3", "Task 4", "Task 5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tbView.dataSource = self
        tbView.delegate = self
        
    }
    
}

