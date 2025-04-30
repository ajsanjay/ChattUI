//
//  ChattMessage.swift
//  ChattBoltUI
//
//  Created by Jaya Sabeen on 30/04/25.
//

import Foundation

struct ChattMessage {
    let message: String
    let type: MessageType
}

enum MessageType {
    case Send
    case Receive
}
