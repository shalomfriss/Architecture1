//
//  ModuleACoordinator.swift
//  Architecture1
//
//  Created by Shalom Friss on 6/20/21.
//

import Foundation
import UIKit


class ModuleBCoordinator:Coordinator {
    weak var parentCoordinator:MainCoordinator?
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    
    init(navigationController:UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = ViewControllerB.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    func didFinishB() {
        parentCoordinator?.childDidFinish(child: self)
    }
}
