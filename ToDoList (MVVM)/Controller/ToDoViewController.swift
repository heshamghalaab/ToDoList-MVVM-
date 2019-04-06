//
//  ToDoViewController.swift
//  tableViewMVVM
//
//  Created by hesham ghalaab on 4/6/19.
//  Copyright © 2019 hesham ghalaab. All rights reserved.
//

import UIKit

class ToDoViewController: UIViewController {

    // MARK: Outlets
    @IBOutlet weak var itemsTableView: UITableView!
    @IBOutlet weak var newItemTextField: UITextField!
    
    // MARK: Properties
    let identifier = "toDoItemIdentifier"
    var toDoViewModel: ToDoViewModel?
    
    // MARK: override functions
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initializations()
        configuration()
    }
    
    // MARK: Methods
    /// making initializations.
    private func initializations(){
        toDoViewModel = ToDoViewModel()
    }
    
    /// making some configurations.
    private func configuration(){
        let nib = UINib(nibName: "ToDoItemTableViewCell", bundle: nil)
        itemsTableView.register(nib, forCellReuseIdentifier: identifier)
    }
    
    // MARK: Actions
    /// adding new items in the to do list.
    @IBAction func onAddItem(_ sender: UIButton) {
        
    }
    
    
}

extension ToDoViewController: UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDoViewModel?.items.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as! ToDoItemTableViewCell
        let item = toDoViewModel?.items[indexPath.row]
        cell.itemTextLabel.text = item?.textValue
        cell.itemIndexLabel.text = item?.id
        return cell
    }
}
