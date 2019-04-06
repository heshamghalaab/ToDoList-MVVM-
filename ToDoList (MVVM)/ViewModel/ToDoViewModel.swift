//
//  ToDoViewModel.swift
//  tableViewMVVM
//
//  Created by hesham ghalaab on 4/6/19.
//  Copyright © 2019 hesham ghalaab. All rights reserved.
//

import Foundation

protocol ToDoItemViewDelegate {
    func onAddNewItem() -> ()
}

struct Item {
    var id: String
    var textValue: String
}

struct ToDoViewModel{
    init() {
        let item1 = Item(id: "1", textValue: "washing clothes")
        let item2 = Item(id: "2", textValue: "Buy Groceries")
        let item3 = Item(id: "3", textValue: "Wash Car")
        
        items.append(item1)
        items.append(item2)
        items.append(item3)
    }
    
    var newToDoItem: String?
    var items: [Item] = []
}

extension ToDoViewModel: ToDoItemViewDelegate{
    func onAddNewItem() {
        
    }
}
