//
//  CucumberishInitializer.swift
//  testCucumbrishUITests
//
//  Created by Ashish Maurya on 12/11/22.
//

import Foundation
import XCTest
import Cucumberish

class CucumberishInitializer: NSObject {
    
    @objc class func setupCucumbrish(){
        before ({ _ in
            
            Given("I launch the app") { args, _ in
                XCUIApplication().launch()
                
            }
            
            let bundle = Bundle(for: CucumberishInitializer.self)
            Cucumberish.executeFeatures(inDirectory: "features", from: bundle, includeTags: nil, excludeTags: nil)
        })
    }
}
