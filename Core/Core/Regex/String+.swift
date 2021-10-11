//
//  String+.swift
//  Core
//
//  Created by Atikom Tancharoen on 10/10/2564 BE.
//

extension String: RegexMatchable {
    public func match(regex: Regex) -> Bool {
        return !regex.match(self).isEmpty
    }
}
