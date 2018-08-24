//
//  JournalController.swift
//  Journal3
//
//  Created by Xavier on 8/22/18.
//  Copyright © 2018 Xavier ios dev. All rights reserved.
//

import UIKit


class EntryController: UIViewController {
    
    //add an entries array property, and set it's value to an empty array.
    var entries: [Entry] = []
    
    static let shared = EntryController()
    
    //source of truth
    // CRUD FUNCTIONS
    
    // Create Function
    func addEntryWith(title: String, bodyText: String) {
        let newEntry = Entry(title: title, bodyText: bodyText)
        entries.append(newEntry)
    }
    
    // Delete Function
    func removeEntry(entry:Entry) {
        if let entryToBeRemoved = entries.index(of: entry) {
            entries.remove(at: entryToBeRemoved)
        }
    }
    
    // Update Function
    func updateEntry(entry: Entry, title: String, bodyText: String) {
        entry.title = title
        entry.bodyText = bodyText
    }
    

 

    


}




