//
//  ViewController.swift
//  DelegateExample
//
//  Created by Franks,Kent on 11/8/19.
//  Copyright © 2019 Kefbytes LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // ViewModel to hold data related to this ViewController
    let viewModel = ViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Set the delegate var in ViewModel to be self (this ViewController)
        // We can do this since it conforms to the protocol in the extension below
        viewModel.delegate = self
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("🤖🔸🔸🔸🤖 viewWillAppear()")
        // Call the fetchData method in our viewModel
        viewModel.fetchData()
    }
}

/**
 Have ViewController conform to SampleProtocol
 In order to do this it will have to implement whatever functions are stubbed out in the protocol
 In this case there is just the one updateUI()
 */
extension ViewController: SampleProtocol {
    func updateUI() {
        print("🤖🔸🔸🔸🤖 updateUI()")
    }
}
