//
//  MainCoordinator.swift
//  ArchitectureSample
//
//  Created by Shalom Friss on 6/4/21.
//

import Foundation
import UIKit

class MainCoordinator: Coordinator {
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = ViewControllerA.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
    }
    
    func gotoB() {
        let vc = ViewControllerB.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }

    func gotoC() {
        let vc = ViewControllerC.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
}
