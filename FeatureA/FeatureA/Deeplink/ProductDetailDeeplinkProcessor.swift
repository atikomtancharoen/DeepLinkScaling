//
//  ProductDetailDeeplinkProcessor.swift
//  FeatureA
//
//  Created by Atikom Tancharoen on 10/10/2564 BE.
//

import Core

final class ProductDetailDeeplinkProcessor: DeeplinkProcessor {
    override func matches(deeplink: String) -> Bool {
        guard let url = URL(string: deeplink) else { return false }
        print("url.scheme: \(String(describing: url.scheme))")
        print("url.host: \(String(describing: url.host))")
        print("url.path: \(url.path)")
        print("url.query: \(String(describing: url.queryDictionary))")
        return true
    }
    
    override func execute(deeplink: String) {
        
    }
}
