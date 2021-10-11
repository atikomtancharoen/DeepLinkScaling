//
//  RegexMatchable.swift
//  Core
//
//  Created by Atikom Tancharoen on 10/10/2564 BE.
//

public struct Regex {
    public let pattern: String
    public let options: NSRegularExpression.Options!
    
    private var matcher: NSRegularExpression {
        return try! NSRegularExpression(pattern: self.pattern, options: self.options)
    }
    
    public init(_ pattern: String, options: NSRegularExpression.Options = [.caseInsensitive]) {
        self.pattern = pattern
        self.options = options
    }
    
    public func match(_ string: String, options: NSRegularExpression.MatchingOptions = []) -> [NSTextCheckingResult] {
        return self.matcher.matches(in: string, options: [], range: NSMakeRange(0, string.count))
    }
}

public protocol RegexMatchable {
    func match(regex: Regex) -> Bool
}
