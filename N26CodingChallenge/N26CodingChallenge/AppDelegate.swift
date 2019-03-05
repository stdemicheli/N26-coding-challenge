//
//  AppDelegate.swift
//  N26CodingChallenge
//
//  Created by De MicheliStefano on 02.03.19.
//  Copyright © 2019 De MicheliStefano. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var navigationController: UINavigationController?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let rootBuilder = ExchangeRateListBuilder()
        let rootViewController = rootBuilder.build()
        
        navigationController = UINavigationController()
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
        
        navigationController?.pushViewController(rootViewController, animated: true)
        
        setupAppearance()
        
        return true
    }
    
    private func setupAppearance() {
        Appearance.setupNavBar()
        Appearance.setupViews()
    }

}

