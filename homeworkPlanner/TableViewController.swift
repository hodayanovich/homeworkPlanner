//
//  TableViewController.swift
//  homeworkPlanner
//
//  Created by Apple on 7/30/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    var toDos: [ToDo] = []
    
    
        
        func createToDos() -> [ToDo] {
            let swift = ToDo()
            swift.name = "Learn Swift"
            swift.important = true
            
            let dog = ToDo() //HELP HERE
            dog.name = "Walk the Dog"
            
            return [swift, dog]
        }
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            toDos = createToDos()
            tableView.register(UITableViewCell.self, forCellReuseIdentifier: "reuseIdentifier")

        }
        
    
        
    
    
   


   

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return toDos.count
    }

   
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        let toDo = toDos[indexPath.row]
        
        if toDo.important {
            cell.textLabel?.text = "🔴 " + toDo.name
            
        } else  {
            cell.textLabel?.text = toDo.name
        }
        return cell
    }
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }

}
