//
//  DahboardViewModel.swift
//  ChattBoltUI
//
//  Created by Jaya Sabeen on 29/04/25.
//

import Foundation

class DashboardViewModel: ObservableObject {
    
    @Published var chatMsg: [String] = MockData.defaultMessage
    
}
