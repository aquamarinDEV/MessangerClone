//
//  ChatBubble.swift
//  MessangerApp
//
//  Created by Gabriel Marin on 26.01.2025.
//

import SwiftUI

struct ChatBubble: Shape {
    let isFromCurrentUser: Bool
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, 
                                byRoundingCorners: [
                                    .topRight,
                                        .topLeft,
                                    isFromCurrentUser ? .bottomLeft: .bottomRight
                                ], cornerRadii: CGSize(width: 16, height: 16))
        
        return Path(path.cgPath)
    }
}

#Preview {
    ChatBubble(isFromCurrentUser: true)
}
