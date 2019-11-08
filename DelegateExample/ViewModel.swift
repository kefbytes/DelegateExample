//
//  ViewModel.swift
//  DelegateExample
//
//  Created by Franks,Kent on 11/8/19.
//  Copyright © 2019 Kefbytes LLC. All rights reserved.
//

import Foundation

/**
 This is the protocol that ViewController conforms to.
 For ViewController to conform to this protocol it must implement the func updateUI()
 */
protocol SampleProtocol {
    // Protocols just give the func stub, they don't add the implementation.
    func updateUI()
}

class ViewModel {
    // This var is set in the ViewController, whoever is set to the delegate we can communicate with and call functions there
    var delegate: SampleProtocol?

    // fetchData is called from viewWillAppear in ViewController
    func fetchData() {
        print("🤖🔸🔸🔸🤖 fetchData()")
        // Call a static method in Networking class
        // makeAPICall takes one parameter which is a completion block that we are passing as a trailing closure
        Networking.makeAPICall() {
            // After makeAPICall finishes it calls the completion and we return here
            () in
            /**
             The delegate for us is ViewController and we can call the updateUI func there.
             At this point we should be guaranteed to have our data and we tell the ViewController to update the UI.
             In this example we would probable save the data here in the ViewModel in some sort of model object.
             The ViewController will then access it with something like viewModel.myModelOject.dailyBalance.
             */
            self.delegate?.updateUI()
        }
        // The code moves on and this can be called before the makeAPICall func completes
        print("🤖🔸🔸🔸🤖 fetchData() #2")
    }
}
