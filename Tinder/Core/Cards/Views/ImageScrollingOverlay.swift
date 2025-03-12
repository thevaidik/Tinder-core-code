//
//  ImageScrollingOverlay.swift
//  Tinder
//
//  Created by Vaidik Dubey on 05/03/25.
//
import SwiftUI
import Foundation

struct ImageScrollingOverlay: View {
    @Binding var currentImageIndex: Int
    let ImageCount: Int
    
    
    var body: some View {
        HStack{
            Rectangle()
                .onTapGesture {
                    print("go To Next Image..")
                    updateImageIndex(increment: false)
                }
            Rectangle()
                .onTapGesture {
                    print("Go To Previous Image.. ")
                    updateImageIndex(increment: true)
                }
        }
        .foregroundStyle(.white.opacity(0.01))
    }
}

private extension ImageScrollingOverlay {
    func updateImageIndex(increment: Bool) {
        if increment {
             currentImageIndex += 1
        } else {
            guard currentImageIndex > 0 else { return }
            currentImageIndex -= 1
        }
    }
}

#Preview{
    ImageScrollingOverlay(currentImageIndex: .constant(1), ImageCount: 3)
}
