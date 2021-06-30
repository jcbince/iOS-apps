//
//  BackgroundManager.swift
//  DungeonsAndDragons
//
//  Created by Rameses Resuena on 2017-07-12.
//  Copyright © 2017 Rameses Resuena. All rights reserved.
//

import Foundation

class BackgroundManager {
    var background: [String] = []
    
    init() {
        let bundle = Bundle.main
        let plistUrl = bundle.url(forResource: "Backgrounds", withExtension: "plist")
        background = NSArray(contentsOf: plistUrl!) as! [String]
    }
}
