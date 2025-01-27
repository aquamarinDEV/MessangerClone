//
//  RegisterView.swift
//  MessangerApp
//
//  Created by Gabriel Marin on 04.01.2025.
//

import SwiftUI

struct RegisterView: View {
    
    @StateObject var createUser = CreateUserViewModel()
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
            VStack{
                Spacer()
                
                Image("messLOGO")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                    .padding()
                
                //text fields
                
                VStack(spacing: 12){
                    TextField("Enter your email", text: $createUser.email)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .padding(.horizontal, 24)
                    
                    TextField("Enter your fullname", text: $createUser.fullName)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .padding(.horizontal, 24)
                    
                    SecureField("Enter your password", text: $createUser.password)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .padding(.horizontal, 24)
                }
                
                
                Button(action: {
                    Task{
                        do{
                            try await createUser.createUser()
                        }
                    }
                }, label: {
                    Text("Sign Up")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 360, height: 44)
                        .background(Color(.systemBlue))
                        .cornerRadius(10)
                })
                .padding(.vertical)
                
                
                Spacer()
                
                Divider()
                //sign up link
                HStack{
                    Spacer()
                    
                    Text("Allready have an account?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(.systemGray))
                    
                    Button("Sign In") {
                       dismiss()
                    }
                    .font(.footnote)
                    .fontWeight(.bold)
                    .foregroundColor(.blue)
                    
                    Spacer()
                }
                .padding(.top)
                
            }
            .padding(.vertical)
        }
    }


#Preview {
    RegisterView()
}
