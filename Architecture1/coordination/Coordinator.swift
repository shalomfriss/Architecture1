//
//  Coordinator.swift
//  ArchitectureSample
//
//  Created by Shalom Friss on 6/4/21.
//

import Foundation
import UIKit

protocol Coordinator: AnyObject {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    func start()
}
