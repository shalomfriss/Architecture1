//
//  ViewController.swift
//  ArchitectureSample
//
//  Created by Shalom Friss on 3/30/21.
//

import UIKit

class ViewControllerA: UIViewController, StoryboardInstantiable {
    
    @IBOutlet weak var gotoBButton: UIButton!
    @IBOutlet weak var gotoCButton: UIButton!
    @IBOutlet weak var theLabel: UITextView!
    
    var viewModel:ViewModelA?
    var kvoToken: NSKeyValueObservation?
    
    var coordinator: Coordinator?
    
//    init() {
//        super.init(nibName: nil, bundle: nil)
//        print("A")
//    }
//    
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        viewModel?.version = "123x"
    }
    
    @IBAction func gotoBAction(_ sender: Any) {
        (coordinator as? MainCoordinator)?.gotoB()
    }

    @IBAction func gotoCAction(_ sender: Any) {
        (coordinator as? MainCoordinator)?.gotoB()
    }
    
   
    
}

