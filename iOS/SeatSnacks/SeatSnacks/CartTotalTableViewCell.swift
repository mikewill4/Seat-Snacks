//
//  CartTotalTableViewCell.swift
//  SeatSnacks
//
//  Created by Michael Williams on 1/3/19.
//  Copyright © 2019 Michael Williams. All rights reserved.
//

import UIKit

class CartTotalTableViewCell: UITableViewCell {

    @IBOutlet weak var totalPrice: UILabel!
    
    func configure(with total: Int) {
        totalPrice.text = NumberFormat.format(value: total)
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
