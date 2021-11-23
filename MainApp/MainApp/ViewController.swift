//
//  ViewController.swift
//  MainApp
//
//  Created by Atikom Tancharoen on 10/10/2564 BE.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var languages: [UILabel]!
    
    // MARK: Object lifecycle
    static func instantiate() -> ViewController? {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        return storyboard.instantiateViewController(withIdentifier: "ViewController") as? ViewController
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for language in languages {
            print("fontName: \(language.font.fontName)")
        }
    }
}

