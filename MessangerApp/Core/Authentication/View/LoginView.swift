//
//  LoginView.swift
//  MessangerApp
//
//  Created by Gabriel Marin on 04.01.2025.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var loginViewModel = LoginViewModel()
    
    var body: some View {
        NavigationStack{
            VStack {
              Spacer()
                
                Image("messLOGO")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                    .padding()
                
                //text fields
                
                VStack(spacing: 12){
                    TextField("Enter your email", text: $loginViewModel.email)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .padding(.horizontal, 24)
                    
                    SecureField("Enter your password", text: $loginViewModel.password)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .padding(.horizontal, 24)
                }
                
                //forgot password
                
                Button(action: {
                        print("test1234")
                }, label: {
                    Text("Forgot password?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.top)
                        .padding(.trailing, 28)
                })
                .frame(maxWidth: .infinity, alignment: .trailing)
                
                //login button
                Button(action: {
                    Task{do {
                        try await loginViewModel.login()
                    }}
                }, label: {
                    Text("Log In")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 360, height: 44)
                        .background(Color(.systemBlue))
                        .cornerRadius(10)
                })
                .padding(.vertical)
                //facebook login
                
                HStack{
                    Rectangle()
                        .frame(width: (UIScreen.main.bounds.width / 2 ) - 40, height: 0.5)
                    
                    Text("OR")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    
                    Rectangle()
                        .frame(width: (UIScreen.main.bounds.width / 2 ) - 40, height: 0.5)
                }
                .foregroundColor(.gray)
                
                HStack{
                    Image("fbLOGO")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                    
                    Text("Continue with Facebook")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(.systemBlue))
                }
                .padding(.top, 8)
                
                Spacer()
                
                Divider()
                //sign up link
                HStack{
                    Spacer()
                    
                    Text("Dont have an account?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(.systemGray))
                        
                    NavigationLink(
                         destination: RegisterView()
                            .navigationBarBackButtonHidden(),
                         label: {
                             Text("Sign Up")
                                .font(.footnote)
                                .fontWeight(.bold)
                                .foregroundColor(.blue)
                            }
                    )
                    
                    
                    Spacer()
                }
                .padding(.top)
                    
            }
            .padding(.vertical)
        }
    }
}

#Preview {
    LoginView()
}
