//
//  FriendsViewController.swift
//  Star
//
//  Created by Разработка мобильных приложений 3 on 12.05.2022.
//

import UIKit

class FriendsViewController: UIViewController {
    let cellID = "UserTableViewCell"
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
    }
    

}
extension FriendsViewController: UITableViewDelegate,UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Секция\(section)"
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID) as! UserTableViewCell
        
        
        cell.nameLabel.text = "Test"
        cell.userImageView.image = UIImage(named: "image1")!
        return cell
    }
    
    
}
