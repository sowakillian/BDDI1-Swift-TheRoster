//
//  ViewController.swift
//  Network
//
//  Created by  on 06/02/2020.
//  Copyright © 2020 Killian. All rights reserved.
//

import UIKit
import Alamofire


class ViewController: UIViewController {

    @IBOutlet weak var requestResponse: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }

    @IBAction func buttonClicked(_ sender: UIButton) {
        AF.request("https://jsonplaceholder.typicode.com/todos").response { response in
            
            if let jsonData = response.data {
                self.requestResponse.text = String(data: jsonData, encoding:.utf8)
                
                if let todo = try? JSONDecoder().decode(Todo.self, from: jsonData) {
                  print(todo.count)
                }

            }

        }
    }
    
}

