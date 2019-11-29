//
//  HomeController.swift
//  PrepareApp
//
//  Created by Mac1 on 11/29/19.
//  Copyright © 2019 Mac1. All rights reserved.
//

import UIKit

class HomeController: UIViewController {
    //@IBOutlet weak var tableView: UITableView!
    
    var posts = [Post]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "HOME"
    }
}

//extension HomeController: UITableViewDataSource {
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 1
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        return UITableViewCell()
//    }
//}
//
//extension HomeController: UITableViewDelegate {
//    
//}
