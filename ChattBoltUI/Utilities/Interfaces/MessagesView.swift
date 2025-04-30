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
        HStack(alignment: .bottom) {
            if isSent { Spacer() }
            if !isSent {
                Circle()
                    .fill(.msgReceived.opacity(0.3))
                    .frame(width: 10, height: 10)
                    .shadow(color: .black.opacity(1), radius: 2, x: 0.5, y: 0.5)
            }
            BubbleText(message: message, isSent: isSent)
                .padding(!isSent ? .leading : .trailing, -15)
            if isSent {
                Circle()
                    .fill(.msgSent.opacity(0.2))
                    .frame(width: 10, height: 10)
                    .shadow(color: .black.opacity(1), radius: 2, x: 0.5, y: 0.5)
            }
            if !isSent { Spacer() }
        }
        .padding(.horizontal)
    }
}

struct BubbleText: View {
    
    let message: String
    let isSent: Bool
    
    var body: some View {
        Text(message)
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 0)
                    .fill(isSent ? .msgSent.opacity(0.2) : .msgReceived.opacity(0.3))
                    .shadow(color: .black.opacity(0.7), radius: 8, x: 10, y: 10)
            )
            .foregroundColor(isSent ? .black : .white)
            .cornerRadius(16)
    }
}

#Preview {
    MessagesView(message: "Received msg", isSent: false)
}
