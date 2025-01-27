//
//  CreateUserViewModel.swift
//  MessangerApp
//
//  Created by Gabriel Marin on 26.01.2025.
//

import Foundation

class CreateUserViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var fullName = ""
    
    func createUser() async throws {
        try await AuthService().creteUser(withEmail: email, password: password, fullName: fullName)
    }
}
