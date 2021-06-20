//
//  ModelA.swift
//  ArchitectureSample
//
//  Created by Shalom Friss on 3/30/21.
//

import Foundation

class ModelA:NSObject {
    @objc dynamic var version = "1.0"
    
    static let shared = ModelA()
}
