//
//  AppDelegate.swift
//  MainApp
//
//  Created by Atikom Tancharoen on 10/10/2564 BE.
//

import Core
import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    private var appCoordinator: AppCoordinator!
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow()
        if let window = window {
            appCoordinator = AppCoordinator(window: window)
            appCoordinator.start()
        }
        let string = """
        http://trueid.net/detail/O7Mm1qqmXxB7?page=detail&type=article-truelife&slug=news&info={\"content_id\":\"O7Mm1qqmXxB7\",\"api_url\":\"https://cms-fn-dmpapi.trueid.net/cms-fncontentdetail/v2/?id=O7Mm1qqmXxB7\",\"api_url_new\":\"https://cms-fn-dmpapi.trueid.net/cms-fncontentdetail/v2/?id=O7Mm1qqmXxB7\"}
        """
        let url = string.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? ""
        
        DefaultDeeplinkHandler.process(deeplink: url)
        return true
    }
    
    // MARK: UISceneSession Lifecycle
    
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }
    
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
}

