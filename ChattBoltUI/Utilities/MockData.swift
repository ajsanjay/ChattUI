//
//  MockData.swift
//  ChattBoltUI
//
//  Created by Jaya Sabeen on 29/04/25.
//

import Foundation
import UIKit

struct MockData {
    
    static let screenWidth = UIScreen.main.bounds.size.width
    static let screenHeight = UIScreen.main.bounds.size.height
    
    static let defaultMessage: [ChattMessage]  = [ChattMessage(message: "Hai", type: .Receive), ChattMessage(message: "Hello how are you", type: .Send), ChattMessage(message: "Doing great how are you", type: .Receive)]
    
}
