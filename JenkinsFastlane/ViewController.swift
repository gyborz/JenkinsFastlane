//
//  ViewController.swift
//  JenkinsFastlane
//
//  Created by Gyorgy Borz on 2020. 04. 01..
//  Copyright © 2020. Gyorgy Borz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private let userViewModels = [UserViewModel(user: User(name: "Alex", age: 25, profession: "Developer")),
                                  UserViewModel(user: User(name: "Jane", age: 30, profession: "Manager")),
                                  UserViewModel(user: User(name: "John", age: 22, profession: "Intern")),
                                  UserViewModel(user: User(name: "Kate", age: 25, profession: "Developer")),
                                  UserViewModel(user: User(name: "James", age: 50, profession: "CEO"))]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = 85.0
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userViewModels.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UserCell") as! UserTableViewCell
        
        cell.label.text = userViewModels[indexPath.row].description
        
        return cell
    }
    
    
}

