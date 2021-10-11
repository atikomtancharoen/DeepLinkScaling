//
//  Coordinator.swift
//  Core
//
//  Created by Atikom Tancharoen on 10/10/2564 BE.
//

public protocol Coordinator: AnyObject {
    var childCoordinators: [Coordinator] { get set }
    func start()
}

extension Coordinator {
    public func store(coordinator: Coordinator) {
        childCoordinators.append(coordinator)
    }

    public func free(coordinator: Coordinator) {
        childCoordinators = childCoordinators.filter { $0 !== coordinator }
    }
}
