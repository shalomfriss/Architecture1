//
//  PresenterB.swift
//  ArchitectureSample
//
//  Created by Shalom Friss on 3/30/21.
//

import Foundation

class ViewModelC:NSObject {
    var model:ModelC?
    var view:ViewControllerC?
    
    init(view: ViewControllerC) {
        self.view = view
        self.model = ModelC()
    }
    
    func setup() {
        print("Setup C")
    }
    
    func teardown() {
        print("Teardown C")
    }
    
    
}
