//
//  Entry.swift
//  Journal3
//
//  Created by Xavier on 8/22/18.
//  Copyright © 2018 Xavier ios dev. All rights reserved.
//

import Foundation

class Entry: Equatable {
    
    var title: String
    var timeStamp: Date
    var bodyText:String
    
    init(timeStamp: Date = Date(), title: String, bodyText: String) {
        self.timeStamp = timeStamp
        self.title = title
        self.bodyText = bodyText
    }
    
    static func == (lhs: Entry, rhs: Entry) -> Bool {
        if lhs.bodyText != rhs.bodyText {return false }
        if lhs.title != rhs.title {return false }
        if lhs.timeStamp != rhs.timeStamp { return false }
        return true
    }
}




















