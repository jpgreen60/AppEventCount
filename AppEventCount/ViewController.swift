//
//  ViewController.swift
//  AppEventCount
//
//  Created by John Green on -12-282018.
//  Copyright © 2018 John Green. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var launchCount = 0
    var resignCount = 0
    var backgroundCount = 0
    var foregroundCount = 0
    var activeCount = 0
    var terminateCount = 0
    
    
    @IBOutlet weak var didFinishLaunchingWithOptionsLabel: UILabel!
    @IBOutlet weak var applicationWillResignActiveLabel: UILabel!
    @IBOutlet weak var applicationDidEnterBackgroundLabel: UILabel!
    @IBOutlet weak var applicationWillEnterForegroundLabel: UILabel!
     @IBOutlet weak var applicationDidBecomeActiveLabel: UILabel!
    @IBOutlet weak var applicationWillTerminateLabel: UILabel!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    func updateView() {
        
        didFinishLaunchingWithOptionsLabel.text = "The app has launched \(launchCount) time(s)"
        
        applicationWillResignActiveLabel.text = "The app has resigned \(resignCount) time(s)"
        
        applicationDidEnterBackgroundLabel.text = "The app has entered the background \(backgroundCount) time(s)"
        
        applicationWillEnterForegroundLabel.text = "The app has entered the foreground \(foregroundCount) time(s)"
        
        applicationDidBecomeActiveLabel.text = "The app has become active \(activeCount) time(s)"
        
        applicationWillTerminateLabel.text = "The app has terminated \(terminateCount) time(s)"
        
    }
    
    
}

