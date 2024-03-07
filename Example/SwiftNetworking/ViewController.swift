//
//  ViewController.swift
//  SwiftNetworking
//
//  Created by Cocoa on 03/07/2024.
//  Copyright (c) 2024 Cocoa. All rights reserved.
//

import UIKit
import HandyJSON
import SwiftNetworking

/* 如何使用*/
struct ExampleModel: HandyJSON  {
    var wendu: Int64?
    var ganmao: String?
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let target = APITest.testApi
        NetworkManager<ExampleModel>.request(target, completion: { (result) in
            print(result)
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

