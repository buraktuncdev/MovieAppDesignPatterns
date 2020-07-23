//
//  AppDelegate.swift
//  MovieBox
//
//  Created by Burak Tunc on 20.07.2020.
//  Copyright © 2020 Burak Tunç. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
     
        app.router.start()
        return true
    }
    
    
}

