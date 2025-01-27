//
//  ChatMessageCell.swift
//  MessangerApp
//
//  Created by Gabriel Marin on 26.01.2025.
//

import SwiftUI

struct ChatMessageCell: View {
    let isFromCurrentUser: Bool
    
    var body: some View {
        HStack {
            if isFromCurrentUser {
                Spacer()
                
                Text("this is a test from now")
                    .font(.subheadline)
                    .padding(10)
                    .background(Color(.systemBlue))
                    .foregroundColor(.white)
                    .clipShape(ChatBubble(isFromCurrentUser: isFromCurrentUser))
                    .frame(maxWidth: UIScreen.main.bounds.width / 1.5, alignment: .trailing)

            } else {
                HStack{
                    CircularProfileImageView(user: User.MOCK_USER, size: .xxSmall)
                    
                    Text("this is a test from now")
                        .font(.subheadline)
                        .padding(10)
                        .background(Color(.systemGray5))
                        .foregroundColor(.black )
                        .clipShape(ChatBubble(isFromCurrentUser: isFromCurrentUser))                   .frame(maxWidth: UIScreen.main.bounds.width / 1.75, alignment: .leading)
                    
                    Spacer()
                }
            }
        }
        .padding(.horizontal, 8)
    }
}

#Preview {
    ChatMessageCell(isFromCurrentUser: false)
}
    
