//
//  RegistrationInfo.swift
//  CommuniCare
//
//  Created by Hsia Lu wu on 7/21/24.
//

import Foundation

class RegistrationInfo: ObservableObject {
    @Published var id: String
    @Published var email: String
    @Published var lastName: String
    @Published var firstName: String
    @Published var age: Int
    @Published var sex: String
    @Published var address: String
    @Published var city: String
    @Published var state: String
    @Published var zipCode: String
    @Published var insurance: String
    @Published var policy: String
    
    init() {
        id = ""
        email = ""
        lastName = ""
        firstName = ""
        age = 0
        sex = ""
        address = ""
        city = ""
        state = ""
        zipCode = ""
        insurance = ""
        policy = ""
    }
}
