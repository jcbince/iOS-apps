//
//  LevelManager.swift
//  DungeonsAndDragons
//
//  Created by Rameses Resuena on 2017-07-12.
//  Copyright © 2017 Rameses Resuena. All rights reserved.
//

import Foundation

class LevelManager {
    var level: [String] = []
    
    init() {
        let bundle = Bundle.main
        let plistUrl = bundle.url(forResource: "Level", withExtension: "plist")
        level = NSArray(contentsOf: plistUrl!) as! [String]
    }
}
