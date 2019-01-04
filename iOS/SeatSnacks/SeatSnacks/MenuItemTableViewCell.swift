//
//  MenuItemTableViewCell.swift
//  SeatSnacks
//
//  Created by Michael Williams on 1/4/19.
//  Copyright © 2019 Michael Williams. All rights reserved.
//

import UIKit

class MenuItemTableViewCell: UITableViewCell {

    @IBOutlet weak var itemImage: UIImageView!
    @IBOutlet weak var itemName: UILabel!
    @IBOutlet weak var itemPrice: UILabel!
    
    func configure(with item: Item) {
        itemName.text = item.name
        itemPrice.text = NumberFormat.format(value: item.price)
        //itemImage
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
