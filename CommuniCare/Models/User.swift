//
//  User.swift
//  CommuniCare
//
//  Created by Hsia Lu wu on 6/26/24.
//

import Foundation

struct User: Identifiable, Codable {
    let id: String
    let email: String
    let lastName: String
    let firstName: String
    let age: Int
    let sex: String
    let address: String
    let city: String
    let state: String
    let zipCode: String
    let insurance: String
    let policy: String
    
    var initials: String {
        let formatter = PersonNameComponentsFormatter()
        if let components = formatter.personNameComponents(from: firstName + " " + lastName) {
            formatter.style = .abbreviated
            return formatter.string(from: components)
        }
        return ""
    }
}

extension User {
    static var MOCK_USER = User(id: NSUUID().uuidString, email: "april123@gmail.com", lastName: "Simpson", firstName: "April", age: 23, sex: "Female", address: "Toni Morrison Hall 254", city: "Ithaca", state: "New York", zipCode: "14853", insurance: "None", policy: "None")
}
