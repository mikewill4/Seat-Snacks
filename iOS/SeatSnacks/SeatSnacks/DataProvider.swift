//
//  DataProvider.swift
//  SeatSnacks
//
//  Created by Michael Williams on 1/4/19.
//  Copyright © 2019 Michael Williams. All rights reserved.
//

import Foundation

final class DataProvider {
    
    static let sharedDP = DataProvider()
    
    private init() {}
    
    var allItems: [Item] {
        guard let jsonData = read(from: "menu") else {
            fatalError("Cannot work with this file")
        }
        let decoder = JSONDecoder()
        guard let decoded = try? decoder.decode([Item].self, from: jsonData) else {
            fatalError("Invalid JSON data")
        }
        return decoded
    }
    
    private func read(from path: String) -> Data? {
        guard let path = Bundle.main.path(forResource: path, ofType: "json") else {
            return nil
        }
        return try? Data(contentsOf: URL(fileURLWithPath: path))
    }
}
