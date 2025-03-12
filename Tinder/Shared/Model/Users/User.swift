//
//  User.swift
//  Tinder
//
//  Created by Vaidik Dubey on 08/03/25.
//
import SwiftUI
import Foundation

struct User : Identifiable {
    let id: String
    let fullname: String
    var age: Int
    var profileImageURLs: [String]
}
