//
//  UserProfileView.swift
//  CommuniCare
//
//  Created by Hsia Lu wu on 7/26/24.
//

import SwiftUI

struct UserProfileView: View {
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        if let user = viewModel.currentUser {
            // succesfully fetched user profile
            List {
                Section {
                    HStack {
                        Text(user.initials)
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundStyle(.white)
                            .frame(width: 72, height: 72)
                            .background(Color(.systemGray3))
                            .clipShape(Circle())
                        VStack(alignment: .leading, spacing: 4) {
                            Text(user.firstName + " " + user.lastName)
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .padding(.top, 4)
                            
                            Text(user.email)
                                .font(.footnote)
                                .foregroundStyle(Color.gray)
                        }
                    }
                }
                Section("General") {
                    HStack {
                        SettingsRowView(imageName: "gear", title: "Version", tintColor: Color(.systemGray))
                        
                        Spacer()
                        
                        Text("1.0.0")
                            .font(.subheadline).foregroundStyle(.gray)
                    }
                    
                    SettingsRowView(imageName: "gear", title: "Help Center", tintColor: Color(.systemGray))
                }
                Section("Account") {
                    Button {
                        // go to account view
                    } label: {
                        SettingsRowView(imageName: "gear", title: "Account Settings", tintColor: Color(.systemGray))
                    }
                    Button {
                        // sign out
                        viewModel.signOut()
                    } label: {
                        SettingsRowView(imageName: "arrow.left.circle.fill", title: "Sign Out", tintColor: .red)
                    }
                    Button {
                        // delete account
                    } label: {
                        SettingsRowView(imageName: "xmark.circle.fill", title: "Delete Account", tintColor: .red)
                    }
                }
            }
        } else {
            // failed to load user data
            // user profile with placeholder
            List {
                Section {
                    HStack {
                        Text("")
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundStyle(.white)
                            .frame(width: 72, height: 72)
                            .background(Color(.systemGray3))
                            .clipShape(Circle())
                        VStack(alignment: .leading, spacing: 4) {
                            Text("Your Name")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .padding(.top, 4)
                            
                            Text("Your Email")
                                .font(.footnote)
                                .foregroundStyle(Color.gray)
                        }
                    }
                    
                }
                Section("General") {
                    HStack {
                        SettingsRowView(imageName: "gear", title: "Version", tintColor: Color(.systemGray))
                        
                        Spacer()
                        
                        Text("1.0.0")
                            .font(.subheadline).foregroundStyle(.gray)
                    }
                    
                    SettingsRowView(imageName: "gear", title: "Help Center", tintColor: Color(.systemGray))
                }
                Section("Account") {
                    Button {
                        // go to account view
                    } label: {
                        SettingsRowView(imageName: "gear", title: "Account Settings", tintColor: Color(.systemGray))
                    }
                    Button {
                        // sign out
                        viewModel.signOut()
                    } label: {
                        SettingsRowView(imageName: "arrow.left.circle.fill", title: "Sign Out", tintColor: .red)
                    }
                    Button {
                        // delete account
                    } label: {
                        SettingsRowView(imageName: "xmark.circle.fill", title: "Delete Account", tintColor: .red)
                    }
                }
            }
        }
    }
}

#Preview {
    UserProfileView()
}

// MARK: Components
extension UserProfileView {
}
