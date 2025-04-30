//
//  Dashboard.swift
//  ChattBoltUI
//
//  Created by Jaya Sabeen on 29/04/25.
//

import SwiftUI

struct Dashboard: View {
    
    @StateObject var viewModel = DashboardViewModel()
    
    var body: some View {
        ZStack {
            DefaultBg()
            VStack {
                ProfileInfo(personName: "My Buddy")
                ScrollView {
                    ForEach(viewModel.chattConversation.indices, id: \.self) { index in
                        let message = viewModel.chattConversation[index]
                        MessagesView(
                            message: message.message,
                            isSent: message.type == .Send
                        )
                    }
                }
                .padding(.top)
                Spacer()
                MessageView(messageText: $viewModel.chattMsg) {
                    viewModel.chattConversation.append(ChattMessage(message: viewModel.chattMsg, type: .Send))
                }
            }
        }
    }
}

#Preview {
    Dashboard()
}
