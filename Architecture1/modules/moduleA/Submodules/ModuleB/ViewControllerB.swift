//
//  ViewController.swift
//  ArchitectureSample
//
//  Created by Shalom Friss on 3/30/21.
//

import UIKit

class ViewControllerB: UIViewController, StoryboardInstantiable {

    var viewModel:ViewModelB?
    var coordinator: ModuleBCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel?.setup()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        coordinator?.didFinishB()
    }
    

    deinit {
        viewModel?.teardown()
        
    }
    
}

