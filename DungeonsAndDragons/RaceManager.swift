//
//  RaceManager.swift
//  DungeonsAndDragons
//
//  Created by Rameses Resuena on 2017-07-12.
//  Copyright © 2017 Rameses Resuena. All rights reserved.
//

import Foundation

class RaceManager {
    var races: [String] = []
    
    init() {
        let bundle = Bundle.main
        let plistUrl = bundle.url(forResource: "Races", withExtension: "plist")
        races = NSArray(contentsOf: plistUrl!) as! [String]
    }
}
