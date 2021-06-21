//
//  PresenterA.swift
//  ArchitectureSample
//
//  Created by Shalom Friss on 3/30/21.
//

import Foundation

class ViewModelA: NSObject{
    var view:ViewControllerA?
    var model:ModelA?
    
    
    init(view:ViewControllerA) {
        self.view = view
        self.model = ModelA.shared
    }
    
    @objc dynamic var version:String {
        get {
            return model?.version ?? "na"
        }
        set {
            model?.version = newValue
        }
        
    }
}
