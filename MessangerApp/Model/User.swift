//
//  User.swift
//  MessangerApp
//
//  Created by Gabriel Marin on 23.01.2025.
//

import Foundation


struct User: Codable, Identifiable, Hashable {
    
    var id =  NSUUID().uuidString
    let fullName: String
    let email: String
    var profileImageUrl: String?
}

extension User {
    
    static let MOCK_USER = User(fullName: "Marin Gabriell", email: "email.com", profileImageUrl: "batman")
    
}
