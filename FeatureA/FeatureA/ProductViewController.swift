//
//  ProductViewController.swift
//  FeatureA
//
//  Created by Atikom Tancharoen on 10/10/2564 BE.
//

import UIKit

class ProductViewController: UIViewController {
    
    // MARK: Object lifecycle
    static func instantiate() -> ProductViewController? {
        let storyboard = UIStoryboard(name: "FeatureA", bundle: Bundle.main)
        return storyboard.instantiateViewController(withIdentifier: "ProductViewController") as? ProductViewController
    }
}
