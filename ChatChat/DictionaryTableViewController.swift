//
//  DictionaryTableViewController.swift
//  Olelo
//
//  Created by Wong, Kapunahele on 5/14/16.
//  Copyright © 2016 Razeware LLC. All rights reserved.
//

import Foundation
import UIKit

class DictionaryTableViewController: UITableViewController {
    
    @IBOutlet var dictionaryTableView: UITableView!
    
    let dictionaryDataSet = [("a", "and, then, of"), ("`a`ala", "sweet fragrance"), ("akā", "but"), ("alanui", "road")]
    let dictionaryDataSet2 = [("`ehia", "how many?"), ("`ele`ele", "black"), ("`elemakule", "elder man, old"), ("`eleu", "active, lively, alert")]
    var valueToPass:String! = "test"
    
    let wordDictionary: [String: String] = ["word1": "def1", "word2": "def2"]
    
    override func viewDidLoad() {
        dictionaryTableView.dataSource = self
        dictionaryTableView.delegate = self
        
        for (key, value) in wordDictionary {
            print("\(key) -> \(value)")
        }
        
        print(wordDictionary.values)
        
    }
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        dictionaryTableView.reloadData()
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 0 {
            return dictionaryDataSet.count
        } else {
            return dictionaryDataSet2.count
        }
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Basic")!
        
        if indexPath.section == 0 {
            let (word1, definition1) = dictionaryDataSet[indexPath.row]
            cell.textLabel?.text = word1
        } else {
            let (word1, definition1) = dictionaryDataSet2[indexPath.row]
            cell.textLabel?.text = word1
        }
        
        return cell
    }
    
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "A"
        } else {
            return "E"
        }
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("you selected a row #\(indexPath.row)!")
        // Get Cell Label
        let indexPath = tableView.indexPathForSelectedRow!;
        let currentCell = tableView.cellForRowAtIndexPath(indexPath) as UITableViewCell!;
        
        valueToPass = currentCell.textLabel!.text
//        performSegueWithIdentifier("DefinitionSegue", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "DefinitionSegue") {
            let selectedRow = tableView.indexPathForSelectedRow?.row
            print(selectedRow)
            
            // initialize new view controller and cast it as your view controller
            var viewController = segue.destinationViewController as! DefinitionViewController


            viewController.definition = valueToPass
            viewController.wordTest = wordDictionary


            
//            if let dest = segue.destinationViewController as? DefinitionViewController {
//                
//                if section == 0 {
//                    dest.title = dictionaryDataSet[selectedRow!]
//                } else {
//                    dest.title = dictionaryDataSet2[selectedRow!]
//                }
//            }
        }
    }
}
