//
//  AppDelegate.swift
//  AppEventCount
//
//  Created by John Green on -12-282018.
//  Copyright © 2018 John Green. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var viewController: ViewController?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        viewController = window?.rootViewController as? ViewController
        viewController?.launchCount += 1
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        viewController?.resignCount += 1
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
       viewController?.backgroundCount += 1
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
      viewController?.foregroundCount += 1
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        viewController?.activeCount += 1
        viewController?.updateView()
    }

    func applicationWillTerminate(_ application: UIApplication) {
       viewController?.terminateCount += 1
    }


}

