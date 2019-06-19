//
//  ViewController.swift
//  SpinnerKit
//
//  Created by Paige Sun on 2019-06-19.
//  Copyright © 2019 Paige Sun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func showSpinner(_ sender: Any) {
        Spinner.show(in: view)
    }
    
    @IBAction func hideSpinner(_ sender: Any) {
        Spinner.hide(in: view)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Spinner.show(in: view)
    }
}
