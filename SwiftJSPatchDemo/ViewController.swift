//
//  ViewController.swift
//  SwiftJSPatchDemo
//
//  Created by Richard on 12/9/2019.
//  Copyright © 2019 a. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        DemoTest.staticTestFunction(string: "staticTest")
        DemoTest.classTestFunction(string: "classTest")
    }
}
@objcMembers
class DemoTest : NSObject{
    
    dynamic static func staticTestFunction(string:String) -> Void {
        print("Origin Function: \(#function) Line: \(#line)");
        print("Static Fucntion output: !!!!!!!!!!")
    }
    
    dynamic class func classTestFunction(string:String) -> Void {
        print("Origin Function: \(#function) Line: \(#line)");
        print("Class Fucntion output: !!!!!!!!!!")
    }
}
