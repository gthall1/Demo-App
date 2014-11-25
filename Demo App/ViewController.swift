//
//  ViewController.swift
//  Demo App
//
//  Created by Griff Hall on 11/24/14.
//  Copyright (c) 2014 Griffappolis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer = NSTimer()
    
    @IBOutlet weak var time: UILabel!
    var count = 0
    
    
    @IBAction func play(sender: AnyObject) {
        
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("result"), userInfo: nil, repeats: true)
        
    }
    
    
    @IBAction func pause(sender: AnyObject) {
        
      timer.invalidate()
        
    }
    
    @IBAction func reset(sender: AnyObject) {
        
        timer.invalidate()
        count = 0
        time.text = String(0)
        
        // or could use time.text = "0"
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
    }
    
    func result() {
        count++
        time.text = String(count)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

