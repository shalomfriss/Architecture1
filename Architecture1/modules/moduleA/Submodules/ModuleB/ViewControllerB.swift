//
//  ViewController.swift
//  ArchitectureSample
//
//  Created by Shalom Friss on 3/30/21.
//

import UIKit

class ViewControllerB: UIViewController, StoryboardInstantiable {

    var viewModel:ViewModelB?
    var coordinator: Coordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel?.setup()
    }
    
    
    

    deinit {
        viewModel?.teardown()
        
    }
    
}

