//
//  EndpointsTableViewController.swift
//  YelpKitExample
//
//  Created by Kasey Schindler on 10/25/18.
//  Copyright © 2018 Curiously Creative, LLC. All rights reserved.
//

import UIKit

final class EndpointsTableViewController: UITableViewController {

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Endpoints.count()
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let endpoint = Endpoints(rawValue: indexPath.row) else {
            return UITableViewCell()
        }
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Basic Cell", for: indexPath)

        // Configure the cell...
        cell.textLabel?.text = endpoint.title()
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        if let destination = segue.destination as? EndpointOptionsTableViewController, let selectedIndexPath = tableView.indexPathForSelectedRow, let endpoint = Endpoints(rawValue: selectedIndexPath.row) {
            destination.endpoint = endpoint
            tableView.deselectRow(at: selectedIndexPath, animated: true)
        }
    }

}
