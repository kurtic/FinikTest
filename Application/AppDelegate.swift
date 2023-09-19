//
//  AppDelegate.swift
//  FinikTest
//
//  Created by Diachenko Ihor on 13.09.2023.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    private lazy var appCoordinator = AppCoordinator(useCases: GistsService())
    
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        appCoordinator.start()
        return true
    }
}

