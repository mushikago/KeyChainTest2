//
//  ViewController.swift
//  KeyChainTest1
//
//  Created by Tetsuya Shiraishi on 2015/10/30.
//  Copyright © 2015年 Tetsuya Shiraishi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //NSUserDefaultsではなくKeyChainで
    
    let _service:String = "UserInfo"
    let _account:String = "com.mushikago.KeyChainTest1"
    
    @IBOutlet weak var txt: UITextField!
    @IBAction func setBtnAction(sender: AnyObject) {
        SSKeychain.setPassword(txt.text, forService: _service, account: _account)
    }
    
    @IBAction func ClearBtnAction(sender: AnyObject) {
        SSKeychain.deletePasswordForService(_service, account: _account)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        txt.text = SSKeychain.passwordForService(_service, account: _account)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

