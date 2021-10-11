//
//  BaseCoordinator.swift
//  Core
//
//  Created by Atikom Tancharoen on 10/10/2564 BE.
//

open class BaseCoordinator : Coordinator {
    open var childCoordinators : [Coordinator] = []
    open var isCompleted: (() -> ())?
    
    // MARK: Object lifecycle
    public init() {}

    open func start() {
        fatalError("Children should implement `start`.")
    }
}
