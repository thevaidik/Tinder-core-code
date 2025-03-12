//
//  SwipeActionIndicatorView.swift
//  Tinder
//
//  Created by Vaidik Dubey on 14/11/24.
//

import SwiftUI

struct SwipeACtionIndicatorView: View {
    @Binding var xOffSet: CGFloat
    
    var body: some View {
        HStack {
            Text("LIKE")
                .font(.title)
                .fontWeight(.heavy)
                .foregroundStyle(.green)
                .overlay {
                    RoundedRectangle(cornerRadius : 4)
                        .stroke(.green, lineWidth: 2) 
                        .frame(width:100 , height: 48)
                }
                .rotationEffect(.degrees(-45))
                .opacity(Double(xOffSet / SizeConstants.screenCutOff))
            
            Spacer()
            
            Text("NOPE")
                .font(.title)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
                .overlay {
                    RoundedRectangle(cornerRadius: 4)
                        .stroke(.red, lineWidth: 2)
                        .frame(width: 100, height:48)
                }
                .rotationEffect(.degrees(45))
                .opacity(Double(xOffSet / SizeConstants.screenCutOff) * -1)
            
            
            
        }
        .padding(40)
        
    }
}

#Preview {
    SwipeACtionIndicatorView(xOffSet: .constant(20))
}
