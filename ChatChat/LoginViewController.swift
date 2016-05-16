/*
* Copyright (c) 2015 Razeware LLC
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
* AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
* LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
* OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
* THE SOFTWARE.
*/

import UIKit
import Firebase

enum Language: Int {
    case Hawaiian
    case English
}

class LoginViewController: UIViewController {
    
    // MARK: Properties
    var ref: Firebase!
    var selectedLanguage = Language.Hawaiian

    @IBOutlet weak var paleoButton: UIButton!
    @IBOutlet weak var dictionaryButton: UIButton!
    @IBOutlet weak var oleloTranslationLabel: UILabel!
    
  override func viewDidLoad() {
    super.viewDidLoad()
    ref = Firebase(url: "https://mama-olelo.firebaseio.com")
    self.navigationController?.navigationBarHidden = true
  }
    
  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    super.prepareForSegue(segue, sender: sender)
    
        if (segue.identifier == "chatSegue") {
            print("chatsegue")
            let navVc = segue.destinationViewController as! UINavigationController
            let chatVc = navVc.viewControllers.first as! ChatViewController
            chatVc.senderId = ref.authData.uid
            chatVc.senderDisplayName = ""
        } else if segue.identifier == "dictionarySegue" {
            let destinationNavVC = segue.destinationViewController as! UINavigationController
            let destinationVC = destinationNavVC.viewControllers[0] as! DictionaryTableViewController
            destinationVC.selectedLanguage = self.selectedLanguage
        }
    }
  
    
    @IBAction func chatButton(sender: AnyObject) {
        ref.authAnonymouslyWithCompletionBlock { (error, authData) in
        if error != nil { print(error.description); return }
        self.performSegueWithIdentifier("chatSegue", sender: nil)
                }
    }
    
    
    @IBAction func usFlag(sender: AnyObject) {
        paleoButton.setTitle("Chat", forState: .Normal)
        dictionaryButton.setTitle("Dictionary", forState: .Normal)
        oleloTranslationLabel.text = "(Chat in Hawaiian)"
        selectedLanguage = Language.English
        
    }
    
    @IBAction func hawaiianFlag(sender: AnyObject) {
        paleoButton.setTitle("Pāleo", forState: .Normal)
        dictionaryButton.setTitle("Puke wehewehe ʻōlelo", forState: .Normal)
        oleloTranslationLabel.text = ""
        selectedLanguage = Language.Hawaiian
    }
    
    
}

