//
//  FeatureACoordinator.swift
//  FeatureA
//
//  Created by Atikom Tancharoen on 10/10/2564 BE.
//

import Core
import UIKit.UINavigationController

class FeatureACoordinator: BaseCoordinator {
    // MARK: Properties
    var navigationController: UINavigationController?
    
    // MARK: Object lifecycle
    init(navigationController :UINavigationController?) {
        self.navigationController = navigationController
    }
    
    // MARK: Methods
    override func start() {
        guard let viewController = ProductViewController.instantiate() else { return }
        navigationController?.pushViewController(viewController, animated: true)
    }
}

extension FeatureACoordinator {
    func showDetail() {
        
    }
}
