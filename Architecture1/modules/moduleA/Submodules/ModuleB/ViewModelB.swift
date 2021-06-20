//
//  PresenterB.swift
//  ArchitectureSample
//
//  Created by Shalom Friss on 3/30/21.
//

import Foundation

class ViewModelB:NSObject {
    var model:ModelB?
    var view:ViewControllerB?
    
    init(view: ViewControllerB) {
        self.view = view
        self.model = ModelB()
    }
    
    func setup() {
        ModelA.shared.addObserver(self, forKeyPath: "version", options: [.new], context: nil)
    }
    
    func teardown() {
        ModelA.shared.removeObserver(self, forKeyPath: "version")
    }
    
    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        if keyPath == "version", let age = change?[.newKey] {
             print("New age is: \(age)")
        }
    }
    
}
