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
    
//    let dictionaryDataSet = [("a", "and, then, of"), ("`a`ala", "sweet fragrance"), ("akā", "but"), ("alanui", "road")]
//    let dictionaryDataSet2 = [("`ehia", "how many?"), ("`ele`ele", "black"), ("`elemakule", "elder man, old"), ("`eleu", "active, lively, alert")]
    var valueToPass:String! = "test"
    var selectedLanguage = Language.Hawaiian
    
    var dictionaryDataSet = [
        "a" : [("a", "and, then, of"), ("`a`ala", "sweet fragrance"), ("akā", "but"), ("alanui", "road")],
        "e" : [("`ehia", "how many?"), ("`ele`ele", "black"), ("`elemakule", "elder man, old"), ("`eleu", "active, lively, alert")],
        "i" : [("i", "in, at"), ("ikaika", "strong"), ("iliahi", "sandalwood"), ("imua", "forward, ahead")],
        "o" : [("`o", "of, from"), ("`oia", "he or she (genderless 3rd person pronoun)"), ("`olena", "turmeric"), ("`ōpua", "puffy, billowy clouds")],
        "u" : [("ha", "breath"), ("ha`awi", "to give"), ("ha`awina", "assignment"), ("honua", "earth")],
        "h" : [("ha", "breath"), ("ha`awi", "to give"), ("ha`awina", "assignment"), ("honua", "earth")],
        "k" : [("ha", "breath"), ("ha`awi", "to give"), ("ha`awina", "assignment"), ("honua", "earth")],
        "l" : [("ha", "breath"), ("ha`awi", "to give"), ("ha`awina", "assignment"), ("honua", "earth")],
        "m" : [("ha", "breath"), ("ha`awi", "to give"), ("ha`awina", "assignment"), ("honua", "earth")],
        "n" : [("ha", "breath"), ("ha`awi", "to give"), ("ha`awina", "assignment"), ("honua", "earth")],
        "p" : [("paha", "perhaps, maybe"), ("papa kuhikuhi", "main menu"), ("papala", "hat"), ("peku", "to kick"), ("pela", "like that")],
        "w" : [("ha", "breath"), ("ha`awi", "to give"), ("ha`awina", "assignment"), ("honua", "earth")],
        "`" : [("` or the `okina", "Technically, the `okina is a letter, however, words are often alphabetized according the letter that follows it if the word starts with `.")]
        
    ]
    
    
//    let wordDictionary: [String: String] = ["word1": "def1", "word2": "def2"]
    
    override func viewDidLoad() {
        dictionaryTableView.dataSource = self
        dictionaryTableView.delegate = self
        
//        for (key, value) in wordDictionary {
//            print("\(key) -> \(value)")
//        }
//        
//        print(wordDictionary.values)
        
    }
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        dictionaryTableView.reloadData()
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 12
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 0 {
            return dictionaryDataSet["a"]!.count
        } else if section == 1 {
            return dictionaryDataSet["e"]!.count
        } else if section == 2 {
            return dictionaryDataSet["i"]!.count
        } else if section == 3 {
            return dictionaryDataSet["o"]!.count
        } else if section == 4 {
            return dictionaryDataSet["u"]!.count
        } else if section == 5 {
            return dictionaryDataSet["h"]!.count
        } else if section == 6 {
            return dictionaryDataSet["k"]!.count
        } else if section == 7 {
            return dictionaryDataSet["l"]!.count
        } else if section == 8 {
            return dictionaryDataSet["m"]!.count
        } else if section == 9 {
            return dictionaryDataSet["n"]!.count
        } else if section == 10 {
            return dictionaryDataSet["p"]!.count
        } else if section == 11 {
            return dictionaryDataSet["w"]!.count
        } else {
            return dictionaryDataSet["`"]!.count
        }
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Basic")!
        
        if indexPath.section == 0 {
            let wordTuple = dictionaryDataSet["a"]![indexPath.row] as (String, String)
            var word: String
            switch selectedLanguage {
            case .English:
                word = wordTuple.1
            case .Hawaiian:
                word = wordTuple.0
            }
            cell.textLabel?.text = word
            
        } else if indexPath.section == 1 {
            let wordTuple = dictionaryDataSet["e"]![indexPath.row] as (String, String)
            var word: String
            switch selectedLanguage {
            case .English:
                word = wordTuple.1
            case .Hawaiian:
                word = wordTuple.0
            }
            cell.textLabel?.text = word
        } else if indexPath.section == 2 {
            let wordTuple = dictionaryDataSet["i"]![indexPath.row] as (String, String)
            var word: String
            switch selectedLanguage {
            case .English:
                word = wordTuple.1
            case .Hawaiian:
                word = wordTuple.0
            }
            cell.textLabel?.text = word
        } else if indexPath.section == 3 {
            let wordTuple = dictionaryDataSet["o"]![indexPath.row] as (String, String)
            var word: String
            switch selectedLanguage {
            case .English:
                word = wordTuple.1
            case .Hawaiian:
                word = wordTuple.0
            }
            cell.textLabel?.text = word
        } else if indexPath.section == 4 {
            let wordTuple = dictionaryDataSet["u"]![indexPath.row] as (String, String)
            var word: String
            switch selectedLanguage {
            case .English:
                word = wordTuple.1
            case .Hawaiian:
                word = wordTuple.0
            }
            cell.textLabel?.text = word
        } else if indexPath.section == 5 {
            let wordTuple = dictionaryDataSet["h"]![indexPath.row] as (String, String)
            var word: String
            switch selectedLanguage {
            case .English:
                word = wordTuple.1
            case .Hawaiian:
                word = wordTuple.0
            }
            cell.textLabel?.text = word
        } else if indexPath.section == 6 {
            let wordTuple = dictionaryDataSet["k"]![indexPath.row] as (String, String)
            var word: String
            switch selectedLanguage {
            case .English:
                word = wordTuple.1
            case .Hawaiian:
                word = wordTuple.0
            }
            cell.textLabel?.text = word
        } else if indexPath.section == 7 {
            let wordTuple = dictionaryDataSet["l"]![indexPath.row] as (String, String)
            var word: String
            switch selectedLanguage {
            case .English:
                word = wordTuple.1
            case .Hawaiian:
                word = wordTuple.0
            }
            cell.textLabel?.text = word
        } else if indexPath.section == 8 {
            let wordTuple = dictionaryDataSet["m"]![indexPath.row] as (String, String)
            var word: String
            switch selectedLanguage {
            case .English:
                word = wordTuple.1
            case .Hawaiian:
                word = wordTuple.0
            }
            cell.textLabel?.text = word
        } else if indexPath.section == 9 {
            let wordTuple = dictionaryDataSet["n"]![indexPath.row] as (String, String)
            var word: String
            switch selectedLanguage {
            case .English:
                word = wordTuple.1
            case .Hawaiian:
                word = wordTuple.0
            }
            cell.textLabel?.text = word
        } else if indexPath.section == 10 {
            let wordTuple = dictionaryDataSet["p"]![indexPath.row] as (String, String)
            var word: String
            switch selectedLanguage {
            case .English:
                word = wordTuple.1
            case .Hawaiian:
                word = wordTuple.0
            }
            cell.textLabel?.text = word
        } else {
            let wordTuple = dictionaryDataSet["w"]![indexPath.row] as (String, String)
            var word: String
            switch selectedLanguage {
            case .English:
                word = wordTuple.1
            case .Hawaiian:
                word = wordTuple.0
            }
            cell.textLabel?.text = word
        }
        return cell
    }
    
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "A (pronounced 'ā)"
        } else if section == 1 {
            return "E (pronounced `ē)"
        } else if section == 2 {
            return "I (pronounced `ī)"
        } else if section == 3 {
            return "O (pronounced `ō)"
        } else if section == 4 {
            return "U (pronounced `ū)"
        } else if section == 5 {
            return "H (pronounced hē)"
        } else if section == 6 {
            return "K (pronounced kē)"
        } else if section == 7 {
            return "L (pronounced lā)"
        } else if section == 8 {
            return "M (pronounced mū)"
        } else if section == 9 {
            return "N (pronounced nū)"
        } else if section == 10 {
            return "P (pronounced pī)"
        } else {
            return "W (pronounced wē)"
        }
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("you selected a row #\(indexPath.row)!")
        // Get Cell Label
        let indexPath = tableView.indexPathForSelectedRow!;
        let currentCell = tableView.cellForRowAtIndexPath(indexPath) as UITableViewCell!;
        valueToPass = currentCell.textLabel!.text
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "DefinitionSegue") {
            let selectedRow = tableView.indexPathForSelectedRow
            print(selectedRow)
            
            // initialize new view controller and cast it as your view controller
            let viewController = segue.destinationViewController as! DefinitionViewController

            if selectedRow?.section == 0 {
                viewController.definition = dictionaryDataSet["a"]![selectedRow!.row]
            } else if selectedRow?.section == 1 {
                viewController.definition = dictionaryDataSet["e"]![selectedRow!.row]
            } else if selectedRow?.section == 2 {
                viewController.definition = dictionaryDataSet["i"]![selectedRow!.row]
            } else if selectedRow?.section == 3 {
                viewController.definition = dictionaryDataSet["o"]![selectedRow!.row]
            } else if selectedRow?.section == 4 {
                viewController.definition = dictionaryDataSet["u"]![selectedRow!.row]
            } else if selectedRow?.section == 5 {
                viewController.definition = dictionaryDataSet["h"]![selectedRow!.row]
            } else if selectedRow?.section == 6 {
                viewController.definition = dictionaryDataSet["k"]![selectedRow!.row]
            } else if selectedRow?.section == 7 {
                viewController.definition = dictionaryDataSet["l"]![selectedRow!.row]
            } else if selectedRow?.section == 8 {
                viewController.definition = dictionaryDataSet["m"]![selectedRow!.row]
            } else if selectedRow?.section == 9 {
                viewController.definition = dictionaryDataSet["n"]![selectedRow!.row]
            } else if selectedRow?.section == 10 {
                viewController.definition = dictionaryDataSet["p"]![selectedRow!.row]
            } else if selectedRow?.section == 11 {
                viewController.definition = dictionaryDataSet["w"]![selectedRow!.row]
            }
            
//            viewController.wordTest = wordDictionary


            
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
