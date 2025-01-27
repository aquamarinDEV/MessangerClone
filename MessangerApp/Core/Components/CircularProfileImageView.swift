//
//  CircularProfileImageView.swift
//  MessangerApp
//
//  Created by Gabriel Marin on 26.01.2025.
//

import SwiftUI

enum profileImageSize {
    case xxSmall
    case xSmall
    case small
    case medium
    case large
    case xLarge
    
    var dimensions: CGFloat {
        switch self {
        case .xxSmall: return 28
        case .xSmall: return 32
        case .small: return 40
        case .medium: return 56
        case .large: return 64
        case .xLarge: return 80
        }
    }
}


struct CircularProfileImageView: View {
    let user: User
    let size: profileImageSize
    
    var body: some View {
        if let imageUserUrl = user.profileImageUrl {
            Image(imageUserUrl)
                .resizable()
                .scaledToFill()
                .frame(width: size.dimensions, height: size.dimensions)
                .clipShape(Circle())
            
        } else {
            
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: size.dimensions, height: size.dimensions)
                .foregroundColor(Color(.systemGray4))
        }
    }
}

#Preview {
    CircularProfileImageView(user: User.MOCK_USER, size: .medium)
}
