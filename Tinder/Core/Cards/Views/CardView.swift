//
//  CardView.swift
//  Tinder
//
//  Created by Vaidik Dubey on 03/09/24.
//

import SwiftUI

struct CardView: View { 
    @State private var xOffSet: CGFloat = 0
    @State private var degrees: Double = 0
    @State private var currentImageIndex = 0
    
    @State private var mockImages = [
        "Megan1",
        "Megan2",
        "Megan3"
    ]
    
    var body: some View{
        ZStack(alignment: .bottom) {
            ZStack(alignment: .top) {
                Image(mockImages[currentImageIndex])
                    .resizable()
                    .scaledToFill()
                    .overlay {
                        ImageScrollingOverlay(currentImageIndex: $currentImageIndex, ImageCount: mockImages.count)
                    }
                
                CardImageIndicatorView(currentImageIndex: currentImageIndex, imageCount: mockImages.count)
                
                SwipeACtionIndicatorView(xOffSet: $xOffSet)
            }
            UserInfoView()
        }
        .frame(width: SizeConstants.cardWidth ,height: SizeConstants.cardHeight)
        .clipShape(RoundedRectangle(cornerRadius: 17))
        .offset(x: xOffSet)
        .rotationEffect(.degrees(degrees))
        .animation(.snappy, value: xOffSet)
        .gesture(
            DragGesture()
                .onChanged(onDragChanged)
                .onEnded(onDragEnded)
        )
        
    }
}

private extension CardView {
    func returnToCenter(){
        xOffSet = 0
        degrees = 0
    }
    func swipeRight(){
        xOffSet = 500
        degrees = 12
    }
    func swipeLeft() {
        xOffSet = -500
        degrees = -12
    }
}

private extension CardView {
    func onDragChanged(_ value: _ChangedGesture<DragGesture>.Value){
        xOffSet = value.translation.width
        degrees = Double(value.translation.width / 25 )
    }
    
    func onDragEnded(_ value: _ChangedGesture<DragGesture>.Value) {
        let width = value.translation.width
        
        if abs(width) <= abs(SizeConstants.screenCutOff) {
            returnToCenter()
            return
        }
        
        if width >= SizeConstants.screenCutOff {
            swipeRight()
        } else {
            swipeLeft()
        }
    }
}

#Preview {
    CardView()
}
