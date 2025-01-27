//
//  ChatView.swift
//  MessangerApp
//
//  Created by Gabriel Marin on 26.01.2025.
//

import SwiftUI

struct ChatView: View {
    @State private var messageText = ""
    
    var body: some View {
        VStack {
            ScrollView {
                VStack{
                    //header
                    CircularProfileImageView(user: User.MOCK_USER, size: .xLarge)
                    
                    Text("Marin Gabriel")
                        .font(.title3)
                        .fontWeight(.semibold)
                    
                    Text("Messanger")
                        .font(.footnote)
                        .foregroundColor(.gray)
                    
                    
                    //message
                    ForEach(0 ... 15, id: \.self) {message in
                        ChatMessageCell(isFromCurrentUser: Bool.random())
                    }
                }
            }
            Spacer()
            
            ZStack(alignment: .trailing) {
                TextField("type a message", text: $messageText, axis: .vertical)
                    .padding(12)
                    .padding(.trailing, 50)
                    .background(Color(.systemGroupedBackground))
                    .clipShape(Capsule())
                    .font(.subheadline)
                
                Button(action: {
                    print("send button")
                }, label: {
                    Text("Send")
                        .fontWeight(.semibold)
                })
                .padding()
            }
            .padding()
        }
    }
}

#Preview {
    ChatView()
}
