//
//  MessageView.swift
//  ChattBoltUI
//
//  Created by Jaya Sabeen on 29/04/25.
//

import SwiftUI

struct MessageView: View {
    
    @Binding var messageText: String
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(.cyan)
                .cornerRadius(15)
            HStack {
                TextField("Message..", text: $messageText)
                    .padding(.leading)
                Spacer()
                Button {
                    
                } label: {
                    Image(systemName: "paperplane.fill")
                }
                .padding(.trailing)
            }
        }
        .frame(height: MockData.screenHeight * 0.1)
    }
}

#Preview {
    MessageView(messageText: .constant(""))
}
