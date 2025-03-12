//
//  CardImageIndicatorView.swift
//  Tinder
//
//  Created by Vaidik Dubey on 06/03/25.
//

import SwiftUI

struct CardImageIndicatorView: View {
    
    let currentImageIndex: Int
    let imageCount: Int
    
    var body : some View {
        HStack{
            ForEach(0 ..< imageCount, id: \.self) { index in
                Capsule()
                    .frame(width: 100, height: 4)
                    .foregroundStyle(currentImageIndex == index ? .white : .gray)
                    .padding( .top, 8)
            }
        }
    }
}

private extension CardImageIndicatorView {
    var imageIndicatorWidth: CGFloat {
        return SizeConstants.cardWidth / CGFloat(imageCount)-28
    }
}

#Preview {
    CardImageIndicatorView( currentImageIndex: 1, imageCount: 4)
        .preferredColorScheme(.dark)
}
