//
//  CheckoutCart.swift
//  SeatSnacks
//
//  Created by Michael Williams on 1/3/19.
//  Copyright © 2019 Michael Williams. All rights reserved.
//

import Foundation

final class CheckoutCart {
    
    static let shared = CheckoutCart()
    
    private init() {}
    
    private var items: [Item] = []
    
    var cart: [Item] {
        return items
    }
    
    var cartNotEmpty: Bool {
        return !items.isEmpty
    }
    
    var total: Int {
        return items.reduce(0) { (result, item) -> Int in
            return result + item.price
        }
    }
    
    func addItem(_ item: Item) {
        guard !items.contains(item) else {
            return
        }
        items.append(item)
    }
    
    func removeItem(_ item: Item) -> Bool {
        guard let index = items.index(of: item) else {
            return false
        }
        items.remove(at: index)
        return true
    }
}
