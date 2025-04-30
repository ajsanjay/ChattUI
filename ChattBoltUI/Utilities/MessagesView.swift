//
//  MessagesView.swift
//  ChattBoltUI
//
//  Created by Jaya Sabeen on 29/04/25.
//

import SwiftUI

struct MessagesView: View {
    let message: String
    let isSent: Bool
    var body: some View {
        
        ZStack {
            HStack {
                if isSent {
                    Spacer()
                    Text(message)
                        .padding(.trailing)
                    
                } else {
                    Text(message)
                        .padding(.leading)
                    Spacer()
                }
            }
        }
        
    }
}

#Preview {
    MessagesView(message: "Received msg", isSent: false)
}
