//
//  SizeConstants.swift
//  Tinder
//
//  Created by Vaidik Dubey on 15/11/24.
//

import SwiftUI

struct SizeConstants {
    var screenCutOff : CGFloat {
        (UIScreen.main.bounds.width / 2 ) * 0.9
    }
    var cardWidth: CGFloat{
        UIScreen.main.bounds.width - 20
    }
    var cardHeight: CGFloat{
        UIScreen.main.bounds.height / 1.45
    }
}
