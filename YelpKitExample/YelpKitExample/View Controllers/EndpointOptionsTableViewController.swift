//
//  EndpointOptionsTableViewController.swift
//  YelpKitExample
//
//  Created by Kasey Schindler on 10/25/18.
//  Copyright © 2018 Curiously Creative, LLC. All rights reserved.
//

import UIKit

final class EndpointOptionsTableViewController: UITableViewController {
    
    var endpoint: Endpoints!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = endpoint.title()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch endpoint! {
        case .business:
            return Endpoints.Business.count()
        case .category:
            return Endpoints.Category.count()
        case .event:
            return Endpoints.Event.count()
        }
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let title: String
        
        switch endpoint! {
        case .business:
            title = Endpoints.Business(rawValue: indexPath.row)!.title()
        case .category:
            title = Endpoints.Category(rawValue: indexPath.row)!.title()
        case .event:
            title = Endpoints.Event(rawValue: indexPath.row)!.title()
        }
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Basic Cell", for: indexPath)

        // Configure the cell...
        cell.textLabel?.text = title
        
        return cell
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
}
