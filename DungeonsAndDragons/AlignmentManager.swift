//
//  AlignmentManager.swift
//  DungeonsAndDragons
//
//  Created by Rameses Resuena on 2017-07-12.
//  Copyright © 2017 Rameses Resuena. All rights reserved.
//

import Foundation

class AlignmentManager {
    var alignment: [String] = []
    
    init() {
        let bundle = Bundle.main
        let plistUrl = bundle.url(forResource: "Alignments", withExtension: "plist")
        alignment = NSArray(contentsOf: plistUrl!) as! [String]
    }
}
