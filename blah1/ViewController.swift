//
//  ViewController.swift
//  blah1
//
//  Created by Rajashekara Rajashekara on 4/15/16.
//  Copyright © 2016 lab1. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // Create a connection to your Firebase database
        let ref = Firebase(url: "https://glowing-torch-4210.firebaseio.com")
        
        // Save data
        ref.setValue(["name": "Alex Wolfe"])
        
        // Listen for realtime changes
        ref.observeEventType(.Value, withBlock: { snapshot in
            var name = snapshot.value["name"]
            println("User full name is \(name)")
        })
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

