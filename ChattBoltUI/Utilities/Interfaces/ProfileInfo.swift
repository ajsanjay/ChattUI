//
//  ProfileInfo.swift
//  ChattBoltUI
//
//  Created by Jaya Sabeen on 30/04/25.
//

import SwiftUI

struct ProfileInfo: View {
    
    let personName: String
    
    var body: some View {
        HStack {
            InitialsView(initials: "MB")
            Text(personName)
            Spacer()
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 0)
                .fill(Color(.bgBottom).opacity(0.1))
                .shadow(color: .black.opacity(0.7), radius: 8, x: 0, y: 4)
        )
    }
}

struct InitialsView: View {
    let initials: String
    
    var body: some View {
        Text(initials)
            .font(.headline)
            .foregroundColor(.white)
            .frame(width: 40, height: 40)
            .background(Circle().fill(Color.blue))
    }
}

#Preview {
    ProfileInfo(personName: "My Friend")
}
