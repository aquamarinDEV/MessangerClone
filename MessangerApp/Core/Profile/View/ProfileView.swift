//
//  ProfileView.swift
//  MessangerApp
//
//  Created by Gabriel Marin on 23.01.2025.
//

import SwiftUI
import PhotosUI

struct ProfileView: View {
    
    @StateObject var viewModel = ProfileViewModel()
    let user: User
    
    var body: some View {
        VStack{
        
            VStack{
                PhotosPicker(selection: $viewModel.selectedItem) {
                    if viewModel.profileImage != nil {
                        CircularProfileImageView(user: user, size: .xLarge)
                    } else {
                        CircularProfileImageView(user: user, size: .xLarge)
                    }
                }
                Text(user.fullName)
                    .font(.title2)
                    .fontWeight(.semibold)
            }
            
            List{
                Section{
                    ForEach(SettingsOptionsViewModel.allCases){ option in
                        HStack{
                            Image(systemName: option.imageName)
                                .resizable()
                                .frame(width: 24,height: 24)
                                .foregroundColor(option.imageBackgroundColor)
                            
                            
                            
                            Text(option.title)
                                .font(.subheadline)
                        }
                    }
                }
                
                Section{
                    Button("Log out") {
                        
                    }
                    Button("Delete Account") {
                        
                    }
                }
                .foregroundColor(.red)
            }
            
        }
    }
}

#Preview {
    ProfileView(user: User.MOCK_USER)
}
