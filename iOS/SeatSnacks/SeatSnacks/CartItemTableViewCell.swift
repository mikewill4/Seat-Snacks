//
//  CartItemTableViewCell.swift
//  SeatSnacks
//
//  Created by Michael Williams on 1/3/19.
//  Copyright © 2019 Michael Williams. All rights reserved.
//

import UIKit
import Foundation

class CartItemTableViewCell: UITableViewCell {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var price: UILabel!
    
    func configure(with item: Item) {
        name.text = item.name
        price.text = NumberFormat.format(value: item.price)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }

}
