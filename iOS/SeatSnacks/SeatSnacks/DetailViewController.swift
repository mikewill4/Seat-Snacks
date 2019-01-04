//
//  DetailViewController.swift
//  SeatSnacks
//
//  Created by Michael Williams on 1/4/19.
//  Copyright © 2019 Michael Williams. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    
    @IBOutlet weak var menuItem: UILabel!
    @IBOutlet weak var itemPrice: UILabel!
    
    var item: Item!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        menuItem.text = item.name
        itemPrice.text = NumberFormat.format(value: item.price)
    }
    
    @IBAction func addToCart(_ sender: Any) {
        CheckoutCart.shared.addItem(item)
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
