//
//  EventViewController.swift
//  SeatSnacks
//
//  Created by Michael Williams on 12/31/18.
//  Copyright © 2018 Michael Williams. All rights reserved.
//

import UIKit

class EventViewController: UITableViewController {

    let games = ["Ravens vs. Colts", "Ravens vs. Dolphins", "Ravens vs. Bengals", "Ravens vs. Steelers", "Ravens vs. Browns", "Ravens vs. Titans", "Ravens vs. Panthers", "Ravens vs. Falcons", "Ravens vs. Chiefs"]
    let times = ["8/20/18 1:00PM EST", "8/25/18 8:30PM EST", "9/13/18 4:25PM EST", "9/30/18 1:00PM EST", "10/7/18 4:25PM EST", "10/14/18 1:00PM EST", "10/28/18 8:00PM EST", "12/2/18 1:00PM EST", "12/9/18 4:00PM EST"]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 9
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "EventCell")!
        cell.textLabel?.text = games[indexPath.row]
        cell.detailTextLabel?.text = times[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // Add pop up to enter section (SEC), row (ROW), seat (SEAT)
        // Store data for delivery purposes
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
