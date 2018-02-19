//
//  ColorsTableVC.swift
//  Tables-ICE
//
//  Created by Student on 2/15/18.
//  Copyright © 2018 Irvin Do. All rights reserved.
//

import UIKit

class ColorsTableVC: UITableViewController {

    var colors = ["red","green","blue","brown","purple"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print(#function + " called ")
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        print(#function + " called ")
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        print(#function + " called with numbersOfRowsInSection \(section) = \(colors.count)")
        return colors.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        
        // Configure the cell...
        cell.textLabel?.text = colors[indexPath.row]
        print(#function + " called with indexPath = \(indexPath), the data for this row is = \(colors[indexPath.row])")

        return cell
    }

    @IBAction func cancelTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}

