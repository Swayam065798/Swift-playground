//
//  ViewController.swift
//  DispatchQueueSample
//
//  Created by Comviva on 26/02/26.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        DispatchQueue.main.async {
            DispatchQueue.main.sync {
                print("hello world")
            }
            
        }
    }


}

