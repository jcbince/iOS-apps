//
//  ViewRacesTableViewController.swift
//  DungeonsAndDragons
//
//  Created by Rameses Resuena on 2017-07-12.
//  Copyright © 2017 Rameses Resuena. All rights reserved.
//

import UIKit

class ViewRacesTableViewController: UITableViewController {
    
    let raceManager = RaceManager()

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return raceManager.races.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RacesCell", for: indexPath)
        let raceName = raceManager.races[indexPath.row]
        cell.textLabel?.text = raceName
        
        return cell
    }
    
    @IBAction func unwindToViewRacesTVC(segue: UIStoryboardSegue) {
        
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let raceWebsiteVC = segue.destination as! RaceWebsiteViewController
        let selectedRow = tableView.indexPathForSelectedRow?.row
        let selectedRace = raceManager.races[selectedRow!]
        raceWebsiteVC.selectedRace = selectedRace
    }

}
