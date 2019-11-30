//
//  PostCell.swift
//  PrepareApp
//
//  Created by Mac1 on 11/30/19.
//  Copyright © 2019 Mac1. All rights reserved.
//

import UIKit

class PostCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    
    func bindPost(with post: Post) {
        titleLabel.text = post.title
    }
}
