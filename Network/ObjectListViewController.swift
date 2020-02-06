//
//  ViewController.swift
//  CustomTableView
//
//  Created by SOWA KILLIAN on 04/02/2020.
//  Copyright © 2020 SOWA KILLIAN. All rights reserved.
//
import UIKit
import Alamofire

class ObjectListViewController: UIViewController {

    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var getDatas: UIButton!
    
    var todoList:Todo = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    @IBAction func buttonClicked(_ sender: UIButton) {
        AF.request("https://jsonplaceholder.typicode.com/todos").response { response in
            
            if let jsonData = response.data {
                //self.requestResponse.text = String(data: jsonData, encoding:.utf8)
                
                if let todo = try? JSONDecoder().decode(Todo.self, from: jsonData) {
                  print(type(of: todo))
                    print(todo[0])
                    self.todoList = todo
                    self.tableView.reloadData()
                }

            }

        }
    }
    
}

extension ObjectListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.todoList.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
            let cell = tableView.dequeueReusableCell(withIdentifier: "FirstTableViewCell", for: indexPath) as! FirstTableViewCell
        
        cell.todoElementLabel.text = todoList[indexPath.row].display()
        
            return cell
    
        
    }
    
}

extension ObjectListViewController:UITableViewDelegate {
    func tableView(_ ResultList: UITableView, didSelectRowAt indexPath: IndexPath) {
    }
    
    func tableView(_ ResultList: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
}
