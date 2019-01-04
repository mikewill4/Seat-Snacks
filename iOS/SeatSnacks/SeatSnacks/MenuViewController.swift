//
//  MenuViewController.swift
//  SeatSnacks
//
//  Created by Michael Williams on 12/31/18.
//  Copyright © 2018 Michael Williams. All rights reserved.
//

import UIKit

class MenuViewController: UITableViewController {
    
    private var items: [Item] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Menu"
        items = DataProvider.sharedDP.allItems
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MenuItem", for: indexPath) as! MenuItemTableViewCell
        cell.configure(with: items[indexPath.row])
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let detailViewController = storyboard.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController else {
            return
        }
        detailViewController.item = items[indexPath.row]
        navigationController?.pushViewController(detailViewController, animated: true)
    }
}
