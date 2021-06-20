//
//  ViewController.swift
//  ArchitectureSample
//
//  Created by Shalom Friss on 3/30/21.
//

import UIKit

class ViewControllerC: UIViewController, StoryboardInstantiable {

    var viewModel:ViewModelC?
    var coordinator: Coordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel?.setup()
    }

    

    deinit {
        viewModel?.teardown()
        
    }
}

