//
//  VenueViewController.swift
//  SeatSnacks
//
//  Created by Michael Williams on 12/31/18.
//  Copyright © 2018 Michael Williams. All rights reserved.
//

import UIKit

class VenueViewController: UITableViewController {
    
    let venueImages = [UIImage(named: "ravens_stadium.jpg"), UIImage(named: "orioles_stadium.jpg")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "VenueCell")!
        if indexPath.row == 0 {
            cell.textLabel?.text = "M&T Bank Stadium"
            cell.detailTextLabel?.text = "Baltimore, MD"
        } else {
            cell.textLabel?.text = "Camden Yards"
            cell.detailTextLabel?.text = "Baltimore, MD"
        }
        cell.imageView?.image = venueImages[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // Do stuff with database
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
