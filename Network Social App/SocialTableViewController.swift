//
//  SocialTableViewController.swift
//  Network Social App
//
//  Created by Natanael Diego on 16/05/21.
//

import UIKit

class SocialTableViewController: UITableViewController {

    override func viewDidLoad() {
        PostTableViewCell.register(inside: self.tableView)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: PostTableViewCell.kReuseIdentifier, for: indexPath) as! PostTableViewCell
        cell.setup(with: "Lorem Ipsum is simply dummy")
        return cell
    }
    
    override func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 630
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }

}
