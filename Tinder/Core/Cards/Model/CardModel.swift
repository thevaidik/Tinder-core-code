//
//  CardModel.swift
//  Tinder
//
//  Created by Vaidik Dubey on 09/03/25.
//

import Foundation

struct CardModel {
    let user: User
}

extension CardModel: Identifiable {
    var id : String { user.id}
}






