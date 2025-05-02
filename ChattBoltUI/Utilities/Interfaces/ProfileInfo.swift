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
                .font(.title2)
                .fontWeight(.medium)
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
            .font(.title2)
            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            .foregroundColor(.white)
            .frame(width: 50, height: 50)
            .background(Circle().fill(Color.blue))
    }
}

#Preview {
    ProfileInfo(personName: "My Friend")
}
