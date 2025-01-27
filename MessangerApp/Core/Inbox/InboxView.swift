//
//  InboxView.swift
//  MessangerApp
//
//  Created by Gabriel Marin on 05.01.2025.
//

import SwiftUI

struct InboxView: View {
    
    @State private var showNewMessageView = false
    @State private var userModel = User.MOCK_USER
    
    var body: some View {
        NavigationStack{
            ScrollView{
                ActiveNowView()
                
                List{
                    ForEach(0 ... 10, id: \.self) { message in
                        InboxRowView()
                    }
                }
                .listStyle(PlainListStyle())
                .frame(height: UIScreen.main.bounds.height - 120)
                
            }
            .navigationDestination(for: User.self, destination: { user in
                ProfileView(user: user)
            })
            .fullScreenCover(isPresented: $showNewMessageView, content: {
                NewMessageView()
            })
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading) {
                    HStack{
                        NavigationLink(value: userModel) {
                            CircularProfileImageView(user: userModel, size: .xSmall)
                        }
                        
                        Text("Chats")
                            .font(.title)
                            .fontWeight(.semibold)
                    }
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    
                    Button(action: {
                        showNewMessageView.toggle()
                    }, label: {
                        Image(systemName: "square.and.pencil.circle.fill")
                            .resizable()
                            .frame(width: 32, height: 32)
                            .foregroundStyle(.black, Color(.systemGray5))
                    })
                }
            }
        }
    }
}

#Preview {
    InboxView()
}
