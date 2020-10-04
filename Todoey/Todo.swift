//
//  Todo.swift
//  Todoey
//
//  Created by Harjas Monga on 10/2/20.
//

import Foundation

class Todo {
    
    let title: String
    let description: String
    let deadline: Date
    
    init(title: String, description: String, deadline: Date) {
        self.title = title
        self.description = description
        self.deadline = deadline
    }
    
}
