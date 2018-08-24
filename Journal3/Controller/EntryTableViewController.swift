//
//  JournalTableViewController.swift
//  Journal3
//
//  Created by Xavier on 8/22/18.
//  Copyright © 2018 Xavier ios dev. All rights reserved.
//

import UIKit

class EntryTableViewController: UITableViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return EntryController.shared.entries.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "journalCell", for: indexPath)
        
        let entries = EntryController.shared.entries[indexPath.row]
        
        cell.textLabel?.text = entries.title
        cell.detailTextLabel?.text = "\(entries.bodyText.count)"
        

        // Configure the cell...

        return cell
    }

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            
            let entry = EntryController.shared.entries[indexPath.row]
            EntryController.shared.removeEntry(entry: entry)
            
            
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }

}
