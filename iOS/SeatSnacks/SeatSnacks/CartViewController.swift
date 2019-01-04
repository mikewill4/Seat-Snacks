//
//  CartViewController.swift
//  SeatSnacks
//
//  Created by Michael Williams on 12/31/18.
//  Copyright © 2018 Michael Williams. All rights reserved.
//

import UIKit

class CartViewController: UIViewController {
    private enum Section: Int {
        case items = 0
        case total
        
        static func cellIdentifier(for section: Section) -> String {
            switch section {
            case .items:
                return "CartItemTableViewCell"
            case .total:
                return "CartTotalTableViewCell"
            }
        }
    }

    @IBOutlet weak var ItemsTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Checkout"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        ItemsTable.reloadData()
    }
    
    
    @IBAction func tappedContinue(_ sender: Any) {
        // Send to payment screen
    }
}

extension CartViewController: UITableViewDataSource {
    
    func numberOfSections(in ItemsTable: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == Section.items.rawValue {
            return CheckoutCart.shared.cart.count
        } else {
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let section = Section(rawValue: indexPath.section) else {
            fatalError("Section not found")
        }
        let id = Section.cellIdentifier(for: section)
        let cell = tableView.dequeueReusableCell(withIdentifier: id, for: indexPath)
        switch cell {
        case let cell as CartItemTableViewCell:
            cell.configure(with: CheckoutCart.shared.cart[indexPath.row])
        case let cell as CartTotalTableViewCell:
            cell.configure(with: CheckoutCart.shared.total)
        default:
            fatalError("Cell is not of correct type")
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return indexPath.section == Section.items.rawValue
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        guard editingStyle == .delete else {
            return
        }
        let item = CheckoutCart.shared.cart[indexPath.row]
        let isRemoved = CheckoutCart.shared.removeItem(item)
        if isRemoved {
            tableView.beginUpdates()
            tableView.deleteRows(at: [indexPath], with: .automatic)
            tableView.reloadSections(IndexSet(integer: 1), with: .automatic)
            tableView.endUpdates()
        }
    }
    
}
