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
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.viewModel = ViewModelA(view: self)
    }
    
    override func viewDidLoad() {
        viewModel?.addObserver(self, forKeyPath: "version", options: [.new, .old], context: nil)
        super.viewDidLoad()
    }
    
    deinit {
        viewModel?.removeObserver(self, forKeyPath: "version")
    }
    
    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        if keyPath == "version", let age = change?[.newKey] {
             print("ViewControllerA observer new age is: \(age)")
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        viewModel?.version = "123x"
    }
    
    @IBAction func gotoBAction(_ sender: Any) {
        (coordinator as? MainCoordinator)?.gotoB()
    }

    @IBAction func gotoCAction(_ sender: Any) {
        (coordinator as? MainCoordinator)?.gotoC()
    }
    
   
    
}

