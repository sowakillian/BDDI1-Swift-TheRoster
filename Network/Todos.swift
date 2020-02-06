//
//  Todos.swift
//  Network
//
//  Created by  on 06/02/2020.
//  Copyright © 2020 Killian. All rights reserved.
//

import Foundation

// MARK: - TodoElement
struct TodoElement: Codable {
    let userID, id: Int
    let title: String
    let completed: Bool

    enum CodingKeys: String, CodingKey {
        case userID = "userId"
        case id, title, completed
    }
    
    func display() -> String {
        return "\(self.id) \n \(self.title) \n \(self.completed)"
    }
}

typealias Todo = [TodoElement]
