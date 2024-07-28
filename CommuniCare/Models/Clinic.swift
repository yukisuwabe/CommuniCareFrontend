//
//  Clinic.swift
//  CommuniCare
//
//  Created by Hsia Lu wu on 6/26/24.
//

import Foundation
import SwiftUI

struct Clinic: Identifiable {
    var id: Int
    var name: String
    var logo: String
    var distance: String
    var services: [String]
    var direction: String
    var websiteUrl: String
}
