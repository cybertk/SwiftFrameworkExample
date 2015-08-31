//
//  MyProject.swift
//  MyProject
//
//  Copyright © 2015 example-org. All rights reserved.
//

import UIKit

public class MyProject {
    
    // MARK: Internal Properties
    
    var someProperty: String
    
    // MARK: APIs
    
    public func hello() -> String {
        return someProperty
    }
    
    // MARK: Initilizers
    
    public init() {
        someProperty = "a string"
    }
}


