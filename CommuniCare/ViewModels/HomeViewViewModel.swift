//
//  HomeViewViewModel.swift
//  CommuniCare
//
//  Created by Hsia Lu wu on 6/26/24.
//

import Foundation
import SwiftUI

struct ClinicCard: View {
    @Environment(\.openURL) var openURL
    var clinic: Clinic
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                // Clinic Logo
                Rectangle()
                    .fill(Color.gray.opacity(0.5))
                    .frame(width: 80, height: 80)
                    .overlay(
                        Text("clinic logo")
                            .foregroundColor(.white)
                    )
                VStack(alignment: .leading) {
                    // Clinic Name and Distance
                    Text(clinic.name)
                        .font(.headline)
                    HStack {
                        Image(systemName: "location.fill")
                        Text(clinic.distance)
                    }
                    .foregroundColor(.gray)
                    
                    // Action Buttons
                    HStack {
                        Button(action: {
                            // Action for Get Direction
                            openURL(URL(string: clinic.direction)!)
                        }) {
                            Text("Get Direction")
                                .font(.system(size: 15))
                                .foregroundColor(Color.matchaGreen)
                                .padding(5)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.matchaGreen, lineWidth: 1)
                                )
                        }
                        Button(action: {
                            // Action for Visit Site
                            openURL(URL(string: clinic.websiteUrl)!)
                        }) {
                            Text("Visit Site")
                                .font(.system(size: 15))
                                .foregroundColor(Color.matchaGreen)
                                .padding(5)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.matchaGreen, lineWidth: 1)
                                )
                        }
                    }
                }
                Spacer()
            }
            .padding()
            
            // Services
            Text("Services")
                .bold()
                .padding(.bottom, 1)
                .offset(x: 16)
            ForEach(clinic.services, id: \.self) { service in
                Text("• \(service)")
            }
            .padding(.bottom, 5)
            .offset(x: 16)
            
            // More details
            HStack {
                Spacer()
                Button(action: {
                    // Action for More details
                }) {
                    Text("More details")
                        .foregroundColor(.gray)
                }
            }
            .padding(.horizontal)
        }
        .background(Color.white)
        .cornerRadius(10)
        .shadow(color: Color.gray.opacity(0.2), radius: 5, x: 0, y: 5)
    }
}
