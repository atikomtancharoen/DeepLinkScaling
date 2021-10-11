//
//  Matcher.swift
//  Core
//
//  Created by Atikom Tancharoen on 10/10/2564 BE.
//

public class Matcher: RegexMatchable {
    private let matching: String
    private var groups: [NSTextCheckingResult]?
    
    public var matchingGroups: [String] {
        var matches = [String]()
        if let groups = groups {
            let string = matching as NSString
            for group in groups {
                for index in 1..<group.numberOfRanges {
                    matches.append(string.substring(with: group.range(at: index)))
                }
            }
        }
        return matches
    }
    
    public var intGroups: [Int] {
        return self.matchingGroups.compactMap { Int($0) }
    }
    
    public init(_ matching: String) {
        self.matching = matching
    }
    
    public func match(regex: Regex) -> Bool {
        let matches = regex.match(self.matching)
        if !matches.isEmpty {
            self.groups = matches
            return true
        }
        return false
    }
}

public func ~=<T>(pattern: Regex, matchable: T) -> Bool where T: RegexMatchable {
    return matchable.match(regex: pattern)
}
