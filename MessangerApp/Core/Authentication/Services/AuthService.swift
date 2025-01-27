//
//  AuthService.swift
//  MessangerApp
//
//  Created by Gabriel Marin on 26.01.2025.
//

import Foundation
import Firebase
import FirebaseAuth

class AuthService {
    
    func logIn(withEmail email: String, password: String) async throws {
        print("DEBUG: the user email is: \(email)")
        print("DEBUG: the user password is: \(password)")
    }
    
    func creteUser(withEmail email: String, password: String, fullName: String) async throws {
        do {
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            print("DEBUG: user created: \(result.user.uid)")
        } catch {
            print("DEBUG: Failed to create user: \(error.localizedDescription)")
        }
    }
}
