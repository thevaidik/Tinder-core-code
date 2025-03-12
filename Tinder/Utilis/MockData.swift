//
//  MockData.swift
//  Tinder
//
//  Created by Vaidik Dubey on 12/03/25.
//

import Foundation

struct MockData {
    static let users: [User] = [
        .init(
            id: NSUUID().uuidString,
            fullname: "Megan Fox",
            age: 37,
            profileImageURLs: ["https://randomuser.me/api/portraits/women/37.jpg"]
        ),
        .init(
            id: NSUUID().uuidString,
            fullname: "Megan Fox",
            age: 37,
            profileImageURLs: ["https://randomuser.me/api/portraits/women/39.jpg"]
        ),
        .init(
            id: NSUUID().uuidString,
            fullname: "Megan Fox",
            age: 37,
            profileImageURLs: ["https://randomuser.me/api/portraits/women/35.jpg"]
        ),
        
    ]
}
