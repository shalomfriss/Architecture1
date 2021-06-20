//
//  StoryboardInstantiable.swift
//  ArchitectureSample
//
//  Created by Shalom Friss on 6/4/21.
//

import Foundation
import UIKit

protocol StoryboardInstantiable {
    static func instantiate() -> Self
}

extension StoryboardInstantiable where Self: UIViewController {
    static func instantiate() -> Self {
        let id = String(describing: self)
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        return storyboard.instantiateViewController(withIdentifier: id) as! Self
    }
}
