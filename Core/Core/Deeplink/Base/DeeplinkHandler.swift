//
//  DeeplinkHandler.swift
//  Core
//
//  Created by Atikom Tancharoen on 10/10/2564 BE.
//

protocol DeeplinkHandler {
    static func process(deeplink: String) -> Bool
}
