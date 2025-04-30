//
//  DefaultBg.swift
//  ChattBoltUI
//
//  Created by Jaya Sabeen on 29/04/25.
//

import SwiftUI

struct DefaultBg: View {
    var body: some View {
        ZStack {
            Rectangle()
                .overlay {
                    LinearGradient(gradient: Gradient(colors: [.bgTop, .bgBottom]), startPoint: .top, endPoint: .bottom)
                }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    DefaultBg()
}
