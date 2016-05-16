//
//  DefinitionViewController.swift
//  
//
//  Created by Wong, Kapunahele on 5/14/16.
//
//

import Foundation
import UIKit

class DefinitionViewController: UIViewController{

    
    @IBOutlet weak var word: UILabel!
    
    @IBOutlet weak var translation: UILabel!
    
    
//    var definitions : [String] = Array()
//    var definition : String = ""
//    var wordTest : [String: String] = ["":""]

    var definition: (String, String)?

    
    override func viewDidLoad() {
        print(definition)
        
        guard let wordDef = definition else {return}
        word.text = wordDef.0
        translation.text = wordDef.1
 
    }
    
    
}
