//
//  AppCoordinator.swift
//  MainApp
//
//  Created by Atikom Tancharoen on 10/10/2564 BE.
//

import Core
import UIKit.UINavigationController

class AppCoordinator: BaseCoordinator {
    // MARK: Properties
    let window : UIWindow
    
    // MARK: Object lifecycle
    init(window: UIWindow) {
        self.window = window
        super.init()
    }
    
    // MARK: Methods
    override func start() {
        let viewController = ViewController.instantiate()
        window.rootViewController = viewController
        window.makeKeyAndVisible()
    }
}
