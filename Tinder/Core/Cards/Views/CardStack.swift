//
//  CArdStack.swift
//  Tinder
//
//  Created by Vaidik Dubey on 08/03/25.
//

import SwiftUI
import Foundation

struct CardStackView: View {
    var body: some View {
        ZStack {
            ForEach(0 ..< 10) {
                card in
                CardView()
            }
        }
    }
}

#Preview {
    CardStackView()
}
