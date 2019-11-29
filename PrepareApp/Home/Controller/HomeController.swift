//
//  HomeController.swift
//  PrepareApp
//
//  Created by Mac1 on 11/29/19.
//  Copyright © 2019 Mac1. All rights reserved.
//

import UIKit

class HomeController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    var posts = [Post]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupNavBar()
        setupTableView()
        getPosts()
    }
    
    fileprivate func setupNavBar() {
        navigationItem.title = "HOME"
    }
    
    fileprivate func setupTableView() {
        tableView.tableFooterView = UIView(frame: .zero)
    }
    
    fileprivate func getPosts() {
        PostNetworking.getPosts { [weak self] (response) in
            self?.posts = response.posts
            self?.tableView.reloadData()
        }
    }
}

extension HomeController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}

extension HomeController: UITableViewDelegate {
    
}
