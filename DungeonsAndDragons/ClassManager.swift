//
//  ClassManager.swift
//  DungeonsAndDragons
//
//  Created by Rameses Resuena on 2017-07-12.
//  Copyright © 2017 Rameses Resuena. All rights reserved.
//

import Foundation

class ClassManager {
    var classesSubClass: [String: [String]]!
    var classes: [String]!
    var subClasses: [String]!
    
    init() {
        let plistPath = Bundle.main.path(forResource: "Classes", ofType: "plist")
        classesSubClass = NSDictionary.init(contentsOfFile: plistPath!) as! [String: [String]]
        classes = Array(classesSubClass.keys)
    }
}
