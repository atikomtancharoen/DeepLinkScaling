//
//  DefaultDeeplinkHandler.swift
//  Core
//
//  Created by Atikom Tancharoen on 10/10/2564 BE.
//

public class DefaultDeeplinkHandler: DeeplinkHandler {
    private static var processors: [DeeplinkProcessor] = []
    
    public static func process(deeplink: String) -> Bool {
        for processor in getAllProcessors() {
            if processor.matches(deeplink: deeplink) {
                processor.execute(deeplink: deeplink)
                return true
            }
        }
        return false
    }
    
    private static func getAllProcessors() -> [DeeplinkProcessor] {
        guard processors.isEmpty else { return processors }
        processors = subclasses(of: DeeplinkProcessor.self).map {
            $0.init()
        }
        return processors
    }
    
    private static func address(of object: Any?) -> UnsafeMutableRawPointer{
        return Unmanaged.passUnretained(object as AnyObject).toOpaque()
    }
    
    /**
     WARNING:
     This method has high cost, It should be run only once when app started, to grab all classes.
     */
    private static func subclasses<T>(of theClass: T) -> [T] {
        var count: UInt32 = 0, result: [T] = []
        let allClasses = UnsafePointer<AnyClass>(objc_copyClassList(&count))
        let classPtr = self.address(of: theClass)
        
        for n in 0 ..< count {
            let someClass: AnyClass = allClasses![Int(n)]
            guard let someSuperClass = class_getSuperclass(someClass), address(of: someSuperClass) == classPtr else { continue }
            result.append(someClass as! T)
        }
        
        free(UnsafeMutableRawPointer(mutating: allClasses))
        
        return result
    }
}
