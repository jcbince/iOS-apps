//
//  RaceWebsiteViewController.swift
//  DungeonsAndDragons
//
//  Created by Rameses Resuena on 2017-07-12.
//  Copyright © 2017 Rameses Resuena. All rights reserved.
//

import UIKit

class RaceWebsiteViewController: UIViewController {
    
    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var navItem: UINavigationItem!
    
    var selectedRace: String!
    
    func showWebsite(_ url: String) {
        if let targetURL = URL(string: url) {
            let targetRequest = URLRequest(url: targetURL)
            webView.loadRequest(targetRequest)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        navItem.title = selectedRace
        switch selectedRace.lowercased() {
        case "humans":
            showWebsite("https://en.wikipedia.org/wiki/Human_(Dungeons_%26_Dragons)")
        case "elf":
            showWebsite("https://en.wikipedia.org/wiki/Elf_(Dungeons_%26_Dragons)")
        case "dwarf":
            showWebsite("https://en.wikipedia.org/wiki/Dwarf_(Dungeons_%26_Dragons)")
        case "halfling":
            showWebsite("https://en.wikipedia.org/wiki/Halfling_(Dungeons_%26_Dragons)")
        case "gnome":
            showWebsite("https://en.wikipedia.org/wiki/Gnome_(Dungeons_%26_Dragons)")
        case "half-orc":
            showWebsite("https://en.wikipedia.org/wiki/Half-orc")
        default:
            print("Error")
        }
    }
}
