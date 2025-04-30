//
//  DahboardViewModel.swift
//  ChattBoltUI
//
//  Created by Jaya Sabeen on 29/04/25.
//

import Foundation

class DashboardViewModel: ObservableObject {
    
    @Published var chattConversation: [ChattMessage] = MockData.defaultMessage
    @Published var chattMsg: String = ""
    
}
