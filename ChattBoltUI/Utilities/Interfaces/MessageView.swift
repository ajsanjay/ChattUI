//
//  MessageView.swift
//  ChattBoltUI
//
//  Created by Jaya Sabeen on 29/04/25.
//

import SwiftUI

struct MessageView: View {
    
    @Binding var messageText: String
    var onSend: () -> Void
    @FocusState private var isFocused: Bool
    
    var body: some View {
        ZStack {
            HStack {
                TextField("Message..", text: $messageText)
                    .padding(.leading)
                    .focused($isFocused)
                    .foregroundColor(.black)
                Spacer()
                Button {
                    if !messageText.trimmingCharacters(in: .whitespaces).isEmpty {
                        onSend()
                        messageText = ""
                        isFocused = false
                    }
                } label: {
                    Image(systemName: "paperplane.fill")
                        .foregroundColor(.black)
                }
                .padding(.trailing)
            }
        }
        .padding(.leading)
        .padding(.trailing)
        .frame(height: MockData.screenHeight * 0.1)
        .background(
            RoundedRectangle(cornerRadius: 5)
                .fill(Color(.bgTop).opacity(0.15))
                .shadow(color: .black.opacity(0.7), radius: 8, x: 0, y: 4)
        )
        .onTapGesture {
            isFocused = true
        }
    }
}

#Preview {
    MessageView(messageText: .constant("")) {
        print("Send Tapped")
    }
}
