//
//  Dashboard.swift
//  ChattBoltUI
//
//  Created by Jaya Sabeen on 29/04/25.
//

import SwiftUI

struct Dashboard: View {
    
    @StateObject private var viewModel = DashboardViewModel()
    
    var body: some View {
        ZStack {
            DefaultBg()
            VStack {
                ScrollView {
                    ForEach(viewModel.chatMsg.indices, id: \.self) { index in
                        MessagesView(message: viewModel.chatMsg[index], isSent: index % 2 == 0 ? true : false)
                    }
                }
                Spacer()
                MessageView(messageText: .constant(""))
            }
        }
    }
}

#Preview {
    Dashboard()
}
