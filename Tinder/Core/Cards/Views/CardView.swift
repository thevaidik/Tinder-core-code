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
    var body: some View{
        ZStack(alignment: .bottom) {
            ZStack(alignment: .top) {
                Image(.test1)
                    .resizable()
                    .scaledToFill()
                SwipeACtionIndicatorView(xOffSet: $xOffSet, screenCutOff: screenCutOff)
            }
            UserInfoView()
        }
        .frame(width:cardWidth ,height:cardHeight)
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
    func onDragChanged(_ value: _ChangedGesture<DragGesture>.Value){
        xOffSet = value.translation.width
        degrees = Double(value.translation.width / 25 )
        
    }
    
    func onDragEnded(_ value: _ChangedGesture<DragGesture>.Value) {
        let width = value.translation.width
        
        if abs(width) <= abs(screenCutOff) {
            xOffSet = 0
            degrees = 0
        }
        
        
    }
}








#Preview {
    CardView()
}
