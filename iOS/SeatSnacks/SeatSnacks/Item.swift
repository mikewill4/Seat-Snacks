//
//  Item.swift
//  SeatSnacks
//
//  Created by Michael Williams on 1/3/19.
//  Copyright © 2019 Michael Williams. All rights reserved.
//

import Foundation

struct Item: Codable {
    let id: Int
    let name: String
    let price: Int
    //let photoUrl: URL
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case price = "price"
        //case photoUrl = "photo_large"
    }
}

extension Item: Equatable {
    static func == (lhs: Item, rhs: Item) -> Bool {
        return lhs.id == rhs.id
    }
}
