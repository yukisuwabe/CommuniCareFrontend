//
//  LoginViewViewModel.swift
//  CommuniCare
//
//  Created by Hsia Lu wu on 6/26/24.
//

import FirebaseAuth
import Foundation
import SwiftUI

class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    @AppStorage("email") var userEmail: String?
    @AppStorage("password") var userPassword: String?
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false

    
    init () {
        
    }
    
    func login () async {
        guard validate() else {
            return
        }
        do {
            let authUser = try await Auth.auth().signIn(withEmail: email, password: password)
        } catch {
            print(error)
        }
        
        // log in
        
//        if email == "april123@gmail.com" && password == "password" {
//            currentUserSignedIn = true
//        }
    }
    
    func validate () -> Bool{
        errorMessage = ""
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            errorMessage = "Please fill in all fields."
            return false
        }
        
        
        guard email.contains("@"), email.contains(".") else {
            errorMessage = "Please enter a valid email."
            return false
        }
        
        return true
    }
}
