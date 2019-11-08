//
//  Networking.swift
//  DelegateExample
//
//  Created by Franks,Kent on 11/8/19.
//  Copyright © 2019 Kefbytes LLC. All rights reserved.
//

import Foundation

class Networking {
    /**
     static func to simulate an API call, made it static so I wouldn't need an instance of Networking.
     It takes one parameter which is the completion handler/block
     After I simulate a 5 second call to the API we call completion
    */
    static func makeAPICall(completion: @escaping () -> Void) {
        print("🤖🔸🔸🔸🤖 makeAPICall()")
        // This just makes the code wait for 5 seconds kind of simulating an API call
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            // After 5 seconds we call comnpletion and return back to ViewModel trailing closure
            completion()
        }
    }
}
