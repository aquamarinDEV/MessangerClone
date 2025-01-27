//
//  LoginViewModel.swift
//  MessangerApp
//
//  Created by Gabriel Marin on 26.01.2025.
//

import Foundation

class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    func login() async throws {
        try await AuthService().logIn(withEmail: email, password: password)
    }
}
